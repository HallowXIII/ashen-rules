#import "../formatting/declarations.typ": *

#chap-header("10", "The Curse", "Memory and the price of immortality")

The Deathless cannot die --- and cannot rest. Each of them is a soul held back
from the cycle by a regret it can no longer fully remember, walking a world it
was never meant to linger in. This chapter gives that condition its rules: the
*memory arc*, by which a character recovers the truths that bind them, and
*Fading*, the slow erosion that claims those who die too often, dwell too deep
in the Fog, or bargain away pieces of themselves for power.

Both systems are modular. The memory arc scales from near-total amnesia (the
default in Ashen) down to a single lost night, and Fading can be run as a
lightweight economy or as the dramatic center of a campaign. Guidance on
tuning them appears at the end of the chapter and in the GM Guide.

== Memory and Questions <memory-questions>

Ashen does not measure how much a Deathless has forgotten. What the rules
track is what is *worth recovering*: a small set of load-bearing unknowns
about the character's past, called *Questions*. A Question is something the
character does not know about who they were, whose answer would change how
they see themselves. _Who taught me the blade? Why do I flinch at the sound
of bells? Whose name is engraved inside this ring?_

=== Creating Questions

During character creation, work with your GM to write your character's
Questions. In a standard Ashen campaign each character has *three to five*,
and the keepsake chosen during Finishing Touches (see the Characters chapter)
is always tied to one of them --- often literally: _"why can I not bring
myself to discard this?"_ Because the keepsake is itself a surviving fragment
of the past, its Question begins play *Glimpsed* rather than Sealed (see
below).

One Question in every set is the *Core Question*. Its answer is the
character's Regret --- the truth that binds them to the world and denies them
the cycle. The Core Question is usually the last to be resolved, and
resolving it ends the character's arc (see _The Core Question_ below).

Each Question can be authored in one of three ways, chosen when it is
written:

- *GM-authored:* the player writes the question, the GM knows the answer. The
  arc plays as a mystery.
- *Player-authored:* the player knows the answer and plays toward its reveal.
  The arc plays as a tragedy the audience is in on.
- *Open:* nobody knows the answer yet; play will discover it. The GM and
  player build the truth together from what emerges at the table.

A single character can mix modes freely --- a GM-authored Core Question
behind two player-authored ordinary ones is a common and effective shape.

=== Question States

Every Question is in one of three states, and moves through them in order:

/ Sealed: The character knows the question exists --- the flinch, the
  keepsake, the gap --- but nothing of the answer.
/ Glimpsed: A fragment has surfaced: a face, a place, half a name. The
  character knows roughly where the truth lives, but not what it is.
/ Recovered: The character has the answer, whatever it costs them.

The GM moves a Question from Sealed to Glimpsed when the character earns a
real fragment --- through investigation, through an Echo (see _Lapses_
below), through the _Pursue a Lead_ intermission venture (see the GM Guide),
or simply through play brushing against the past.

=== Resonance <resonance>

The past pulls on the present. *Once per act*, on a check that directly
advances one of your Questions, you may invoke Resonance --- declare it
*before rolling* --- and add dice to your pool:

#pftab(
  "Resonance",
  columns: (2fr, 1fr),
  [*Question state*], [*Bonus*],
  [Sealed], [+3d],
  [Glimpsed], [+6d],
)

Any check can qualify if the fiction supports it: persuading the archivist to
open the sealed wing, deciphering the regimental cipher, striking down the
rival who burned the village you are beginning to remember. Combat invocation
is legitimate and encouraged when the fight touches the past --- but
Resonance is once per act, and spending it on a check that advances nothing
is simply a wasted gift.

