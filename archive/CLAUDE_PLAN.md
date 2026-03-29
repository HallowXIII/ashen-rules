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
- [x] **Flesh out equipment section** — Added equipment rules prose (weapons, armor, catalysts, bulk/charge), full T0-T6 tables (weapons, armor, catalysts, reliquaries, consumables, general gear), item descriptions with special effects for T4-T6 items. Renamed Magic Armor → Ward.
- [x] **Rituals and Recipes** — Added `ritual-description` macro, `ritual-guidelines.md`, and 18 rituals/recipes: 7 Ritual skill (Rite of Opening, Ward of Alarm, Arcane Lock, Circle of Binding, Enchant Weapon, Planar Gate, Resurrection Rite), 4 Occultism (Augury, Scrying, Commune, Fate Unraveling), 7 Alchemy (Healing Potion, Antidote, Stimulant Draft, Weapon Oil, Paralytic Poison, Elixir of Fortitude, Philosopher's Reagent).

---

### Phase 5: Combat Rules
- [x] **Complete combat action descriptions** — Added missing Dash action (2 AP, double speed, straight line).
- [x] **Reactions section** — Rewrote intro with full rules (1 reaction/round, no AP cost, interrupts trigger, three trigger phases).
- [x] **Saving throws** — Added new subsection defining the mechanic (3 dice, 2 successes = pass, end of turn). Clarified distinction between saving throws and resistance checks.
- [x] **Status conditions cross-check** — Added 11 missing conditions: Prone, Immobilized, Restrained, Frightened, Weakened, Dominated, Exhausted, Poisoned, Diseased, Bleeding, Burning. Total now 23 conditions.
- [x] **Airship combat** — Replaced empty stub with playtest placeholder note.
- Note: Combat flow (initiative, surprise, how combat begins) was already complete from Phase 1 fixes.

---

### Phase 6: Exploration
- [x] **Write the Exploration section from scratch** — Added 8 subsections: Overland Movement (travel speeds, terrain modifiers, forced march, navigation), Terrain (7 terrain types + hazards), Weather (3 climate tables from dev notes), Vision/Light/Senses (light levels, 5 special senses, concealment, cover with saving throw mechanics), Types of Transportation (foot, mounted, vehicle, skimmer, airship), Disease/Hunger/Exhaustion (EP as survival resource), Currency (Feathers + purchasing power table), Lodging/Resting (short/long rest, EP recovery, blessed ground), Death/Revival (EP revival, soul anchors, mortal death).

---

### Phase 7: Airship Combat
- [x] **Stub or write airship combat** — Placeholder note added (done in Phase 5).

---

### Phase 8: Final Review & Compile
- [x] **Compile to PDF** — Compiles clean (only expected font warning on systems without Libre Baskerville).
- [x] **Read-through check** — Removed orphaned "Spell Descriptions" heading. Fixed "page xx" placeholder → section reference. Fixed "Insert more detailed advice here" stub in advancement section. Only remaining placeholder: Airship Combat (intentional).
- [x] **Cross-reference check** — Fixed 2 references to removed "Medicine" skill → "Alchemy". Verified all section cross-references point to existing sections. Fixed "some amount of money" → "Ƒ 500" in character creation.
- [x] **Verify playability** — Character creation (5 steps, all reference existing sections with starting money defined), advancement (XP explanation complete), spell/power learning (all 5 types documented), equipment (T0-T6 complete), combat (actions, reactions, 23 conditions, saving throws), exploration (8 subsections), death/revival (EP + soul anchors). Ready for playtest.

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
