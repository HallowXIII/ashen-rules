#!/usr/bin/env -S nix shell nixpkgs#bash nixpkgs#typst --command bash

typst compile \
    --font-path fonts \
    --root . \
    src/rulebook/main.typ \
    ashen.pdf
