# Character illustration prompts

One prompt per pregenerated character, for the player packet
(`src/player-packet/profiles.typ`). Each `.txt` file is a complete,
self-contained prompt — pipe it straight into the generator:

```bash
tools/nano-banana.sh \
    -o graphics/illustrations/ushtang.png \
    -m gemini-3-pro-image \
    -a 2:3 \
    -i graphics/illustrations/sootbeasts.png \
    - < graphics/prompts/ushtang.txt
```

Then view the result with the Read tool (or any viewer) before committing it.
Expect to re-roll a few times; image models are inconsistent about the
paper edge and about honouring "one figure only".

## House style

`graphics/illustrations/sootbeasts.png` is the type specimen. Every prompt
restates its style rather than relying on the reference image alone, because
the model weights the text more heavily than the attachment:

- Watercolour washes over clean dark ink linework, on visible cold-press paper
- Deckled torn-paper edge with a narrow white margin framing the picture
- Muted, desaturated palette; granulating washes; no digital gloss or glow
- One figure, full body, three-quarter view, filling most of a 2:3 frame
- Pale cold fog background with flat desaturated maroon/mauve silhouettes
- No text, no signature, no watermark

**Always pass a style reference with `-i`, and always tell the model not to
copy the figures in it.** Without that instruction it reproduces the
reference's warboar-and-lion pair.

## Continuity notes

- The reference image already contains a Warboar and a Goldenbristle. Ushtâng
  and Mbazân must be visibly *different individuals* of those kinds, not
  redraws — different colouring, scars, kit, and bearing.
- Deathless have no visible mark in the setting. No glowing eyes, no brands,
  no spectral effects on anyone who isn't actually casting something.
- Keep gear faithful to the sheet in `pregens/`. A character with
  Marksmanship 3 and a maul should not be drawn holding a rifle.
