# Design: The Memory Arc (Questions, Fragments, Resonance)

Status: **working draft** — design settled in conversation 2026-07-06, not yet in rulebook text.
Companion doc: [legendary-advances.md](legendary-advances.md) (the reward category this module consumes).

## Premise

Don't mechanize *how much* memory a Deathless has lost — that's fictional
positioning and varies by setting (near-total in default Ashen, total in some
campaigns, a single lost night in a Vampire-style game). Mechanize *what is
worth recovering*: a set of **load-bearing unknowns** about the character's
past, called **Questions**. The amnesia dial changes how many Questions exist
and how wide each one is; everything downstream is invariant.

- **Default Ashen configuration:** 5 Questions per character; the keepsake
  (characters.typ creation step) automatically seeds one.
- Every set terminates in a **Core Question** whose answer is the character's
  Regret — the truth that binds them to the world. In minimal-amnesia settings
  the Core Question lives inside the one lost event.

## Question states

Each Question is tracked as **Sealed → Glimpsed → Recovered**.

### Resonance (Sealed and Glimpsed)

Once per act per character, on a check that *directly advances* one of your
Questions, gain a dice bonus — **declare before rolling**:

- Question is **Sealed**: **+3d**
- Question is **Glimpsed**: **+6d**

Notes settled in design discussion:

- Calibration: Ashen pools stack large (20d+ at T6), so +6d is a tangible
  dramatic boost, not an auto-success. At low tiers it is proportionally
  decisive — intended.
- Combat invocation is legal and desirable (the climactic cast, striking down
  the rival who burned your village). Once per act ≈ once per adventure keeps
  it scarce; wasting it on a basic attack is a legible player mistake.
- **GM announcement:** the GM may announce "you feel a Resonance available on
  this check" — a diegetic flag that the moment touches the character's past,
  preventing missed hints without revealing what or why. Announcement does not
  compel spending; declining is itself informative. Flag flows both directions:
  player-invoked (fishing expeditions count as "directly advances" for Sealed
  Questions, GM adjudicates) and GM-announced.
- A fully Recovered character has no Resonance left — the mechanic retires
  itself when the arc completes. Thematically correct; by then they've banked
  the rewards and capstone.

### Recognition (Glimpsed only)

While a Question is Glimpsed: when you encounter a person, place, or object
connected to it, the GM tells you so, and once per such encounter you may ask
one question the half-memory could plausibly answer ("which corridor leads to
the vault?" — you garrisoned this fortress once).

### Recovered

Recovery happens in **placed scenes, not on checks** — no "roll Investigate to
remember"; a failed recall roll is dead air and holds the arc hostage to dice.
Uncertainty, if wanted, lives in the **distortion dial** (below), not access.

On recovering an ordinary Question:

- Clear all Fading (see Fading module sketch below).
- Gain a **Minor Legendary Advance** keyed to the memory's content (see
  legendary-advances.md). Small point rewards (+1 max EP / +1 SP per Question)
  were considered and **dropped** — fungible points make Questions
  interchangeable; a keyed advance makes each answer mechanically distinct and
  self-justifying in any setting ("you remember who taught you the blade").

On recovering the **Core Question** — the capstone choice:

- **Transcendence:** release; the character may accept true death or mortality
  on their own terms (player-authored retirement — the only path to what the
  game's pitch promises short of the two T6 world-rituals), **or**
- **Mastery:** remain Deathless by choice rather than curse; gain a **Major
  Legendary Advance** (the fully reintegrated self) and immunity to further
  Fading.

## Dials (per campaign / per Question)

- **Amnesia scope:** count and breadth of Questions (fictional positioning only).
- **Authorship (per Question):** GM-authored mystery / player-authored, played
  toward its reveal / genuinely open until play answers it.
- **Distortion:** recovered fragments may be incomplete or wrong; a later
  fragment can revise an earlier one. Resonance and Recognition run on what you
  *believe* you remember — planted or corrupted glimpses still grant bonuses
  until the truth outs. No extra rules needed; setting support exists (Vay
  Ngien's suppressed memory-restoration discovery, gmguide.typ ~1894).
- **Reward weight:** a plot-focused campaign (e.g. V:tM-style, one lost night)
  can strip the advances down to narrative boons; the Fading-clear and the
  capstone are the invariant core.

## Fading (companion module)

Fully designed — see **[fading.md](fading.md)**. Summary: Fading is essence
*trauma* (spending EP never marks; each mark = −1 max EP, −1d Presence/Command,
mandated narrated erosion), with a Fog-upside ladder at thresholds 2–5
(Fog-Touched / Veilcasting / Kinship / Forgetting). Terminal state is
**Forgotten**, grace state **Forgetting** (end of current act; only memory
recovery can rescue — Communion structurally cannot). Recovering a Question
clears all marks; Mastery grants immunity.

## Open questions

1. Glimpsed Fading-clear rider ("dwell on a glimpse during a long rest to clear
   1 Fading, once per Question") — currently **out**, held in reserve; dilutes
   "recovery is what heals you."
2. Fading module numbers and penalty shape — undesigned.
3. Interaction of Resonance (per act) with Minor advances (per scene) —
   frequencies deliberately differ; confirm in play.
4. Whether the keepsake-seeded Question should start Glimpsed rather than
   Sealed (leaning yes — the keepsake *is* a glimpse).

## Related rulebook anchors

- Keepsake + memory prompts: `src/rulebook/characters.typ` ~198–211
- Campaign-mystery pacing (personal-scale mirror of it): `src/rulebook/gmguide.typ` ~855–880
- Legendary reward pacing incl. "confronting past" trigger: `src/rulebook/gmguide.typ` ~899–905, ~1440–1454
- Curse-as-cage lore: `src/rulebook/setting.typ` ~303–326
