#import "../../formatting/declarations.typ": *
#import "creatures.typ": *

#chap-header("6", [Appendix], "Reference tables and bestiary")

== Bestiary

All creatures in the adventure, in order of appearance.

=== Soulless Husk

The reanimated bodies of Šauhahten's victims, stripped of their souls and
filled with just enough residual Fog energy to move. They are slow,
relentless, and unsettling. They do not speak, do not retreat, and do not
respond to pain. The six at the dump site wear peacekeeper colors.

#soulless-husk()
#colbreak()

=== Fog-Touched Beast

A predator warped by prolonged Fog exposure, drawn to areas of residual
supernatural energy. Aggressive but not suicidal --- a beast below half
HP flees.

#fog-touched-beast()
#colbreak()

=== Vazhan, Hollow Revenant

Sergeant of the Never-Still watch, Ushtâng's friend, and Šauhahten's one
failed extraction: a fragment of soul remained, and the Fog wove the
residue of the other victims around it. He holds the cave mouth like the
watchman he was, and screams with voices that are not his own.

#hollow-revenant()
#colbreak()

=== The Chimera

The living byproduct of the Prima Materia process --- fused tissue grown
around a cauldron-heart, kept because destroying it would waste the
material. Its wounds close on their own until fire teaches them not to.

#chimera()

=== Alchemical Homunculus

Šauhahten's knee-high laboratory assistants, animated by a droplet of
soul residue each. In peacetime they stir, fetch, and take notes. In
wartime they are ammunition.

#homunculus()

=== Šauhahten, the Mad Alchemist

Mirror, ex-Mortefactor, Deathless. Calm, articulate, and utterly certain
that his murders are arithmetic. He fights to defend the work, not to
kill --- and he does not intend to die here.

#sauhahten()

== Skill Check Reference

#pftab(
  "Skill Checks by Scene",
  columns: (1.4fr, 1.5fr, 0.5fr, 3fr),
  breakable: true,
  [*Scene*],
  [*Skill*],
  [*DC*],
  [*Result*],

  // Scene 1 — Investigation
  [1 --- Keshto],
  [Investigate],
  [2],
  [Disappearance timeline and northeast pattern],
  [1 --- Keshto],
  [Influence],
  [3],
  [Reeve opens up about the toll on the community],
  [1 --- Keshto],
  [Influence],
  [2],
  [Dashek talks; detailed directions (tracking bonus)],
  [1 --- Keshto],
  [Awareness],
  [3],
  [Dashek is carrying guilt, not information],
  [1 --- Keshto],
  [Investigate],
  [3],
  [Find Ibbeh, who remembers the Mirror customer],
  [1 --- Tracking],
  [Awareness],
  [3],
  [Read the terrain (group check stretch)],
  [1 --- Tracking],
  [Investigate],
  [3],
  [Reason out the disposal logic (group check stretch)],
  [1 --- Tracking],
  [Stamina],
  [4],
  [Push through terrain and Fog-headache (stretch)],

  // Scene 2 — Dump Site
  [2 --- Dump Site],
  [Awareness],
  [3],
  [Spot the tarp moving; not surprised by the husks],
  [2 --- Dump Site],
  [Athletics],
  [2],
  [Scramble up to the north ridgeline in 1 square],
  [2 --- Cave],
  [Occultism],
  [3],
  [Souls extracted deliberately --- not a predator],
  [2 --- Cave],
  [Medicine/Alchemy],
  [4],
  [Surgical method; desiccation is a side effect],
  [2 --- Cave],
  [Investigate],
  [3],
  [Months of use; iterated circles; lone perpetrator],
  [2 --- Cave],
  [Ritual/Occultism],
  [3/4],
  [Not necromancy --- scholarly soul-distillation],

  // Scene 3 — Sennakht
  [3 --- Sennakht],
  [Influence],
  [3],
  [Appeal to the victims; she opens up],
  [3 --- Sennakht],
  [Occultism],
  [3],
  [Speak her language; treated as a colleague],
  [3 --- Sennakht],
  [Impose],
  [4],
  [She talks --- flatly, omitting the one-way door],

  // Scene 4 — Threshold
  [4 --- Threshold],
  [Occultism],
  [2],
  [Read the inscription: give the door your death],
  [4 --- Descent],
  [Subterfuge],
  [3],
  [Group check: arrive unannounced, act first],

  // Scene 5 — Laboratory
  [5 --- Laboratory],
  [Occultism],
  [2],
  [The soul vessels hold aware, suffering people],
  [5 --- Laboratory],
  [Athletics],
  [3],
  [Smash the distillation array (2 AP)],
)