The GM may announce that a Resonance is available on a check: _"something in
this place reaches for you."_ This is a diegetic signal that the moment
touches the character's forgotten past, and it exists so that an important
hint is never lost to an unlucky decision. The announcement never compels the
player to spend the Resonance --- declining is itself information. Players
may also invoke Resonance on their own initiative; for a Sealed Question,
deliberately probing at the past ("I search the barracks for anything
bearing my regiment's mark") counts as directly advancing it, subject to GM
adjudication.

A character whose Questions are all Recovered has no Resonance left. The
mechanic retires itself when the arc completes --- by then, its rewards are
banked.

=== Recognition <recognition>

While a Question is *Glimpsed*, the half-memory can be consulted. When your
character encounters a person, place, or object connected to that Question,
once per such encounter you may ask the GM one question the half-remembered
past could plausibly answer: _"which corridor leads to the vault?"_ --- you
garrisoned this fortress once, even if you cannot remember the garrison.

Recognition is meant to be player-driven: the impetus to say "I think I know
this place" should come from the table, not the GM. The GM volunteers the
connection only when the *player* has no way of spotting it --- when the
link runs through information only the character could hold.

=== Recollection <recollection>

Ashen has no Lore skill. What a Deathless knows of the old world, they know
because they lived it --- and how much of it they can reach depends on how
much of themselves they have reclaimed. Each character has a *Recollection*
pool, rolled for checks of pure world-knowledge: recognizing a pre-War
banner, recalling the rites of a dead cult, knowing what the warning glyphs
on a sealed door once meant.

The pool grows as Questions advance:

#pftab(
  "Recollection",
  columns: (2fr, 1fr, 1fr),
  [*Question state*], [*3 Qs*], [*4--5 Qs*],
  [Glimpsed], [+2d], [+1d],
  [Recovered (total)], [+6d], [+3d],
)

Each Question contributes once, at the rate of its current state; a fully
recovered character rolls 15--18 dice regardless of how many Questions their
campaign uses. A freshly awakened Deathless rolls almost nothing --- the
knowledge is in there, but the shelves are dark.

#note[Recollection covers what the character's *former life* would know. For
  knowledge acquired since awakening, use the ordinary skills --- Occultism,
  Eerie, and their kin.]

=== Recovering a Question <recovering-questions>

Recovery happens in *placed scenes, never on checks*. There is no "roll
Investigate to remember": a failed recall roll is dead air, and the arc must
never be hostage to dice. When the fiction has earned the answer --- the
party stands in the burned village, the witness is finally willing to speak,
the seal on the archive is broken --- the GM frames the scene and the memory
returns. Investigation, Resonance, and Recognition determine how *fast* a
character reaches that scene, not whether the memory works when they arrive.

When your character recovers an ordinary Question:

- *Clear all Fading.* The recovered self holds; the erosion is undone (see
  _Fading_ below).
- *Gain a Minor Legendary Advance keyed to the memory's content* --- you
  remember who taught you the blade, and your hands remember too. The GM
  selects or designs the advance to fit both the answer and the character's
  current tier; see #link(<legendary-advances>)[_Legendary Advances_] in the
  Advances chapter.

=== The Core Question <core-question>

Recovering the Core Question --- confronting the Regret itself --- is the
capstone of a Deathless character's arc, and it ends in a choice no rule can
make for the player:

- *Transcendence.* The character releases their hold on the world, and the
  world's hold on them. They may pass on --- true death, on their own terms
  --- or, at the GM's discretion, resume mortality and live out what remains
  of a natural life. This is a player-authored retirement: the character
  leaves play as the person they chose to become, the only escape from the
  curse short of the great world-rituals.
- *Mastery.* The character remains Deathless --- by choice now, not by
  chains. They gain a *Major Legendary Advance* embodying their fully
  reintegrated self (see the Advances chapter), and they become *immune to
  Fading*: recovering the Core Question clears all marks, and no further
  marks can ever be inflicted. The cage is now a house they hold the key to.

== Fading <fading>

The curse preserves; it does not maintain. A soul barred from the cycle can
still be worn away at its edges, and the name for that erosion is *Fading*.
Fading is *essence trauma* --- damage to the boundary of the soul, not to its
reserves. And it is a bargain as much as a wound: as the boundary thins, the
Fog seeps in, and power comes easier. Some Deathless choose that road with
open eyes.

Fading is tracked as *marks*, from 0 to 5.

=== Fading and Essence

The relationship between Fading and Essence Points is precise, and the
distinction matters:

- *Spending EP never causes Fading.* Revival, rest benefits, power costs ---
  expenditure is *use* of essence, not damage to it, no matter how low the
  pool runs. Dying and spot-reviving in battle, however often, leaves no
  scar.
- *Each mark of Fading reduces your maximum EP by 10%* of its unmodified
  value, rounded up, minimum 1. Your current EP is unaffected unless it now
  exceeds the new maximum, in which case it drops to match.
