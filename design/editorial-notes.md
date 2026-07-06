# Editorial notes

## Remove all mentions of ley lines (2026-07-06)

Directive: purge "leyline"/"ley-line" from the rulebook — the term is modern
mythology (Alfred Watkins, 1920s, via the New Age movement) and doesn't belong
in the setting's vocabulary. The game already has native vocabulary for
magically saturated sites: **blessed ground** (exploration.typ) and **aspect
resonance / Influence** (skills.typ, gmguide.typ). Prefer those; where a
concrete noun for a site of concentrated magic is needed, pick a setting-native
term (candidate: *confluence*, which fits the river/Kethû cosmology — magic as
current, sites where currents meet).

**Status: DONE (2026-07-06).** All occurrences below replaced; the term chosen
was **confluence** ("confluences of magical current" glossed at first use in
exploration.typ; advance renamed to *Confluence Attunement* in advances.typ and
quickstart.typ; gmguide.typ:313's setting-customization example became "an
unstable network of magical currents"). Rulebook rebuilt successfully after
the change.

Occurrences fixed:

- `src/rulebook/exploration.typ:730` — blessed ground examples: "(leyline
  nexuses, ancient temples, sacred groves)" → drop or replace the first item.
- `src/rulebook/skills.typ:1349` — Influences: "leyline intersections, ancient
  …" → replace.
- `src/rulebook/skills.typ:1384` — "leyline nexus (Mist)" → replace (keep the
  Mist aspect mapping).
- `src/rulebook/gmguide.typ:313` — "an unstable ley-line network" (setting
  customization examples) → replace with another example hazard.
- `src/rulebook/gmguide.typ:2045` — ritual Influence: "(a leyline, an ancient
  temple)" → replace.
- `src/rulebook/advances.typ:780` — **advance named "Leyline Attunement"** —
  needs a new name (e.g. "Confluence Attunement" / "Wellspring Attunement");
  rename must propagate to:
- `src/rulebook/quickstart.typ:198` — references *Leyline Attunement* by name.
- `src/rulebook/setting.typ:300` — "Aspects concentrate --- leylines, ancient
  temples, sites of great…" → replace.

Design docs have been scrubbed already (`legendary-advances.md` Fog-Sense
rewritten to reference blessed ground).
