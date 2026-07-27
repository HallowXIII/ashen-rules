# Design: Fading (the cost of the curse)

Status: **drafted into rulebook** (2026-07-27) — see `src/rulebook/curse.typ`
("Fading" section). Drafting choices: −10% max EP rounds **up** (open q5, as
suggested); Lapse resist difficulty = current Fading kept as written (q6 still
needs playtest); the voluntary burn and forced-Lapse coercion shipped as
optional-rule callouts; the Vampire-mode social penalty lives in the chapter's
"Tuning the Arc" section. The old −1 EP/week Fog rule in exploration.typ was
replaced by Fading marks as planned.
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

**Every mark:** −10% (minimum −1) maximum EP, and the player narrates an
erosion — a face, a feeling, a taste, something the curse takes. The narration
is mandatory; it is the point.

**No skill dice penalty** — decided against (2026-07-06): in a temptation
economy, costs must be universal and temptations may be specific. A per-mark
Influence/Deceive penalty made Fading a pure downside for exactly one
archetype, whose upsides point elsewhere. Social erosion is carried instead by
the mandated narration, by Lapses, and by the Kinship texture below — fiction,
not dice. *Vampire-mode dial:* tables wanting Humanity-style mechanical
degradation can reintroduce −1d on Influence and Deceive per mark; it fits
that configuration, where the social ladder is the game.

**Thresholds (cumulative)** — the upside ladder; the Fog fills what empties:

| Fading | Threshold effect |
|---|---|
| 2 | **Fog-Touched.** You treat Fog density as one band lower for its effects on you, and fog obscuration no longer blocks your sight. |
| 3 | **Veilcasting.** Your powers cost 1 fewer increment of FP (minimum 1). |
| 4 | **Kinship.** Fog-spawned creatures do not attack you unless provoked — you alone; they half-recognize something of themselves. The living notice too: animals shy from you, children stare, hosts grow uneasy without knowing why — texture for the GM, no dice attached. |
| 5 | **Forgetting.** Your powers cost half FP (rounded up). At the end of the current act, you become **Forgotten** (NPC). |

The soul burns brightest as it unravels: a Forgetting character is at the peak
of their power during their final act, and the price is the character.

## Lapses (RP consequences)

Fading's answer to frenzy — but inverted, because the two curses fail in
opposite directions. The Beast is an *excess* that seizes the wheel; Fading is
an *absence*, and an absence cannot rage. What takes over when the self thins
is either nothing, or the past.

At Fading 2+, unstructured time threatens a **Lapse**, in one of two forms:

- **Vacancy** — nothing surfaces. Stopped mid-sentence, an hour at the window,
  a night walking the perimeter without knowing why. Lost time. The punishing
  form.
- **Echo** — the past surfaces, and **what leaks through is true**: the GM
  authors Echo content from the character's Sealed Questions (memory-arc.md).
  A shield-wall formed against nobody; an ally addressed by a name the player
  has never heard; hands performing a ritual the character doesn't know.
  Behavior the character can't interpret and didn't consent to.

**When a Lapse triggers, the player chooses:**

- **Succumb** — the GM states what surfaces; *the player performs it* (same
  agency philosophy as the narrated erosion: GM authors the leak, player plays
  it). An accepted Echo may advance a related Question toward Glimpsed or
  yield a Recognition-grade clue. Self-knowledge at the price of
  self-possession.
- **Resist** — Grit check against current Fading. Success holds you together;
  failure drops you into a *Vacancy* — the form with no memory content at all.
  The character who always white-knuckles it stays in control and learns
  nothing.

**Triggers ride the threshold ladder** (every gift of the Fog arrives with
more of you missing):

| Fading | Lapse exposure |
|---|---|
| 2 | On marking a new Fading point; on GM-keyed reminders of the forgotten past (the dark mirror of the Resonance announcement: "something in this place reaches for you"). |
| 3 | + long rests. A Lapse during a long rest downgrades it to a rough rest — you wandered instead of sleeping; no full benefits, no EP recovery. |
| 4 | + any quiet stretch. |
| 5 | **Inversion.** The Lapse is the resting state; being *present* in unstructured time is what requires the Grit check. The Forgetting character flickers: fully themselves in battle, intermittent everywhere else. |

**Combat exemption — never in structured time.** Violence anchors you;
adrenaline and purpose hold the self together; it is the quiet that unravels
you. This is deliberate twice over: forced control loss inside the 4-AP
tactical layer would be pure feel-bad, and the exemption generates the
module's signature character with zero additional rules — the heavily Faded
Deathless who *seeks battle to feel real*, because the campfire is worse than
the enemy.

**Table-weight note (intentional):** RP-leaning groups will treat Lapses as
the module's center; wargame-leaning groups will treat them as light color
around the EP economy. Both are correct — the succumb/resist structure and
the combat exemption are designed so neither style is punished.

**Optional coercion dial:** tables that want occasional genuinely forced
episodes (V:tM-style) can rule that keyed reminders at Fading 4+ skip the
choice and go straight to the Grit check.

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

1. ~~Social skill penalty~~ — resolved: dropped from the default (pure
   downside for face characters); kept as a Vampire-mode dial. See the track
   section.
2. Threshold placement and magnitudes of the upside ladder (does Veilcasting
   at 3 make casters too eager to sit at moderate Fading? intended tension,
   but verify it stays a temptation rather than a build).
3. Veilcasting/Forgetting interaction with 1-FP powers and with EP-costed
   powers (current stance: FP costs only; EP costs never discounted).
4. Whether Fog-Touched sight-through-obscuration needs a range limit.
5. −10% max EP per mark: specify rounding (suggest round *up* the loss — the
   Fog is not generous) and confirm the derived Forgetting-at-<5-EP floor
   still reads cleanly now that high-tier characters lose 2–3 EP per mark.
6. Lapse numbers: Grit check difficulty = current Fading is a placeholder;
   verify against typical Grit pools at each tier.
