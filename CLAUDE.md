# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains the Ashen RPG rulebook written in Typst, a modern typesetting system. The project consists of:

- **main.typ**: The main rulebook document (~97KB, primary content)
- **setting.typ**: Game Master's guide with world-building and setting information
- **src/declarations.typ**: Shared custom functions and formatting definitions used across documents
- **src/formatting/style.typ**: Page layout, fonts, heading styles, table styling, and color palette

## Build Commands

Compile the main rulebook to PDF:
```bash
typst compile main.typ
```

Compile the GM guide to PDF:
```bash
typst compile setting.typ
```

Watch for changes and auto-recompile:
```bash
typst watch main.typ
```

Specify custom output path:
```bash
typst compile main.typ output/rulebook.pdf
```

## Architecture

### Document Structure

Both `main.typ` and `setting.typ` import shared declarations from `src/declarations.typ`, which in turn imports `src/formatting/style.typ` for the base styling system.

**src/formatting/style.typ** provides:
- `colors`: Named color palette (pfgreen, pfred, pfmaroon, lightgreen, pfwhite, pfnavy, otherRow, pfyellow, pfbrown)
- `pf-stylization()`: Master page/text/heading/table styling applied via `#show: pf-stylization`

**src/declarations.typ** provides:

_Content blocks:_
- `flavor(body)`: Italicized flavor text in Libre Baskerville
- `advance-block(name, tier, xp, hp, fp, prerequisites, body)`: Character advancement blocks
- `power-description(name, power-type, tier, ap, effect, ...)`: Styled power/ability cards with header bar, traits, and many optional fields (domain, keywords, flavor, prerequisites, trigger, range, duration, difficulty, cost, resistance, on-hit, miss, catalyst, tap, augments)
- `ritual-description(name, tier, skill, difficulty, magnitude, sacrifice, casting-time, effect, ...)`: Ritual formatting with optional aspects, failure, modifiers, flavor
- `item-description(name, item-type, tier, body, ...)`: Equipment/item blocks with optional keywords, flavor
- `spell(spl)`: Dictionary-driven spell card (expects .name, .type, .traits, .reqs, .effect)
- `feat(feat)`: Dictionary-driven feat card (expects .name, .level, .traits, .reqs, .effect, .special)
- `encounter(comp)`: Dictionary-driven encounter/complication card (expects .name, .type, .traits, .details)

_Layout helpers:_
- `pftraits(traits)`: Renders colored trait pills (rarity-aware: uncommon=orange, rare=navy, unique=purple; size traits=green)
- `pfi(body)`: Paragraph with first-line and hanging indent (0.5em)
- `pftab(name, ..contents, columns:, breakable:)`: Styled table with alternating row colors and navy header
- `chap-header(num, title, desc)`: Full-width chapter header banner
- `note(info)`: Muted background callout box
- `attention(content)`: Yellow bordered callout box
- `aloud(content)`: Read-aloud text between brown rules

_Utilities:_
- `to-string(it)`: Converts Typst content to plain string
- `roll-result(it)`: Detects roll-result paragraphs (Critical Success/Success/Failure/Heightened)

### Import Pattern

All document files use the glob import pattern:
```typst
#import "src/declarations.typ": *
```

This makes all custom functions immediately available without individual imports. The base styling is applied via:
```typst
#show: pf-stylization
```

### Document Configuration

Both main documents set:
- A4 paper size, 2-column layout, 12mm margins
- "Sofia Sans" / "Liberation Sans" body font; "Libre Baskerville" for headings; "Taroca" for chapter headers
- Automatic table of contents generation with 2-level depth
- Custom document titles in metadata

## Development Notes

- The main.typ file is very large (25K+ tokens) - when reading, use offset/limit parameters or search for specific sections
- Custom functions in src/declarations.typ define the visual language of the rulebook - changes here affect all documents
- Color palette is defined in `src/formatting/style.typ` via the `colors` dictionary - use `colors.pfnavy`, `colors.pfgreen`, etc.
