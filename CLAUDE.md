# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains the Ashen RPG rulebook written in Typst, a modern typesetting system. The project consists of:

- **main.typ**: The main rulebook document (~97KB, primary content)
- **setting.typ**: Game Master's guide with world-building and setting information
- **declarations.typ**: Shared custom functions and formatting definitions used across documents

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

Both `main.typ` and `setting.typ` import shared declarations from `declarations.typ`, establishing a consistent styling and formatting system across the rulebook.

**declarations.typ** provides:
- `flavor()`: Formats italicized flavor text boxes with custom styling
- `advance-block()`: Creates formatted character advancement blocks with parameters for name, tier, XP cost, HP, FP, prerequisites, and description
- `power-description()`: Creates styled boxes for power/ability descriptions with hanging indents

### Import Pattern

All document files use the glob import pattern:
```typst
#import "declarations.typ": *
```

This makes all custom functions immediately available without individual imports.

### Document Configuration

Both main documents set:
- A4 paper size
- "Libre Baskerville" font (ensure this font is available on the system)
- Automatic table of contents generation with 2-level depth
- Custom document titles in metadata

## Development Notes

- The main.typ file is very large (25K+ tokens) - when reading, use offset/limit parameters or search for specific sections
- Custom functions in declarations.typ define the visual language of the rulebook - changes here affect all documents
- The project uses specific color definitions (eastern, aqua) in custom boxes - these may need to be defined or imported from Typst's standard library