- *Clearing marks restores your maximum.* It never refills current EP --- the
  vessel mends; it does not fill itself.
- *If your maximum EP would drop below 5* --- the cost of knitting a body
  back together --- from any combination of effects, you enter *Forgetting*
  (see below) regardless of how many marks you carry. A soul that cannot
  hold 5 EP cannot reincorporate.

=== Marking Fading

You mark 1 Fading whenever any of the following occurs:

+ *Reincorporation.* When your essence begins reincorporating at your soul
  anchor, mark 1 Fading. The journey back is the wound: each time, a little
  less of you makes it.
+ *Fog saturation.* Mark 1 Fading for each full month of continuous exposure
  to Dense Fog, or each full week in Extreme Fog. (The temporary dice
  penalties from Fog exposure, described in the Exploration chapter, recover
  when you leave the Fog; Fading does not.)
+ *Soul-damaging effects.* Some rituals accept "mark 1 Fading" as a
  sacrifice, some bargains name it as their price, and some creatures and
  traps deal it directly. Wherever the text says *mark 1 Fading*, this is
  the track it means.

Whenever you mark Fading, *narrate what the curse takes*: a face, a name, a
taste, the reason you loved someone. The narration is not optional
bookkeeping --- it is the cost, made visible at the table. The player
chooses what is lost; the GM may weave it back into play.

#attention([*Voluntary burn (optional rule).* At tables running Fading as a
  temptation economy, a player may mark 1 Fading *after seeing a failed
  roll* to add +6d to it and incorporate them into the result. This is the
  dark mirror of Resonance --- the same magnitude, invoked in faith before
  the roll or in desperation after it. A character at Fading 4 should know,
  before they reach for it, that the next mark begins their final act.])

=== The Gifts of the Fog <fading-thresholds>

The Fog fills what empties. At each threshold below, the cumulative effects
apply for as long as your Fading is at or above it:

#pftab(
  "Fading Thresholds",
  columns: (1fr, 2fr, 6fr),
  align: (center, left, left),
  [*Marks*], [*Threshold*], [*Effect*],
  [2], [Fog-Touched],
  [You treat Fog density as one band lower for its effects on you, and fog
    obscuration no longer blocks your sight.],
  [3], [Veilcasting],
  [Your powers cost 1 fewer increment of Focus (minimum 1 increment). EP
    costs are never reduced.],
  [4], [Kinship],
  [Fog-spawned creatures do not attack you unless provoked --- you alone;
    they half-recognize something of themselves.],
  [5], [Forgetting],
  [Your powers cost half their increments of Focus (rounded up). At the end
    of the current act, you become *Forgotten*.],
)

The soul burns brightest as it unravels: a character in Forgetting is at the
peak of their power during their final act, and the price is the character.

Kinship cuts both ways. The living notice what the Fog notices: animals shy
away, children stare, hosts grow uneasy without knowing why. This carries no
dice --- it is texture for the GM, and it should be used.

=== Lapses <lapses>

From Fading 2 onward, unstructured time threatens a *Lapse* --- a stretch in
which the thinning self is simply not at the wheel. A Lapse takes one of two
forms:

- *Vacancy.* Nothing surfaces. Stopped mid-sentence, an hour at the window, a
  night spent walking the camp perimeter without knowing why. Lost time.
- *Echo.* The past surfaces --- and *what leaks through is true*. The GM
  authors an Echo's content from the character's Sealed Questions: a
  shield-wall formed against nobody, an ally addressed by a name the player
  has never heard, hands performing a rite the character does not know.
  Behavior the character cannot interpret and did not consent to.

When the GM calls for a Lapse, the player chooses:

- *Succumb.* The GM states what surfaces; *the player performs it*. The GM
  authors the leak, the player plays it --- the same division of labor as
  the narrated erosion. A succumbed Echo may advance a related Question
  toward Glimpsed, or yield a clue as if by Recognition. Self-knowledge, at
  the price of self-possession.
- *Resist.* Make a Grit check with difficulty equal to your current Fading.
  Success holds you together. Failure drops you into a *Vacancy* --- the
  form with no memory content at all. The character who always
  white-knuckles it stays in control, and learns nothing.

Exposure widens as the track fills:

