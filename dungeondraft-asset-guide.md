# Dungeondraft Asset Generation Guide (Nano Banana)

How to generate top-down map assets for Dungeondraft with `tools/nano-banana.sh`.

## What Dungeondraft needs

- **Objects/props**: PNG **with transparency**, strict top-down (plan) view. Dungeondraft's
  default grid is **256 px per tile** (1 tile = 5 ft). Size assets so a 1-tile prop is
  ~200–240 px (leaves breathing room in the cell); a 1×2 prop ~240×490, etc. Generating at
  1024px and downscaling gives the crispest results.
- **Terrain/floor textures**: seamless & tileable, 512 or 1024 px square. (Harder for the
  model — expect visible seams; prefer props first.)
- **Rotation-proof lighting**: users rotate assets freely, so light must be diffuse and
  overhead. **No long cast shadows** — only subtle baked-in ambient occlusion right at the
  object's contact edge. Dungeondraft adds its own wall/object shadows.
- **Style**: the de-facto VTT standard is a hand-painted, painterly look (Forgotten
  Adventures style) with clean silhouettes and muted, slightly desaturated colors. Photoreal
  assets clash with everything else on the map.

## Prompt template

> Top-down orthographic view of **[SUBJECT]**, seen directly from above at exactly 90
> degrees, flat plan view with no perspective or tilt, hand-painted fantasy tabletop map
> asset, painterly VTT style with clean crisp silhouette, soft diffuse overhead lighting,
> subtle ambient occlusion at contact edges only, no cast shadows, muted slightly
> desaturated colors, single object centered and fully visible, isolated on a solid pure
> white background, no text, no watermark, no border, no grid

Replace **[SUBJECT]** with a concrete, physical description ("a weathered rectangular
alchemist's workbench cluttered with glass vials and scorched parchment"). For Ashen
flavor, work in soot, ash dust, verdigris, cracked ceramic, brass-and-iron fittings.

**Failure modes to correct for when iterating:**
- *Isometric drift* — the model loves 3/4 views. If you see object sides, prepend
  "architectural floor-plan style" and repeat "directly overhead". The strongest fix is to
  **describe what is literally visible from above** instead of relying on view keywords:
  e.g. for a statue, "from directly above we see the crown of her head, her shoulders, and
  the wings folded around her front, with the plinth edge visible as a ring around the
  figure". Spelling out the overhead geometry constrains the model better than any camera
  keyword (validated on `statue_moon_in_blood.png`, which came out skew-free).
- *Cast shadows* — if a drop shadow appears, it survives background removal as gray smudge;
  regenerate rather than trying to clean it.
- *Vignettes/backgrounds* — "isolated on a solid pure white background" usually holds, but
  the model sometimes adds a stone floor "for context". Say "no floor, no ground surface".

## Workflow

```bash
# 1. Generate (flash for iteration at ~$0.04/image; -m gemini-3-pro-image for finals)
tools/nano-banana.sh -o /tmp/raw.png -a 1:1 "Top-down orthographic view of ..."

# 2. Knock out the background, trim, downscale (1 tile example)
nix shell nixpkgs#imagemagick --command magick /tmp/raw.png \
  -fuzz 5% -fill none -draw 'alpha 0,0 floodfill' -trim +repage \
  -resize 240x240 assets/dungeondraft/objects/my_prop.png

# 3. Verify no holes: flatten over magenta and inspect — punched-out pixels glow pink
nix shell nixpkgs#imagemagick --command magick assets/dungeondraft/objects/my_prop.png \
  -background magenta -flatten /tmp/check.png
```

**Use the floodfill knockout, not `-transparent white`.** A global `-transparent white`
punches holes through near-white pixels *inside* the object — specular highlights on glass,
crystal, orbs, polished metal — which then render as black spots in Dungeondraft. The
floodfill variant removes only the contiguous outer background, so enclosed highlights
survive. Always run the magenta check on anything with shiny or spherical components.

- Aspect ratios: `1:1` for square props, `3:4`/`2:3` for 1×2-ish furniture, `9:16` for
  long/thin objects. Trim handles the rest.
- **White-fringe halos**: if the knockout leaves a pale rim, raise `-fuzz` to 8–10%, or add
  `-channel A -morphology Erode Disk:1 +channel` after the floodfill. If the object's own
  *outline* touches near-white (pale marble edges, white fur) and the floodfill eats into
  it, regenerate on a different key color ("isolated on a solid pure magenta background")
  and floodfill that instead.

## Style consistency across a set

Generate one asset you like, keep it as the **style anchor**, and pass it as a reference
for every subsequent asset in the set:

```bash
tools/nano-banana.sh -o /tmp/raw.png -a 1:1 -i assets/dungeondraft/style-anchor.png \
  "In exactly the same painterly style, palette and lighting as the reference image: \
   top-down orthographic view of [SUBJECT], ... (rest of template)"
```

## Dungeondraft packaging notes

- The pack source lives at `assets/dungeondraft/` with the layout Dungeondraft expects:
  `textures/objects/*.png` for props, `data/default.dungeondraft_tags` for the tag/category
  JSON (tags map to lists of texture paths; sets group tags — keep it updated when adding
  assets, and note the texture paths in it must match exactly).
- Build the `.dungeondraft_pack` from the Dungeondraft UI (the built-in asset packer): point
  it at `assets/dungeondraft/`, fill in name/author/version, and it generates `pack.json`
  itself. Keep the generated `pack.json` in the folder so the pack ID stays stable across
  rebuilds — a changed ID orphans every placed asset on existing maps.
- Colorable assets (recolorable in-app) must be grayscale + red-channel masks — out of scope
  for generation; make normal full-color objects instead.
