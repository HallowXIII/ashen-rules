#!/usr/bin/env python3
"""Build a form-fillable PDF of the Ashen character sheet.

The character sheet source (src/rulebook/character-sheet.typ) embeds an
invisible <form-field> metadata marker inside every fillable box and under
every write-on line, recording its name, kind ("text" or "check"), page,
and exact geometry in pt. This script:

  1. compiles the sheet standalone with typst,
  2. extracts the markers with `typst query`,
  3. stamps real AcroForm widgets (text fields and checkboxes) onto the
     compiled PDF at those coordinates with pypdf.

Because the markers are emitted by the same code that draws the boxes, the
fillable PDF stays in sync with any layout change — just rerun this script
(or ./build-fillable-sheet.sh, which runs it inside the pinned nix shell).

Pre-generated characters: field names are stable and semantic
(martial-rank, weapon-1-name, fading-3, question-2-text, ...). Fill a sheet
from a JSON file mapping names to values (checkbox values: true/false):

    python3 tools/make_fillable_sheet.py --fill mycharacter.json \
        -o mycharacter.pdf

List all field names with --list-fields.
"""

import argparse
import json
import subprocess
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
SHEET_SRC = REPO / "src" / "rulebook" / "character-sheet.typ"
DEFAULT_OUT = REPO / "ashen-character-sheet-fillable.pdf"
TYPST_ARGS = ["--font-path", str(REPO / "fonts"), "--root", str(REPO)]


def run_typst(build_dir: Path):
    """Compile the standalone sheet and query its form-field markers."""
    pdf = build_dir / "character-sheet.pdf"
    subprocess.run(
        ["typst", "compile", *TYPST_ARGS, str(SHEET_SRC), str(pdf)],
        check=True,
    )
    query = subprocess.run(
        [
            "typst", "query", *TYPST_ARGS,
            str(SHEET_SRC), "<form-field>", "--field", "value",
        ],
        check=True,
        capture_output=True,
        text=True,
    )
    return pdf, json.loads(query.stdout)


def dedupe_names(markers):
    """Suffix repeated ids (-2, -3, ...) in reading order."""
    seen = {}
    for m in markers:
        base = m["id"]
        seen[base] = seen.get(base, 0) + 1
        m["name"] = base if seen[base] == 1 else f"{base}-{seen[base]}"
    return markers