#pftab(
  "Lapse Triggers",
  columns: (1fr, 8fr),
  align: (center, left),
  [*Marks*], [*A Lapse may trigger...*],
  [2],
  [When you mark a new point of Fading, and on GM-keyed reminders of the
    forgotten past ("something in this place reaches for you" --- the dark
    mirror of the Resonance announcement).],
  [3],
  [...and during long rests. A Lapse during a long rest downgrades it to a
    rough rest: you wandered instead of sleeping, and recover no EP.],
  [4], [...and during any quiet stretch.],
  [5],
  [*Inversion.* The Lapse is the resting state. In unstructured time, being
    *present* is what requires the Grit check; the Forgetting character
    flickers --- fully themselves in battle, intermittent everywhere else.],
)

*Lapses never occur in structured time.* Violence anchors you: adrenaline
and purpose hold the self together, and it is the quiet that unravels it. A
heavily Faded Deathless who seeks out battle to feel real --- because the
campfire is worse than the enemy --- is playing the condition exactly as
intended.

#note[How much table-weight Lapses carry is up to the group. RP-forward
  tables will make them the center of the condition; tactically-minded
  tables will treat them as color around the EP economy. Both readings are
  correct, and the succumb-or-resist structure is built so that neither is
  punished. Tables that want occasional genuinely forced episodes can rule
  that GM-keyed reminders at Fading 4+ skip the choice and go straight to
  the Grit check.]

=== Forgetting and the Forgotten <forgetting>

*Forgetting* is the grace state: entered at Fading 5, or whenever your
maximum EP would drop below 5. It lasts until the end of the current act.

At the act's end, a character still in Forgetting becomes *Forgotten* ---
they pass out of their own story. The Forgotten are no longer player
characters: husks wearing half-remembered habits, wandering the Fog or
haunting the places they almost remembered. The word is a setting noun as
much as a state; the Forgotten walk the world, and some of them are
dangerous.

*The only rescue is memory.* Recovering a Question clears all Fading, as
always, and pulls a Forgetting character back from the edge. Communion
cannot save them --- it is an intermission activity, and Forgetting ends
when the act does. The desperate race to reach a memory scene before the
act closes is this module's built-in climax, and the asymmetry is
deliberate.

=== Clearing Fading <clearing-fading>

+ *Recover a Question:* clear *all* marks. Memory is the antidote; the
  recovered self holds.
+ *Communion* (intermission venture): spend an intermission venture dwelling
  with your keepsake, among the living, in remembered places --- clear 1
  mark. See #link(<intermission-ventures>)[_Intermission Ventures_] in the
  GM Guide; a character who spends every intermission tending their soul is
  choosing not to advance their position in the world.
+ *Mastery* (Core Question capstone): immunity to further Fading.

== Tuning the Arc

Both systems in this chapter are dials, not doctrine.

*Amnesia scope.* The count and breadth of Questions is fictional positioning
only. Near-total amnesia (default Ashen) supports four or five wide
Questions; a campaign where each character has lost only a single night
supports one to three narrow ones, with the Core Question living inside the
lost event. Everything downstream --- states, Resonance, Recognition,
recovery, Fading clears --- is invariant.

*Reward weight.* A campaign that wants the arc as pure story can strip the
Legendary Advance rewards down to narrative boons. The Fading-clear on
recovery and the capstone choice are the invariant core; remove those and
the module stops holding weight.

*Distortion.* By default, a recovered memory is true. Tables that want an
unreliable past can rule that fragments may be incomplete or wrong, and that
a later fragment can revise an earlier one. No extra rules are needed:
Resonance and Recognition run on what the character *believes* they remember,
so a planted or corrupted glimpse still grants its bonuses --- until the
truth outs. The setting supports this: there are powers in the world with
reasons to edit what the Deathless remember.

*Fading weight.* Groups wanting a Humanity-style mechanical spiral can add
the optional rules marked in this chapter (the voluntary burn, forced Lapses
at Fading 4+) and additionally impose −1d on Influence and Deceive checks
per mark. This last is deliberately not the default: in the standard game
Fading's costs are universal (EP is everyone's resource) while its
temptations are specific, and a penalty that lands on one archetype alone
makes the bargain read as a punishment. In a campaign where the social
ladder *is* the game, it fits.
