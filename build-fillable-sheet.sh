#!/usr/bin/env bash
# Build the form-fillable character sheet (ashen-character-sheet-fillable.pdf)
# inside the flake's pinned toolchain. Extra arguments are passed through to
# tools/make_fillable_sheet.py — e.g.:
#   ./build-fillable-sheet.sh --fill pregens/vessa.json -o vessa.pdf
#   ./build-fillable-sheet.sh --list-fields
set -euo pipefail
cd "$(dirname "$0")"
exec nix develop --command python3 tools/make_fillable_sheet.py "$@"
