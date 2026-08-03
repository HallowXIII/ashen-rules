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

List all field names with --list-fields. See pregens/README.md for the fill
format and pregens/vessa.json for a complete worked example.

The inverse also works: read the values back out of a sheet that has been
filled in by hand in a PDF viewer, as JSON suitable for --fill. This reads
the PDF's own form data, so it needs neither typst nor the sheet source:

    python3 tools/make_fillable_sheet.py --extract played.pdf -o played.json
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


def extract_form(pdf_path: Path, include_empty=False):
    """Read field values out of a filled sheet — the inverse of --fill.

    Walks the AcroForm /Fields array rather than the page annotations, so the
    result comes out in the same reading order the fields were stamped in.
    Text fields yield strings, checkboxes yield booleans; blank text and
    unchecked boxes are omitted unless include_empty is set, keeping the
    output small enough to diff against a hand-written pregen.
    """
    from pypdf import PdfReader

    reader = PdfReader(pdf_path)
    acro = reader.trailer["/Root"].get("/AcroForm")
    if acro is None:
        sys.exit(
            f"{pdf_path}: no form fields found. Flattened or printed-to-PDF "
            "sheets lose their fields; extract from the file you filled in."
        )

    out = {}

    def visit(ref, prefix, ft, value):
        field = ref.get_object()
        # /FT and /V are inheritable; a viewer that rewrites the flat form we
        # stamp into a field tree leaves them on the ancestor node
        ft = field.get("/FT", ft)
        value = field.get("/V", value)
        name = prefix
        if "/T" in field:
            part = str(field["/T"])
            name = f"{prefix}.{part}" if prefix else part
        if "/Kids" in field:
            for kid in field["/Kids"]:
                visit(kid, name, ft, value)
            return
        if not name:
            return
        if name in out:
            print(f"warning: duplicate field {name}, keeping first",
                  file=sys.stderr)
            return
        if ft == "/Btn":
            checked = value is not None and str(value) != "/Off"
            if checked or include_empty:
                out[name] = checked
        else:
            # viewers write CR, CRLF or LF for multi-line edits
            text = "" if value is None else str(value)
            text = text.replace("\r\n", "\n").replace("\r", "\n").strip()
            if text or include_empty:
                out[name] = text

    for ref in acro.get_object().get("/Fields", []):
        visit(ref, "", None, None)
    return out


def main():
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    ap.add_argument(
        "-o", "--output", type=Path, default=None,
        help=f"output file (default: {DEFAULT_OUT.name}, "
        "or stdout with --extract)",
    )
    ap.add_argument(
        "--fill", type=Path, metavar="DATA.json",
        help="pre-fill fields from a JSON object of name -> value "
        "(checkboxes: true/false)",
    )
    ap.add_argument(
        "--extract", type=Path, metavar="FILLED.pdf",
        help="read field values out of a filled sheet as JSON, ready to feed "
        "back to --fill (the inverse of --fill; needs no typst)",
    )
    ap.add_argument(
        "--all", action="store_true",
        help="with --extract, also emit blank text fields and unchecked boxes",
    )
    ap.add_argument(
        "--list-fields", action="store_true",
        help="print all field names (page, kind) and exit",
    )
    args = ap.parse_args()

    if args.extract:
        data = extract_form(args.extract, include_empty=args.all)
        text = json.dumps(data, indent=2, ensure_ascii=False) + "\n"
        if args.output:
            args.output.write_text(text, encoding="utf-8")
            print(f"wrote {args.output} ({len(data)} fields)", file=sys.stderr)
        else:
            sys.stdout.write(text)
        return

    out_path = args.output or DEFAULT_OUT
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

    build_form(sheet_pdf, markers, out_path, fill=fill)
    n_text = sum(1 for m in markers if m["kind"] == "text")
    n_check = len(markers) - n_text
    print(
        f"wrote {out_path} "
        f"({n_text} text fields, {n_check} checkboxes"
        + (f", {len(fill)} pre-filled" if fill else "")
        + ")"
    )


if __name__ == "__main__":
    main()