== Loot Table

Values are per party, not per character.

#pftab(
  "Loot by Location",
  columns: (2fr, 2fr, 1fr, 2fr),
  breakable: true,
  [*Location*],
  [*Item*],
  [*Value*],
  [*Notes*],

  [Dump Site],
  [Personal effects of victims],
  [50 #feathers],
  [Coins, trinkets, gear --- returning them to Keshto
    is worth more goodwill than feathers],
  [Cave],
  [Crude reagents and glassware],
  [100 #feathers],
  [Extraction byproducts, salvageable],
  [Laboratory],
  [Alchemical equipment],
  [400 #feathers],
  [Destroyed if the distillation array is smashed],
  [Laboratory],
  [Refined reagents],
  [200 #feathers],
  [Destroyed if the stockpile is detonated],
  [Laboratory],
  [Research journals],
  [300 #feathers],
  [Promised to Sennakht? Destroyed? The party chooses],
  [Laboratory],
  [Soul vessels (intact)],
  [---],
  [No sale value. Releasing the souls is its own reward],
  [Laboratory],
  [Šauhahten's personal effects],
  [100 #feathers],
  [Mirror-crafted tools, cipher notes],

  [*Maximum total*],
  [],
  [*1150 #feathers*],
  [Everything intact --- which means the contract's
    primary targets survived],
  [*Typical total*],
  [],
  [*300--600 #feathers*],
  [Array and stockpile destroyed per the mission],
)

== XP Summary

#pftab(
  "XP per Character",
  columns: (2fr, 1fr, 2fr),
  [*Source*],
  [*XP*],
  [*Notes*],

  [Soulless Husks (×6)],
  [42],
  [Scene 2, 7 each],
  [Fog-Touched Beasts (×2)],
  [30],
  [Scene 2, 15 each],
  [Vazhan, Hollow Revenant],
  [30],
  [Scene 2 mini-boss],
  [The Chimera],
  [30],
  [Scene 5],
  [Alchemical Homunculi (×4)],
  [28],
  [Scene 5, 7 each],
  [Šauhahten],
  [60],
  [Scene 5 --- awarded in full when he flees],
  [Mission: fulfil the contract],
  [100],
  [Array and stockpile destroyed],
  [Loot XP],
  [30--60],
  [1 XP per 10 #feathers recovered],
  [*Total*],
  [*350--380*],
  [*Per character*],
)

== Clue Safety Net

The adventure needs the party to learn three things. None of them can be
lost to bad dice:

+ *Something is extracting souls, northeast.* Dashek's directions are
  given freely; the dump site delivers the rest on sight.
+ *The method belongs to a scholarly order.* The notebook page behind
  the distillation rig is found without a check; Merzaghaal makes the
  Mortefactor connection and points to Sennakht.
+ *The lair is under the shrine, and the door takes a death.* Sennakht
  provides both once persuaded --- and if the party never wins her over,
  Merzaghaal's faction channels produce the name and the place overnight,
  leaving only the door's secret to be learned the hard way at the
  threshold (Kalariyar feels it; the inscription spells it out at
  *Occultism D2*).

== Open Threads

Deliberately unresolved, for whoever runs the next session:

=== Šauhahten Will Return
He escaped with his knowledge and his conviction intact and his life's
work in ashes. He will start over --- somewhere else, with better
security, and with a list of names. Whether he seeks the party out or
simply resumes elsewhere sets the tone of the next arc.

=== The Patron in the Fog
Šauhahten was guided by a voice in the Fog --- an intelligence that
offered knowledge and encouragement. It is not what he thinks it is. It
benefits from souls being rendered down. Beyond that, the GM decides: a
dead god's echo, a Faerie parasite, a Fog-born intelligence, or something
else entirely.

=== Sennakht and the Doors
She knows more about the Deep Court seals than she said, and she asked
Kalariyar to bring her rubbings of other doors. A retired Lector with two
hundred years of guilt makes an excellent patron --- or an excellent
tragedy.

=== The Research
If the journals survived, someone now holds detailed notes on Prima
Materia extraction --- Sennakht, the Order, or the party's packs. If they
burned, the knowledge lives only in Šauhahten's memory. Either way, the
Perfectors have told Pâhâk to keep watching.
