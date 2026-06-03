# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains the Ashen RPG rulebook written in Typst, a modern typesetting system. The rulebook is a single document assembled from per-chapter source files:

- **src/rulebook/main.typ**: Top-level assembly file. Sets document metadata, applies styling, and `#include`s each chapter in order. Contains almost no prose itself.
- **src/rulebook/*.typ**: Individual chapters (`foreword`, `introduction`, `characters`, `skills`, `advances`, `powers`, `equipment`, `combat`, `exploration`, `setting`, `gmguide`, `character-sheet`). These hold the actual content.
- **src/rulebook/races/*.typ**: Ancestry/race entries (`clockwork`, `echoes`, `humans`, `sootbeasts`), included by the relevant chapter.
- **src/formatting/declarations.typ**: Shared custom functions and formatting definitions used across all chapters.
- **src/formatting/style.typ**: Page layout, fonts, heading styles, table styling, and color palette.
- **src/adventures/**: Standalone adventure modules (e.g. `the-mad-alchemist`).

Note: the `setting` and GM material are chapters of the one rulebook (`setting.typ`, `gmguide.typ`), not a separate document.

## Build Commands

Preferred: use the wrapper scripts. They pin the toolchain via `nix shell` and pass the correct flags (`--font-path fonts` and `--root .`).

Build the rulebook to `ashen.pdf`:
```bash
./build-rulebook.sh
```

Watch and auto-recompile (also opens the PDF viewer):
```bash
./watch-rulebook.sh
```

Equivalent raw `typst` invocations, if you have `typst` on PATH:
```bash
# Build
typst compile --font-path fonts --root . src/rulebook/main.typ ashen.pdf

# Watch
typst watch --open --font-path fonts --root . src/rulebook/main.typ ashen.pdf
```

**Important — always pass `--root .`.** Chapter files reference shared assets and declarations with paths that resolve from the project root, and the title page / styling load graphics via repo-relative paths. Without `--root .`, compilation fails on path access errors. The `--font-path fonts` flag is required for the bundled fonts (Taroca, etc.).

To build a different target, point `typst compile` at the relevant source file (e.g. an adventure under `src/adventures/`) and keep the same `--font-path fonts --root .` flags.

## Architecture

### Document Structure

`src/rulebook/main.typ` imports shared declarations from `../formatting/declarations.typ`, which in turn imports `style.typ` for the base styling system. Each chapter file imports declarations the same way and is pulled into the document with `#include`.

**src/formatting/style.typ** provides:
- `colors`: Named color palette (pfgreen, pfred, pfmaroon, lightgreen, pfwhite, pfnavy, otherRow, pfyellow, pfbrown)
- `fonts`: Named font roles (sans: "Barlow", serif: "Source Serif 4", special: "EB Garamond 08")
- `pf-stylization(doc)`: Master page/text/heading/table styling applied via `#show: pf-stylization`. Also sets A4, 2-column, 12mm margins, page numbering, and the textured-paper page fill.

**src/formatting/declarations.typ** provides:

_Content blocks:_
- `titlepage(pre-title:, title, subtitle:, description:)`: Full title page used at the start of the document
- `flavor(body, width:, citation:)`: Italicized flavor text
- `advance-block(name, tier, xp, hp, fp, prerequisites, body)`: Character advancement blocks
- `power-description(name, power-type, tier, ap, effect, ...)`: Styled power/ability cards with header bar, traits, and many optional fields (domain, keywords, flavor, prerequisites, trigger, range, duration, difficulty, cost, resistance, on-hit, miss, catalyst, tap, augments)
- `ritual-description(name, tier, skill, difficulty, magnitude, sacrifice, casting-time, effect, ...)`: Ritual formatting with optional aspects, failure, modifiers, flavor
- `item-description(name, item-type, tier, body, ...)`: Equipment/item blocks with optional keywords, flavor
- `spell(spl)`: Dictionary-driven spell card (expects .name, .type, .traits, .reqs, .effect)
- `feat(feat)`: Dictionary-driven feat card (expects .name, .level, .traits, .reqs, .effect, .special)
- `encounter(comp)`: Dictionary-driven encounter/complication card (expects .name, .type, .traits, .details)
- `creature(...)` / `creature-stat-block(...)`: Bestiary creature entries and stat blocks
- `race-infobox(...)`: Ancestry/race summary infobox
- `vehicle-stat-block(...)`: Vehicle stat blocks

_Layout helpers:_
- `pftraits(traits)`: Renders colored trait pills (rarity-aware: uncommon=orange, rare=navy, unique=purple; size traits=green)
- `pfi(body)`: Paragraph with first-line and hanging indent (0.5em)
- `pftab(name, ..contents, columns:, breakable:)`: Styled table with alternating row colors and navy header
- `floating-table(name, columns:, breakable:, ..contents)` / `float(content, plc:)`: Floating (placed) table and generic float helper
- `chap-header(num, title, desc)`: Full-width chapter header banner
- `note(info)`: Muted background callout box
- `attention(content)`: Yellow bordered callout box
- `aloud(content)`: Read-aloud text between brown rules
- `icon(kind, color:, size:)`: Inline icon (Lucide icons)
- `cr-action`, `cr-power`, `cr-equip`, `cr-subhead`: Hanging-indent helpers used inside creature stat blocks

_Utilities:_
- `to-string(it)`: Converts Typst content to plain string
- `roll-result(it)`: Detects roll-result paragraphs (Critical Success/Success/Failure/Heightened)

### Import Pattern

Chapter files use the glob import pattern, with a path relative to the file's location in `src/rulebook/`:
```typst
#import "../formatting/declarations.typ": *
```

This makes all custom functions immediately available without individual imports. The base styling is applied once in `main.typ` via:
```typst
#show: pf-stylization
```

### Document Configuration

The document sets (in `main.typ` and `pf-stylization`):
- A4 paper size, 2-column layout, 12mm margins, textured-paper page fill
- "Source Serif 4" body text; "Barlow" (sans) and "EB Garamond 08" (special) as secondary roles; bundled fonts (e.g. Taroca) loaded via `--font-path fonts`
- Automatic table of contents generation with 2-level depth
- Custom document title/author/metadata

## Development Notes

- Several chapter files are very large (`combat.typ`, `equipment.typ`, `skills.typ`, `powers.typ` are 70KB+). When reading, use offset/limit parameters or search for specific sections rather than reading the whole file.
- Custom functions in `src/formatting/declarations.typ` define the visual language of the rulebook - changes here affect all chapters.
- Color palette and font roles are defined in `src/formatting/style.typ` via the `colors` and `fonts` dictionaries - use `colors.pfnavy`, `colors.pfgreen`, `fonts.serif`, etc.
- Generated PDFs (e.g. `ashen.pdf`) and `src/*.pdf` are build artifacts; `src/*.pdf` is gitignored.

## Tools

The **`tools/`** directory holds standalone helper scripts that support the project but aren't part of the Typst build. Put any future automation, analysis, or one-off scripts here.

- **tools/build_optimizer.py**: A character-build analysis tool. Given a characteristic-to-attribute mapping and a set of weighted target characteristics, it brute-forces the optimal attribute + characteristic rank allocation within an XP budget (respecting cumulative XP costs and characteristic prerequisites). It was written to evaluate the balance impact of remapping a characteristic's linked attributes (e.g. Martial from STR+AGI to STR+DEX), comparing "current" vs "proposed" systems across several archetypes and printing per-archetype rating/XP/score deltas. Run with:
  ```bash
  python3 tools/build_optimizer.py
  ```
  It takes no arguments; edit the `CURRENT`/`PROPOSED` mappings and the archetypes in `main()` to model different changes. The XP-cost and prerequisite tables near the top must be kept in sync with the advancement rules in `src/rulebook/advances.typ` if those rules change.

## Standard Equipment Table Formats

When adding new equipment entries, follow these column conventions for consistency with existing tables:

- **Weapon table:** Name, Tier, Price, Damage, Pen, Bulk, Hands, Range, FM, Special.
  - **Pen:** Penetration value (ignores that much Armor on hit).
  - **FM:** Fire mode — S (single), SA N/M (semi-auto, N shots at M penalty), FA N (full auto, N shots), or — for melee.
  - **Range:** Melee, Short (5), Medium (10), Long (15–20), Very Long (25+), or a specific template (Cone N, Line N, Burst N).
- **Armor table:** Name, Tier, Price, Armor, Ward, Evasion, Bulk, Charge.
- **Catalyst table:** Name, Tier, Type (Arcane or Psychic), Class (Light or Medium), Bulk, Charge, Hands, Damage, Increment.
- **Consumable table:** Name, Tier, Type, Bulk, Range, Effect, Cost.
- **General gear table:** Name, Bulk, Cost, Effect (where relevant).
