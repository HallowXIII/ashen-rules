# Ashen Rulebook — Playtest Draft Task Plan

## Context

The Ashen RPG rulebook (`main.typ`) is in moderate-to-advanced development. The core rules (mechanics, races, skills, attributes, equipment, combat) are largely written, but several content areas are empty or incomplete. The goal is to produce a **playtest draft** — a self-contained document that allows a group to run a full campaign at any level, even if some content is rough. `setting.typ` (GM guide) is out of scope for now.

The canonical source is `main.typ`. The markdown `Ashen Rules v2.md` is a reference for content but not the target format.

---

## Tasks

### Phase 1: Cleanup & Quick Fixes
These are small, targeted edits to remove embarrassing artifacts before anything else.

- [x] **Remove developer note** — Delete the "note to self: paste 4e rulebook here" comment in the reactions section (~line 1843)
- [x] **Fix corrupted text** — Fix "ex3 (Copy)ample" in the skill check example (~line 732)
- [x] **Fix incomplete combat sentences** — Complete or rewrite the dangling sentences in the combat section (brace action ~line 1920, command action ~line 1924, draw/stash action ~line 1932, combat beginning text ~lines 1825–1829)
- [x] **Remove Backgrounds reference** — Character creation mentions picking a background; remove or rephrase this reference since the chapter is not being included in the playtest draft
- [x] **Fix `//TODO link`** — Resolve or remove the broken cross-reference comment in the skills section (~line 534)

---

### Phase 2: Content Porting (User Provides Data)
User will export existing playtest content as JSON. These tasks depend on receiving that export.

- [x] **Port arcane spells from JSON** — User exports playtest spell data → format and insert into the Tiers 1–6 arcane spell list sections using `power-description()` macro. Ensure at least a few spells exist at every tier.
- [x] **Port advance content from JSON/notes** — User exports existing advance data for Command, Martial, Psychic, Speed, and Stamina categories → format and insert using `advance-block()` macro.

---

### Phase 3: New Content Creation
Fill gaps so that players can progress through all tier levels without hitting empty sections.

- [x] **Create additional arcane spells** — Added: Frost Bolt, Corrosive Spray (T1); Shatterblast, Venomcloud (T2); Vitriolic Deluge (T4); Chain Lightning, Petrification, Wall of Force, Inferno (T5); Disintegration, Meteor Swarm, Absolute Zero (T6)
- [x] **Create additional advances** — Added: Command (Rallying Presence, Tactical Coordination, Iron Authority, Warmaster); Speed (Fleet of Foot, Evasive Sprint, Lightning Dash, Impossible Swiftness); Stamina (Iron Constitution, Unstoppable); Potential (Leyline Attunement, Wellspring)
- [x] **Revise Life domain prayers** — Rewritten to use standard DC scaling and catalyst-percentage healing
- [x] **Add 3 new divine domains (War, Nature, Protection)** — T1–T6 prayers for each
- [x] **Command powers** — Full T1–T6 power list (Rally, Compel Obedience, Coordinated Strike, Terrifying Shout, Hold the Line, Break Will, Overwhelming Presence, Grand Tactician, Absolute Authority)
- [x] **Marksmanship exploits** — New section with T1–T6 (Steady Shot, Pinning Shot, Trick Shot, Suppressing Fire, Called Shot: Vitals, Killzone, Headshot, Death from Afar, Bullet Hell)
- [x] **Additional martial exploits** — Added: Measured Strike, Guardian Stance (T1); Sundering Blow, Whirlwind Strike (T4); Deathblow (T5)
- [x] **Additional psychic powers** — Added: Gravity Well (T4); Time Stop, Mass Banishment, Rewrite Fate (T6)

---

### Phase 4: Equipment
- [ ] **Flesh out equipment section** — Review existing equipment tables and descriptions. Add missing item entries, clarify any mechanics (bulk, catalysts, magic items), and ensure the section is complete enough to equip characters at all tiers.
- [ ] **Rituals and Recipes** — The framework for rituals/recipes exists but content is sparse. Write a usable set of rituals and recipes so that characters with those skills have something to actually do.

---

### Phase 5: Combat Rules
- [ ] **Complete combat action descriptions** — Beyond the dangling sentences fixed in Phase 1, do a full pass on *all* combat actions and reactions to ensure each is fully described and unambiguous.
- [ ] **Reactions section** — Currently has only a developer note. Write out the full reactions rules (what triggers a reaction, how many per round, list of available reactions).
- [ ] **Combat flow clarity** — Fill in the incomplete "how combat begins" text (surprise, initiative, joining a fight mid-scene). The section currently cuts off mid-sentence.
- [ ] **Damage, healing, and conditions cross-check** — Verify all status conditions referenced in combat are defined and consistent with the conditions list.

---

### Phase 6: Exploration
- [ ] **Write the Exploration section from scratch** — This section does not exist in main.typ at all. Based on the v2.md outline it should cover: overland movement, terrain types, vision/light, disease, currency & lodging, and death/dying mechanics. Draft a functional ruleset for each.

---

### Phase 7: Airship Combat
- [ ] **Stub or write airship combat** — Either write a functional basic system (initiative, actions, damage to systems) or replace the empty heading with a clear "Playtest Note: Airship combat rules are in development" placeholder.

---

### Phase 8: Final Review & Compile
- [ ] **Compile to PDF** — Run `typst compile main.typ` and confirm it produces a clean PDF without layout errors
- [ ] **Read-through check** — Scan the compiled PDF for any remaining placeholder text, orphaned headings, or layout issues
- [ ] **Cross-reference check** — Verify that section references and links within the document are accurate
- [ ] **Verify playability** — Confirm the document contains enough to: create a character, advance them through all levels, cast spells, use powers, and run combat

---

## Critical Files

- `/home/cazim/Documents/Typst/Ashen_Rules/main.typ` — Primary target (~25K+ tokens; read in chunks)
- `/home/cazim/Documents/Typst/Ashen_Rules/declarations.typ` — `advance-block()` and `power-description()` macros used for all new content
- `/home/cazim/Documents/Typst/Ashen_Rules/Ashen Rules v2.md` — Reference for background text, prose, and any content worth porting
- `/home/cazim/Documents/Typst/Ashen_Rules/Ashen Dev Notes.md` — Reference for stat lines for equipment

## Key Line References in main.typ

| Area | Approx. Line | Status |
|------|-------------|--------|
| TODO link (skills) | 534 | Fix/remove |
| Corrupted example text | 732 | Fix |
| Advance categories (empty) | 1536–1578 | Port + write |
| Arcane spell lists (empty) | 1676–1688 | Port + write |
| Martial/Command powers | 1670–1672 | Write or stub |
| Combat incomplete sentences | 1825–1932 | Fix |
| Dev note (reactions) | 1843 | Delete |
| Airship combat (empty) | 2044 | Write or stub |
