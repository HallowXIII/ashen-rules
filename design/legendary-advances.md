# Design: Legendary Advances (Minor & Major)

Status: **working draft**, 2026-07-06. Founds a category the GM guide already
references (legendary rewards for "character milestones (confronting past,
earning patron trust)", gmguide.typ ~899) but which has zero entries in
`advances.typ`/`powers.typ`. **"Legendary" is a game-wide term** meaning
unique (or nearly so) and not available at-will; legendary items, item
properties (e.g. Slough Off, equipment.typ ~3282), and legendary advances all
share it by design. Primary consumer: the memory arc
([memory-arc.md](memory-arc.md)); also serves party story milestones and
patron/faction legendary favors.

## Recovered playtest advances (canon reference set)

Reconstructed from the main playtest campaign, from memory, 2026-07-06 —
originals lost with the VTT server. Treat wording as approximate but intent as
authoritative.

### Minor

- **Time is of the Essence** _(Legendary/Minor.)_ Once per Scene, you may spend
  3 EP to take an additional turn on the Initiative tick of your choosing.
- **Legendary Resilience** _(Legendary/Minor.)_ Once per Scene, as a free
  action, you may spend 3 EP to end all conditions and effects on yourself. You
  may take this action even if you are Stunned.
- **Void Step** _(Legendary/Minor.)_ You can freely travel through the Void,
  including the deep Void, without suffering ill effects. You gain a +3 bonus
  to all rolls made to use teleportation powers or rituals.
  _Provenance: awarded to the entire party after they apprenticed to a secret
  society of sorcerers — precedent for party-wide milestone awards._
- **Void Jaunt** _(Legendary/Minor; Racial, Void.)_ Prerequisites: _Void Step_,
  _Fey Jaunt_ racial power. When using Fey Jaunt, your movement range increases
  by 3 squares.

### Major

- **Perfect Vessel** _(Tier 6 Legendary Advance/Major; Porcelain, Divine.)_

  > "Among the constructs, Third made first the Ironhands; crude but flexible,
  > she came to value them as guardians and servants. Next she made the
  > Porcelains, lithe and graceful, and adept at magic; they became her maids
  > and playmates. But her true designs she achieved only at the end, when she
  > discovered a way to lock divine essence within her Porcelains, and she made
  > five of them to be her perfect vessels."

  Effect: Your body is perfectly attuned to divine essence. With the
  appropriate ritual, a shard of a God can be transferred into you, causing you
  to become a reliquary of that God equal in Tier to the fragment. While in
  this state, you can attempt Favor checks or cast any divine powers granted by
  that reliquary using your Arcane or Psychic characteristics instead of
  Command. You can contain a total tier of fragments up to half your maximum EP
  value or 18, whichever is lesser.

## Design template (extracted from the reference set)

### Minors — two legal lanes

1. **EP-fueled actives.** Once per Scene, priced 2–3 EP. Effects may be
   dramatic — up to extra-turn / full-cleanse scale — *because* the price is
   the game's deepest resource: 3 EP is a full long rest of recovery, and
   spending below 5 EP puts your spot-revival at risk. Burning soul-stuff for
   power is the thematic heart of the lane; the revival-threshold tension is a
   feature, never to be designed away.
2. **Permissions & niche passives.** Travel/social/knowledge permissions, or a
   flat +3d to a *tightly scoped, non-core* dice pool (precedent: Void Step's
   teleportation rolls). Narrow is the constraint that keeps them off the
   stacking treadmill.

