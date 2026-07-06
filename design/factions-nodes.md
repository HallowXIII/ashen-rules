# Design: Factions & Holdings (standing, debts, the faction turn)

Status: **working draft** — design settled in conversation 2026-07-06.
Companion docs: [memory-arc.md](memory-arc.md), [fading.md](fading.md)
(Communion competes for intermission ventures),
[legendary-advances.md](legendary-advances.md) (patron legendary favors).

## Premise

Closes the largest gap between the game's pitch ("factions of undying warriors
vie for control of nodes of ancient power") and its written rules, which
currently handle factions entirely through GM narration. Design rule carried
over from the other modules: **benefits are existing mechanics, priced rather
than invented** — the book already gates commissioning, reliquary access, and
sanctuary; this module prices them.

"Node" in the pitch is deliberately generic — a piece of terrain, an object,
even a person, anything whose possession increases a faction's power. The
game term is therefore an abstraction layer: **Holdings**.

## Player layer: Standing

Per-faction rank on a named ladder:

| Rank | Name | Meaning & keyed benefits |
|---|---|---|
| −2 | **Hunted** | Kill or capture on sight. |
| −1 | **Marked** | Obstructed, watched, denied service in faction territory. |
| 0 | **Outsider** | Default. No access, no obligations. |
| +1 | **Associate** | Mission access at standard pay (gmguide pay table). |
| +2 | **Sworn** | Commissioning access at faction specialists (the T3+ equipment gate); reliquary loans up to a tier cap; **anchor rights** in faction sanctums. Carries obligations. |
| +3 | **Voice** | Legendary-grade commissions; faction resources in the field; a seat at decisions. This is the rules-shape of the existing T6 pay table ("political influence, territorial concessions"). Carries heavy obligations. |

**Movement:** adjusted by the GM at act boundaries based on deeds, ±1 per
faction as a norm; betrayal can drop 2 ranks or straight to Hunted. Sworn and
Voice are *invitations*, reached by deed and oath, never by point accumulation
alone — joining is diegetic.

**Obligations:** Sworn+ characters receive a faction demand roughly every
intermission; refusing slips standing. This is the cost side that makes
membership a choice rather than a stat bonus.

**Multiple factions:** openly Sworn to allied factions is possible; to rival
factions, impossible openly. Secretly is playable and encouraged in
intrigue-forward campaigns — exposure drops the character to Marked or Hunted
with the betrayed party.

## Currency: Debts

Fast-moving spendable chits alongside slow-moving Standing, denominated per
faction. "Debts of service" is already the book's T6 mission-pay language;
this formalizes it.

- **Earned:** service beyond obligation — completing a demand exceptionally,
  volunteering for faction trouble, delivering a Holding.
- **Spent:** extraction/rescue, expedited or above-rank commissions, a
  reliquary loan above the rank cap, information, a transgression overlooked,
  access to a Holding's boons. Big asks cost multiple Debts.
- Debts survive standing changes — a Hunted character holding a Debt is owed
  it still; immortal orders keep their books. (This is deliberately a story
  generator.)

Named "Debts", not "Favor": divine Favor (the reliquary attunement system)
stays a distinct concept.

## World layer: the faction turn

Each featured faction (the GM guide's existing 3–5, each with a one-sentence
engine) gets a **project clock** (4/6/8 segments by scale). At every
intermission the GM runs the faction turn; for each faction:

1. **Advance the clock** — default 1 segment; +1 if the party materially
   helped this act, hold or remove a segment if they hindered, clear more on a
   major setback.
2. **Filled clock = world change**, expressed in the module's vocabulary: a
   Holding gained, lost, revealed, or destroyed; a war opened; a ritual
   completed. Start the faction's next clock.
3. **Generate one demand or opportunity** touching the party (this feeds
   Sworn obligations and adventure hooks).

This is the existing "clocks" + "the world changes during intermissions"
guidance given a procedure. GM-facing; players see consequences, not segments.

## Holdings

Anything whose possession increases a faction's power. Stat-block-lite:

**Name · Form · Tier · Boons · Hold**

