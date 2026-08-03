# Pre-generated character JSON

`tools/make_fillable_sheet.py --fill DATA.json` pre-fills the form-fillable
character sheet. This directory holds the input files for that flag.

```bash
./build-fillable-sheet.sh --fill pregens/vessa.json -o vessa.pdf
```

`vessa.json` is a complete worked example — a Tier-2-ish Echo arcanist with a
consistent XP ledger, equipment, spell list, and curse page. Copy it as a
starting point.

## Format

A **flat JSON object** mapping field name to value. No nesting, no arrays.

```json
{
  "character-name": "Vessa Aureth",
  "arcane-rating": "10",
  "occultism-trained": true,
  "power-1-memorized": false
}
```

- **Text fields** take a string. Non-strings are coerced with `str()`, so
  `"max-hp": 27` works, but quote everything for consistency.
- **Checkboxes** take `true` / `false`. Any truthy value checks the box.
- **Omitted fields** are left blank (text) or unchecked (checkbox). There is no
  need to list every field — `vessa.json` fills 445 of 1073.
- **Unknown keys** don't fail the build; the script prints
  `warning: N fill keys match no field: ...` (first 10 names) and continues.
  Treat any such warning as a typo in your JSON.

## Finding field names

The authoritative list comes from the sheet source itself:

```bash
./build-fillable-sheet.sh --list-fields    # name<TAB>page<TAB>kind
```

Names are auto-slugged from the label printed on the sheet, so they change if a
label changes. Re-run `--list-fields` after editing
`src/rulebook/character-sheet.typ`.

## Going the other way

`--extract` reads the values back out of a sheet, as JSON that `--fill` accepts.
Use it to capture a character someone filled in by hand in a PDF viewer, or to
roll a session's changes back into a pregen file.

```bash
./build-fillable-sheet.sh --extract played.pdf -o pregens/vessa.json
./build-fillable-sheet.sh --extract played.pdf            # to stdout
./build-fillable-sheet.sh --extract played.pdf --all      # include blanks
```

This reads the PDF's own form data — it needs neither typst nor
`character-sheet.typ`, so it also works on a sheet built from an older layout.

Blank text fields and unchecked boxes are omitted by default, which keeps the
output small and diffable; `--all` emits all 1073. Fields come out in sheet
reading order, the same order as `--list-fields`.

Round-tripping `--fill` → `--extract` is lossless apart from explicit `false`
checkbox entries, which drop out (identical in effect to omitting them).

A **flattened** PDF has no form fields left — printing to PDF, or "flatten" /
"remove interactivity" in a viewer, bakes the values into the page graphics and
`--extract` will exit with an error. Keep the interactive copy.

## Naming rules

Repeated rows share a base id and are numbered **in reading order, with the
first occurrence unsuffixed**:

```
advance-name, advance-name-2, advance-name-3, ... advance-name-84
```

Repeat groups and their row counts:

| Base id | Rows | Page |
| --- | --- | --- |
| `advance-name` / `-tier` / `-xp` / `-hp` / `-fp` | 84 | 2 |
| `notes` | 42 | 1 |
| `gear-item` / `gear-bulk` | 24 | 3 |
| `ritual` | 15 | 4 |
| `consumable-item` / `-qty` / `-bulk` | 12 | 3 |
| `lead` | 8 | 5 |
| `language`, `active-effect`, `curse-taken` | 6 | 1, 1, 5 |
| `resistances`, `faction-name` / `-standing` / `-debts` | 5 | 1, 5 |
| `obligation` | 4 | 5 |

Rows that repeat a *structure* rather than a single line carry an explicit index
in the id instead, starting at 1:

| Prefix | Range |
| --- | --- |
| `weapon-N-*` | 1–3 |
| `armor-N-*` | 1–3 |
| `catalyst-N-*` | 1–2 (also used for reliquaries — hence `-will` / `-favor`) |
| `power-N-*` | 1–13 |
| `question-N-*` | 1–5 |
| `holding-N-*` | 1–3 |
| `fading-N` | 1–5 (checkboxes) |
| `venture-N` | 1–2 |

## Gotchas

A few names are not what you'd guess:

- `maint-10` — slugged from the label "Maint. (10%)".
- `power-N-effect-1` and `power-N-effect-2` — the two effect lines are **both**
  suffixed. There is no bare `power-N-effect`.
- `question-N-text` and `question-N-text-2` — two lines per Question; the first
  is unsuffixed, the second is `-2`.
- `resistances-weaknesses-immunities` is the labelled line at the top of that
  box; the five write-on lines below it are `resistances` … `resistances-5`.
- Attribute ids include the abbreviation: `strength-str`, `endurance-end`,
  `dexterity-dex`, `agility-agi`, `attunement-att`, `sight-sgt`,
  `intelligence-int`, `perception-per`, `will-wil`, `presence-prs`.
- Characteristics and skills each have three fields: `<name>-rank`,
  `<name>-bonus` (sum of the two linked attribute ranks), `<name>-rating`
  (rank + bonus). Trained skills add `<name>-trained` (checkbox).

## Text that renders

Field values are drawn in **Helvetica with WinAnsi encoding**. Characters
outside that set render as nothing, or make PDF readers fall back badly. In
practice:

- Fine: `—` (em dash), `-`, `ƒ`, `+`, straight quotes.
- Avoid: `−` U+2212 minus sign (use `-`), `→` U+2192 (use `>`), `½` (use `1/2`),
  curly quotes.

The field font is **auto-sized** (`/Helv 0 Tf`), so a long string shrinks to fit
its box while a short one is drawn large. Adjacent lines of very different
length will look mismatched — keep the lines in a block roughly the same length
if you care about the look.