**Never (Minor):** dice bonuses to attack pools, Evasion, damage, or
characteristic ranks; permanent AP or reaction increases; revival EP-cost
reduction (that's advance-tree territory — see Will Triumphant).

**Grammar:** Minors are tierless (awarded by story, priced in EP at use). They
may carry trait tags (Racial, domain, Void, …) and prerequisites, including
chains onto racial powers (Void Jaunt) and other legendaries. Each entry should
carry at least a line of flavor tying it to the world.

### Majors

Identity-redefining: a Major changes what you *are*, where a Minor changes what
you can occasionally *do*. Tiered (typically T5–T6), race/domain-taggable,
lore-passaged (Perfect Vessel is the register to hit). Power ceiling: on the
order of a boss-tier tool in PC hands; expected volume ~1 per character per
campaign (the Core Question capstone), consistent with existing gmguide
legendary pacing. Legal space includes cross-tradition bridges, death-economy
changes (anchors, reincorporation), and endgame-material handling.

## Seed library — Minors, organized by past identity

Organizing by *who you were* rather than by effect: a dozen entries cover most
characters as picks or obvious reskins, and double as inspiration when
authoring a character's forgotten life. All numbers are placeholders pending
playtest.

### The Soldier

- **Drilled to the Bone** _(Legendary/Minor.)_ Once per Scene, when initiative
  is rolled, you may spend 2 EP: you and one ally within 5 squares each gain
  +1 AP on your first turn. _The horns sound and your body is already moving._
- **Shield-Wall Memory** _(Legendary/Minor.)_ Once per Scene, as a reaction
  when an ally within 2 squares is hit by an attack, spend 3 EP: the attack
  resolves against you instead. _You held the line once. Some part of you never
  stopped._

### The Scholar

- **Dead Tongues** _(Legendary/Minor.)_ You can read and speak the languages of
  the fallen empires, and gain +3d on checks to decipher pre-War texts,
  inscriptions, and ciphers.
- **Mnemonic Palace** _(Legendary/Minor.)_ Everything you have perceived since
  your awakening is filed in perfect order. Once per Act, ask the GM one
  factual question about any scene you witnessed; the answer is true and
  complete.

### The Priest

- **Once-Anointed** _(Legendary/Minor; Divine.)_ Reliquaries remember your
  service: they begin neutral toward you rather than unfriendly, and you gain
  +3d on Favor checks.
- **Litany Against the Dark** _(Legendary/Minor; Divine.)_ Once per Scene,
  spend 2 EP and 1 AP: allies within Burst 3 end the Frightened and Panicked
  conditions. _You no longer remember the god, but the words still work._

### The Criminal

- **Fingers Remember** _(Legendary/Minor.)_ Once per Act, reveal a small object
  (light enough to palm) that you lifted or planted earlier in the Act,
  narrating the flashback of when.
- **No Face in the Crowd** _(Legendary/Minor.)_ Once per Scene, while you have
  cover or concealment, spend 2 EP as a free action to become hidden without a
  check.

### The Sovereign

- **Voice of Old Command** _(Legendary/Minor.)_ Once per Scene, spend 3 EP and
  1 AP: one ally who can hear you immediately takes one 1-AP action of their
  choice. _Nobody remembers your throne. Their spines do._
- **Weight of the Crown** _(Legendary/Minor.)_ Choose a hierarchy you once
  commanded when this advance is keyed (a legion, a priesthood, a guild).
  Its functionaries instinctively defer to you, and you gain +3d on
  Presence-based checks against its members.

### The Wanderer

- **The Old Roads** _(Legendary/Minor.)_ You remember the roads from before the
  War. On routes you walked in life, your party ignores navigation-check
  penalties and travels 25% faster; you always know what pre-War roads exist in
  a region.
- **Fog-Sense** _(Legendary/Minor.)_ Once per Act, spend 1 EP: learn the
  direction and rough distance of the nearest blessed ground within a day's
  travel. You sense changes in Fog density band an hour before they arrive.

### The Maker

- **Maker's Hands** _(Legendary/Minor.)_ Maintenance and repair costs are
  halved for equipment you service yourself. Once per Act, jury-rig a broken
  item to function for one Scene.

### The Companion

- **The Vow Holds** _(Legendary/Minor.)_ Once per Act, when an ally you can see
  dies, spend 2 EP: immediately move up to your Speed toward them and take one
  1-AP action, outside the normal turn order. _You made a promise. Death is not
  an excuse._

## Seed library — Majors (exemplars)

- **Perfect Vessel** — see reference set above (Porcelain, Divine, T6).
- **Standard of the Third Legion** _(Tier 5 Legendary Advance/Major; Command.)_
  You remember the rank, and the world remembers with you. You gain a second
  reaction each round. Once per Act, unfurl your authority: for one round, each
  ally who can hear you gains +1 AP. _(Numbers placeholder — action-economy
  effects are the balance lever, per gmguide.)_
- **Bound to the Kethû** _(Tier 5 Legendary Advance/Major.)_ The river itself
  half-remembers your name. You may maintain two soul anchors, and your
  reincorporation always takes 3 days, recovering 2 EP per day.
- **Worldsmith's Prentice** _(Tier 6 Legendary Advance/Major.)_ You remember
  the forges where the gods' instruments were made. You can craft and repair
  legendary items given appropriate materials, and can safely handle and
  prepare Materia (Nigra and Rubrior) for ritual use.

## Open questions

1. Confirm Minors are tierless (current stance: yes).
2. Major power ceiling needs 1–2 more playtest datapoints; Standard of the
   Third Legion is deliberately aggressive to probe it.
3. Whether the "no dice to core pools" Minor constraint leaves enough design
   space — the seed library suggests yes (EP lane absorbs the power fantasy),
   but write ~10 more before locking it.