def build_form(sheet_pdf: Path, markers, out_path: Path, fill=None):
    from pypdf import PdfReader, PdfWriter
    from pypdf.generic import (
        ArrayObject,
        BooleanObject,
        DecodedStreamObject,
        DictionaryObject,
        FloatObject,
        NameObject,
        NumberObject,
        TextStringObject,
    )

    reader = PdfReader(sheet_pdf)
    writer = PdfWriter()
    writer.append(reader)

    def checkbox_appearance(w, h, on):
        """Form XObject for a checkbox state: an X mark, or empty."""
        stream = DecodedStreamObject()
        if on:
            m = min(w, h) * 0.2
            data = (
                f"q 0 g {min(w, h) * 0.12:.2f} w 1 J "
                f"{m:.2f} {m:.2f} m {w - m:.2f} {h - m:.2f} l S "
                f"{m:.2f} {h - m:.2f} m {w - m:.2f} {m:.2f} l S Q"
            )
        else:
            data = ""
        stream.set_data(data.encode())
        stream.update({
            NameObject("/Type"): NameObject("/XObject"),
            NameObject("/Subtype"): NameObject("/Form"),
            NameObject("/BBox"): ArrayObject(
                [FloatObject(0), FloatObject(0), FloatObject(w), FloatObject(h)]
            ),
            NameObject("/Resources"): DictionaryObject(),
        })
        return writer._add_object(stream)

    fill = fill or {}
    filled_names = set()
    field_refs = []

    for m in markers:
        page = writer.pages[m["page"] - 1]
        page_h = float(page.mediabox.height)
        x, y, w, h = m["x"], m["y"], m["w"], m["h"]
        rect = ArrayObject([
            FloatObject(x),
            FloatObject(page_h - y - h),
            FloatObject(x + w),
            FloatObject(page_h - y),
        ])
        name = m["name"]
        value = fill.get(name)
        if value is not None:
            filled_names.add(name)

        annot = DictionaryObject({
            NameObject("/Type"): NameObject("/Annot"),
            NameObject("/Subtype"): NameObject("/Widget"),
            NameObject("/Rect"): rect,
            NameObject("/T"): TextStringObject(name),
            NameObject("/F"): NumberObject(4),  # print
            NameObject("/P"): page.indirect_reference,
        })

        if m["kind"] == "check":
            on = bool(value)
            annot.update({
                NameObject("/FT"): NameObject("/Btn"),
                NameObject("/V"): NameObject("/On" if on else "/Off"),
                NameObject("/AS"): NameObject("/On" if on else "/Off"),
                NameObject("/AP"): DictionaryObject({
                    NameObject("/N"): DictionaryObject({
                        NameObject("/On"): checkbox_appearance(w, h, True),
                        NameObject("/Off"): checkbox_appearance(w, h, False),
                    }),
                }),
            })
        else:
            annot.update({
                NameObject("/FT"): NameObject("/Tx"),
                NameObject("/V"): TextStringObject(
                    "" if value is None else str(value)
                ),
                # auto-sized Helvetica; center narrow stat boxes
                NameObject("/DA"): TextStringObject("/Helv 0 Tf 0 g"),
            })
            if w < 70:
                annot[NameObject("/Q")] = NumberObject(1)  # centered

        ref = writer._add_object(annot)
        if "/Annots" in page:
            page["/Annots"].append(ref)
        else:
            page[NameObject("/Annots")] = ArrayObject([ref])
        field_refs.append(ref)

    def std_font(base):
        return writer._add_object(DictionaryObject({
            NameObject("/Type"): NameObject("/Font"),
            NameObject("/Subtype"): NameObject("/Type1"),
            NameObject("/BaseFont"): NameObject(base),
        }))

    writer._root_object[NameObject("/AcroForm")] = writer._add_object(
        DictionaryObject({
            NameObject("/Fields"): ArrayObject(field_refs),
            NameObject("/NeedAppearances"): BooleanObject(True),
            NameObject("/DA"): TextStringObject("/Helv 0 Tf 0 g"),
            NameObject("/DR"): DictionaryObject({
                NameObject("/Font"): DictionaryObject({
                    NameObject("/Helv"): std_font("/Helvetica"),
                    # viewers regenerating checkbox appearances expect this
                    NameObject("/ZaDb"): std_font("/ZapfDingbats"),
                }),
            }),
        })
    )

    unknown = set(fill) - filled_names
    if unknown:
        print(
            f"warning: {len(unknown)} fill keys match no field: "
            + ", ".join(sorted(unknown)[:10]),
            file=sys.stderr,
        )

    with open(out_path, "wb") as f:
        writer.write(f)


def main():
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    ap.add_argument(
        "-o", "--output", type=Path, default=DEFAULT_OUT,
        help=f"output PDF (default: {DEFAULT_OUT.name})",
    )
    ap.add_argument(
        "--fill", type=Path, metavar="DATA.json",
        help="pre-fill fields from a JSON object of name -> value "
        "(checkboxes: true/false)",
    )
    ap.add_argument(
        "--list-fields", action="store_true",
        help="print all field names (page, kind) and exit",
    )
    args = ap.parse_args()

    build_dir = REPO / "build"
    build_dir.mkdir(exist_ok=True)
    sheet_pdf, markers = run_typst(build_dir)
    markers = dedupe_names(markers)

    if args.list_fields:
        for m in markers:
            print(f"{m['name']}\tp{m['page']}\t{m['kind']}")
        return

    fill = None
    if args.fill:
        fill = json.loads(args.fill.read_text())
        if not isinstance(fill, dict):
            sys.exit("--fill data must be a JSON object of name -> value")

    build_form(sheet_pdf, markers, args.output, fill=fill)
    n_text = sum(1 for m in markers if m["kind"] == "text")
    n_check = len(markers) - n_text
    print(
        f"wrote {args.output} "
        f"({n_text} text fields, {n_check} checkboxes"
        + (f", {len(fill)} pre-filled" if fill else "")
        + ")"
    )


if __name__ == "__main__":
    main()
