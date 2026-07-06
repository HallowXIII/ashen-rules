# Design: Fading (the cost of the curse)

Status: **working draft** — core decisions settled in conversation 2026-07-06.
Companion docs: [memory-arc.md](memory-arc.md) (clearing Fading is the memory
arc's job), [legendary-advances.md](legendary-advances.md) (Mastery capstone
grants Fading immunity).

## Premise

The curse's downside, currently pure fluff in the book ("cannot grow, cannot
change, cannot find peace", setting.typ ~303), given light crunch and heavy
fiction. Fading is **essence trauma** — damage to the boundary of the soul.
It is explicitly a *bargain*, not just a wound: as the soul's boundary erodes,
the Fog seeps in, and power comes easier. The Deathless who chooses that power
and slides toward the end is a story the module deliberately supports.

## The Fading ↔ EP relationship (precise)

- **Spending EP never causes Fading.** EP expenditure (revival, rest benefits,
  power costs) is *use* of essence, not damage to it, no matter how low the
  pool goes.
- **Each Fading mark reduces maximum EP by 1.** Current EP is unaffected
  unless it now exceeds the new maximum, in which case it drops to match.
- **Clearing marks restores maximum EP.** It never refills current EP — the
  vessel mends; it does not fill itself.
- **If maximum EP would drop below 5** (the revival/reincorporation cost) from
  any combination of effects, the character enters Forgetting regardless of
  mark count: a soul that cannot hold 5 EP cannot knit itself back together.

## Marking Fading (default triggers)

Spot-revival **never** marks — death-as-resource is the tactical layer's
identity and stays clean.

1. **Reincorporation** (flagship): mark 1 Fading when your essence begins
   reincorporating at your soul anchor.
2. **Fog saturation**: mark 1 Fading per month spent in Dense Fog, or per week
   in Extreme Fog. *This replaces the existing long-term Deathless Fog rule
   (−1 EP/week after 3 months, exploration.typ)* — the split is now clean:
   temporary environmental dice penalties recover on leaving the Fog;
   permanent soul erosion is Fading.
3. **Soul-damaging effects**: "mark 1 Fading" is a game-wide costing keyword —
   ritual sacrifices can offer it as an alternative price, forbidden bargains
   have a standard cost, and creatures/traps can deal Fading directly. This
   opens a bestiary design space (memory-eaters, essence-leeches) and gives
   the Divine Tower finale (Vay Ngien rendering Deathless into fuel) its
   mechanical teeth.
4. **Voluntary burn** (optional temptation dial, Vampire-mode): after seeing a
   failed roll, mark 1 Fading to add +6d and roll them into the result.
   Deliberate mirror of Resonance — pre-roll faith vs post-roll desperation,
   same magnitude, opposite souls.

## The track (0–5)

**Every mark:** −1 maximum EP; −1d on Presence- and Command-based checks; and
the player narrates an erosion — a face, a feeling, a taste, something the
curse takes. The narration is mandatory; it is the point.

**Thresholds (cumulative)** — the upside ladder; the Fog fills what empties:

| Fading | Threshold effect |
|---|---|
| 2 | **Fog-Touched.** You treat Fog density as one band lower for its effects on you, and fog obscuration no longer blocks your sight. |
| 3 | **Veilcasting.** Your powers cost 1 less FP (minimum 1). |
| 4 | **Kinship.** Fog-spawned creatures do not attack you unless provoked — you alone; they half-recognize something of themselves. |
| 5 | **Forgetting.** Your powers cost half FP (rounded up). At the end of the current act, you become **Forgotten** (NPC). |

The soul burns brightest as it unravels: a Forgetting character is at the peak
of their power during their final act, and the price is the character.

## Forgetting and Forgotten

- **Forgetting** (grace state): entered at Fading 5, or when maximum EP would
  drop below 5. Lasts until the end of the current act.
- **Forgotten** (terminal): at act's end, the character passes out of their
  own story — an NPC husk, one of the Forgotten. A setting noun as well as a
  state: the Forgotten wander the Fog, and the bestiary can pick them up.
- **The only rescue is memory.** Recovering a Question clears all Fading as
  normal and pulls a Forgetting character back. The Communion intermission
  activity structurally *cannot* save them — Forgetting ends at the act's end
  and intermissions come after — so the desperate race to a memory scene is
  the module's built-in climax. This asymmetry is intentional.

## Clearing Fading

1. **Recovering a memory Question**: clear *all* marks (see memory-arc.md).
2. **Communion** (intermission activity): dwelling with your keepsake, among
   the living, in remembered places — clear 1 mark. Costs the intermission
   slot, competing with faction obligations, training, and commissions: the
   character who spends every intermission tending their soul is choosing not
   to advance their position in the world.
3. **Mastery** (Core Question capstone): immunity to further Fading (existing
   marks: cleared by the capstone itself — recovering the Core Question is
   recovering a Question).

## Tuning notes

- Expected accrual: reincorporation is rare (~3–6 per character per campaign)
  against ~5 full clears from the memory arc plus the Communion trickle.
  Becoming Forgotten should essentially never happen to a character who tends
  their arc — it is the fate of neglect, deliberate bargain-taking, or being
  fed to soul-eaters. That is the intended tuning target.
- Death-spiral (fewer max EP → riskier deaths → more Fading) exists by design,
  with two brakes (clears above) and a visible floor. Watch T1 in playtest:
  base max EP ~11, five marks reaches the edge.
- A character at Fading 4 using the voluntary burn knows it sends them into
  Forgetting. That choice should be legible at the table before it is made.

## Open questions

1. Is −1d Presence/Command *per mark* too steep (−5d at Forgetting)? It is
   thematically right — a Forgetting character is barely a person — but
   punishes face characters hardest. Alternative: −1d per 2 marks. Playtest.
2. Threshold placement and magnitudes of the upside ladder (does Veilcasting
   at 3 make casters too eager to sit at moderate Fading? intended tension,
   but verify it stays a temptation rather than a build).
3. Veilcasting/Forgetting interaction with 1-FP powers and with EP-costed
   powers (current stance: FP costs only; EP costs never discounted).
4. Whether Fog-Touched sight-through-obscuration needs a range limit.
