Equipment: 
[x] Explain casting bonuses granted by catalysts
[x] Explain that reliquaries don't, make sure divine prayer difficulties are lower than Arcane/Psychic spells of the same tier.
[x] Reorganize equipment section to only list "base" equipment in the tables to the extent possible
[ ] Insert item descriptions for catalysts, armor etc that don't yet have one and require one.
[ ] Vehicle stat blocks (format TBD) -- sample tactical vehicles and capital vessels

GM Guide:
[ ] Insert basic GMing guidance into GM guide
[ ] Insert guidance on creating and running adventures
[ ] Insert guidance on creating campaigns

Advances:
[x] Dual wield advances
[x] Summoner/warlock advances (reduce sustain cost, improve binding, multiple summons)

Skills:
[ ] Clean up examples, use note blocks to format them
[ ] Alchemy rituals/recipes for T2-4 (alchemist build support)

Layouting:
[ ] Layouting and design pass
[x] Design a character sheet
[ ] Redesign powers page on character sheet (see below)

## Powers Page Redesign Plan

### Context
The current powers page (page 4) has ~102 note-lines across 6 sections, but characters will have at most ~20 powers. We want structured power cards with enough detail that players rarely need to look up the rulebook.

### New helper: `compact-field(label, width)`
An inline-label field (label + underline on one line, ~10pt tall) instead of the existing `field()` which stacks label above rect (~20pt+). Halves vertical cost per row.

### Combat power card (~60pt tall, 5 rows)
```
Row 1: [☐] [NAME_______________] [TYPE______] [T__]
Row 2: [AP___] [COST_________] [DIFF___] [RANGE___________]
Row 3: [KEYWORDS_______________] [RESIST____________]
Row 4: [EFFECT / NOTES_________________________________]
Row 5: [________________________________________________]
```
- Checkbox doubles as arcane memorization marker
- Fields based on frequency analysis: name/type/tier/AP/cost/difficulty/range are near-universal; keywords + resistance cover ~100% and ~50% of powers
- Two effect lines for abbreviated summaries; domain, tap, miss, augments go here

### Ritual card (~45pt tall, 3 rows)
```
Row 1: [NAME___________________] [TIER__] [SKILL________]
Row 2: [DIFF___] [MAG___] [TIME________] [SACRIFICE_____]
Row 3: [EFFECT / NOTES_________________________________]
```
Rituals have different fields (no AP/range/resistance; they have skill, magnitude, casting time, sacrifice).

### Page layout (2 columns)
- **Column 1**: "Powers" header + 10 combat power cards
- **Column 2**: "Powers (cont.)" header + 6 combat power cards + "Rituals Known" header + 6 ritual cards
- **Total**: 16 combat powers + 6 rituals = 22 slots

### Files to modify
- `src/character-sheet.typ` — add `compact-field`, `power-card`, `ritual-card` helpers; replace page 4 content

### Verification
- `typst compile --font-path fonts src/character-sheet.typ character-sheet.pdf`
- Visual check that 10 cards fit column 1 and 6+6 fit column 2 without overflow

Copy-editing:
[ ] Consolidate duplicated sections
[ ] Make sure rules occur in a sensible order (definition before reference, where not sensible, forward references with #link)

TBD after the first rounds of playtesting:
- T4-6 content pass (powers, items, rituals -- T1-3 first pass complete)