- **Form** — what it actually is:
  - *Place*: a Clear, a magically saturated site, a fortified pass, a
    sanctum. (A Clear is not maintained *by* a holding; it **is** one —
    likely the largest and highest-tier form in the game, per the River
    Clear's faction thirds.)
  - *Object*: a relic lost in the Fog, a reliquary, a Materia cache.
  - *Person*: an oracle, a defected Perfector engineer, a Deathless whose
    anchor you control.
  - *Knowledge*: a route through the deep Fog, the location of Khâru's
    treasury, a rival's anchor site.
- **Tier** — scales the boons and the opposition, on the existing T1–T6 curve.
- **Boons** — the mechanical interface; drawn from the existing toolbox:
  blessed-ground rest (+1 EP), Charge supply for magitek, sanctum anchor
  rights, a kept reliquary (divine aspect access), a ritual **Influence** site
  (plugs directly into the existing T4–T6 ritual Influence requirement,
  gmguide ~2045), waystation shelter, revenue (feathers per intermission),
  standing intel.
- **Hold** — what keeping it costs: a garrison, upkeep, ritual maintenance,
  or *secrecy* (the natural Hold of Knowledge and some Objects).

**Form drives contest logic** — this is where the abstraction pays off:

| Form | Contested by | Notes |
|---|---|---|
| Place | assault, siege, infiltration, severing/re-making a binding | can't be carried off |
| Object | theft, escort interception, destruction | heist frames; portable |
| Person | turning, extraction, discrediting, killing | may have their own agenda |
| Knowledge | copying, denial, discreditation, racing to act first | **non-exclusive** — two factions can hold the same secret |

Contests are **adventure frames, not a wargame**: each vector above is an
act-scale objective for a party, on either side. Parties may hold Holdings
themselves at high tier ("territorial concessions", T6 pay table) — the Hold
cost then lands on them, including the Tend a Holding venture below.

### Anchor stakes

Three lines with outsized consequences:

1. Anchor rights in a sanctum are a Sworn benefit — reincorporate behind
   friendly walls.
2. If your anchor site falls to an enemy while you are dead, you reincorporate
   at 1 HP and 0 FP **into their hands**.
3. A Deathless' anchor location is therefore a secret worth money: a Knowledge
   holding. Anchor intelligence is a commodity (the Keepers of the Door were
   practically written to trade in it).

### Example holdings (sketch register)

- **Khâru's Ember** — Object, T2. Boons: kept reliquary (Khâru's aspects,
  per equipment.typ). Hold: secrecy, and the favor of its keeper-priest.
- **A minor market-town Clear** — Place, T3. Boons: revenue, waystation,
  commissioning access for the holder's Sworn. Hold: garrison + the goodwill
  of the mortal population.
- **The anchor site of a rival Voice** — Knowledge, T4. Boons: standing
  intel; the credible threat alone is spendable. Hold: secrecy (worthless
  once the rival re-binds).

## Connective tissue: intermission ventures

All three modules lean on a formal intermission economy, defined here. XP/SP
spending and shopping remain free bookkeeping. Each character gets **two
ventures** per intermission, from a menu:

- **Faction Obligation** — answer a demand; maintain Sworn+ standing.
- **Communion** — clear 1 Fading (see fading.md).
- **Pursue a Lead** — advance a memory Question toward Glimpsed or set up its
  recovery scene (see memory-arc.md).
- **Networking** — build or repair Standing (Outsider↔Associate range; higher
  ranks move by deed only).
- **Tend a Holding** — pay a party-held Holding's Hold cost.
- **Labor** — earn feathers (rate by tier; modest).

The slot competition is where the module set breathes: the character tending
their soul isn't doing faction work; the faction loyalist is Fading.

## Dials

- **Light** — Standing + obligations only; Holdings as GM color.
- **Standard** — add the faction turn and Holding boons.
- **Full (V:tM mode)** — add Debts, Holding contests as the campaign spine,
  party-held Holdings, secret multi-faction standing intrigue.

## Open questions

1. Reliquary-loan tier caps per rank (Sworn ≤ character tier? ≤ tier −1?).
2. Debt economy sizing — what a single Debt buys vs. multiples; whether Debts
   should be tier-rated.
3. Whether Voice-rank obligations become play-limiting (a Voice may be more
   governed than governing — possibly the point).
4. Labor rates and revenue boon numbers vs. the gmguide wealth benchmarks
   (must not break the campaign-health check).
5. Whether Networking should also earn Debts, or standing only.
