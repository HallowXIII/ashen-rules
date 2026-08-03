#!/usr/bin/env -S nix shell nixpkgs#bash nixpkgs#typst --command bash
# Build the player handout packet (ashen-player-packet.pdf): adventure primer,
# how-to-play, and the seven pregenerated character profiles.

typst compile \
    --font-path fonts \
    --root . \
    src/player-packet/main.typ \
    ashen-player-packet.pdf
