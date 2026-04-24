#import "../../formatting/declarations.typ": *
#import "creatures.typ": *

#chap-header("6", [= Appendix], "Reference tables and bestiary")

== Bestiary

The following stat blocks are for recurring or generic creatures encountered
during the adventure. Unique creatures (the Alchemical Monstrosity and
Šauhahten) have their stat blocks in the Faerie Ruin chapter where they
appear.

=== Fog-Touched Beast

A predator warped by prolonged Fog exposure. These creatures are found near
the Fog boundary in the Weald's outskirts, drawn to areas of residual
supernatural energy. They are aggressive but not suicidal --- they flee if
reduced below half HP.

#fog-touched-beast()

=== Soulless Husk

The reanimated bodies of Šauhahten's victims, stripped of their souls and
bound into mindless servitude. They are slow, relentless, and unsettling.
They do not speak, do not retreat, and do not respond to pain.

#soulless-husk()

== Skill Check Reference

#pftab(
  "Skill Checks by Location",
  columns: (1.5fr, 1.5fr, 0.5fr, 3fr),
  breakable: true,
  [*Location*], [*Skill*], [*DC*], [*Result*],

  // Keshto Village — Phase 1
  [Keshto (Phase 1)], [Investigate], [2],
    [Disappearance timeline and geographic pattern],
  [Keshto (Phase 1)], [Influence], [3],
    [Reeve opens up about personal toll on community],
  [Keshto (Phase 1)], [Influence], [2],
    [Peacekeeper talks about what happened],
  [Keshto (Phase 1)], [Awareness], [3],
    [Peacekeeper is holding back emotion (not info)],
  [Keshto (Phase 1)], [Occultism], [5],
    [Faerie resonance unusually preserved (flavour)],
  [Keshto (Phase 1)], [Investigate], [6],
    [Someone has visited the shrine recently (very hard)],
  [Keshto (Phase 1)], [Investigate], [3],
    [Find the local who remembers Šauhahten],

  // Dump Site
  [Dump Site], [Occultism], [3],
    [Souls have been extracted from the bodies],
  [Dump Site], [Medicine/Alchemy], [4],
    [No conventional violence; desiccation from soul removal],
  [Dump Site], [Investigate], [3],
    [Methodical disposal; bodies brought post-mortem],
  [Dump Site], [Awareness], [4],
    [Trail leading to the ritual site],

  // Ritual Site
  [Ritual Site], [Alchemy], [4],
    [Sophisticated extraction process, disciplined technique],
  [Ritual Site], [Occultism], [4],
    [Soul extraction, not necromancy],
  [Ritual Site], [Investigate], [3],
    [Repeated use, iterating process, volume matches missing],
  [Ritual Site], [Awareness], [3],
    [Trail to dump site; second trail goes cold],
  [Ritual Site], [Occultism/Alchemy], [5],
    [Technique is Mortefactor-derived (pivotal clue)],

  // Keshto Village — Phase 3
  [Keshto (Phase 3)], [Influence], [3],
    [Merzaghaal shares faction intel],
  [Keshto (Phase 3)], [Awareness], [4],
    [Tracker has his own agenda],
  [Keshto (Phase 3)], [Influence], [4],
    [Negotiate terms with the tracker],
  [Keshto (Phase 3)], [Investigate], [2],
    [Find the local who remembers (reduced DC with description)],

  // Faerie Ruin
  [Faerie Ruin], [Occultism], [4],
    [Open entrance with tracker's cipher],
  [Faerie Ruin], [Occultism], [6],
    [Open entrance without cipher],
  [Faerie Ruin], [Awareness], [2],
    [Recognise undead as dump site victims],
  [Faerie Ruin], [Occultism], [4],
    [See through Faerie illusion (per stretch)],
  [Faerie Ruin], [Awareness], [5],
    [Notice spatial inconsistency (per stretch)],
  [Faerie Ruin], [Investigate], [4],
    [Map and logic through illusions (per stretch)],
  [Faerie Ruin], [Athletics], [4],
    [Collapse pillar onto monstrosity],
  [Faerie Ruin], [Occultism], [4],
    [Reactivate Faerie ward (D2 with cipher)],
  [Faerie Ruin], [Athletics], [3],
    [Squeeze through narrow passage (Large only)],
  [Faerie Ruin], [Occultism], [2],
    [Recognise soul vessels contain aware, suffering people],
  [Faerie Ruin], [Athletics], [3],
    [Smash the distillation array],
)

== Loot Table

Values are per party, not per character. The party divides loot as they
see fit.

#pftab(
  "Loot by Location",
  columns: (2fr, 2fr, 1fr, 2fr),
  breakable: true,
  [*Location*], [*Item*], [*Value*], [*Notes*],

  // Field Sites
  [Dump Site], [Personal effects of victims], [50 #feathers],
    [Coins, trinkets, equipment from the missing],
  [Ritual Site], [Alchemical reagents (crude)], [100 #feathers],
    [Leftover extraction byproducts, salvageable],
  [Ritual Site], [Glassware and apparatus], [150 #feathers],
    [Too heavy to carry all; party chooses what to take],

  // Laboratory — depends on alert level and combat destruction
  [Laboratory], [Alchemical equipment], [400 #feathers],
    [Destroyed if distillation array smashed],
  [Laboratory], [Refined reagents], [200 #feathers],
    [Destroyed if reagent stockpile detonated],
  [Laboratory], [Research journals], [300 #feathers],
    [Tracker claims if recovered; destroyed if burned],
  [Laboratory], [Soul vessels (intact)], [---],
    [No sale value. Releasing the souls is its own reward],
  [Laboratory], [Šauhahten's personal effects], [100 #feathers],
    [Mirror-crafted items, alchemical tools, cipher notes],

  // Totals
  [*Maximum total*], [], [*1300 #feathers*],
    [Everything intact, nothing destroyed],
  [*Minimum total*], [], [*200 #feathers*],
    [Loud alert, all targets destroyed in combat],
  [*Typical total*], [], [*600--900 #feathers*],
    [Moderate alert, some destruction],
)

== XP Summary

#pftab(
  "XP per Character",
  columns: (2fr, 1fr, 2fr),
  [*Source*], [*XP*], [*Notes*],

  [Fog-Touched Beasts (×2)], [30], [Field encounter, 15 each],
  [Soulless Husks (×4)], [28], [Laboratory Layer 2, 7 each],
  [Alchemical Monstrosity], [25], [Fought or bypassed],
  [Šauhahten], [60], [Laboratory Layer 5],
  [Mission: destroy laboratory], [100], [Primary objective],
  [Mission: secondary (optional)], [100],
    [E.g. recover research, confirm patron's existence],
  [Loot XP], [20--90], [1 XP per 10#feathers recovered],
  [*Total from adventure*], [*363--433*], [*Per character*],
)

#note[
  This table covers only XP sources explicitly detailed in the adventure.
  Over eight sessions, characters will also earn XP from incidental
  encounters, additional loot, and GM-awarded story milestones. The
  expected total per character over the full adventure is 1500--2000 XP.
]

== Clue Flowchart

The investigation has four threads that build toward the climax. The
following shows which clues are mandatory (the adventure cannot proceed
without them) and which are optional (they enrich the picture but are not
required).

=== Thread 1: The Facts
- *Source:* Town Reeve, peacekeeper, Merzaghaal
- *Key information:* People are disappearing. Northeast. Accelerating.
- *Status:* Mandatory. The party receives this without checks.

=== Thread 2: The What
- *Source:* Dump site, ritual site
- *Key information:* Souls are being extracted. The method is alchemical.
- *Status:* Mandatory. Requires visiting at least one field site.
- *Fallback:* If the party visits neither site, Merzaghaal sends another
  search party that finds the dump site and reports back.

=== Thread 3: The Who
- *Source:* Ritual site (Mortefactor-derived technique) → Mortefactor
  Tracker → Šauhahten's identity
- *Key information:* A Mirror ex-Mortefactor named Šauhahten.
- *Status:* Mandatory. Requires the Mortefactor connection.
- *Fallback:* If the party cannot make the Occultism/Alchemy D5 check at
  the ritual site, provide the Mortefactor clue through alternative means
  (see the Ritual Site chapter).

=== Thread 4: The Where
- *Source:* Tracker's knowledge of Prima Materia requirements + the Faerie
  site's characteristics. Optionally confirmed by the local who remembers
  (supply routes pointing northeast toward the shrine).
- *Key information:* The laboratory is beneath the Faerie shrine.
- *Status:* Mandatory. The tracker provides this if the party cannot deduce
  it themselves.

== Open Threads

The following plot threads are deliberately left unresolved at the end of
the adventure. They are hooks for future adventures, to be developed by the
GM as they see fit.

=== Šauhahten Will Return
He is Deathless. He will reincorporate at his soul anchor in a matter of
days. The laboratory is destroyed, but his knowledge is intact. He will
start over --- somewhere else, with better security, and with a grudge.
Whether he targets the party specifically or simply resumes his work
elsewhere depends on the tone the GM wants for the campaign.

=== The Patron in the Fog
Šauhahten was guided by a voice in the Fog --- an intelligence that offered
knowledge and encouragement. The adventure deliberately leaves the patron's
nature undefined. It is not what Šauhahten thinks it is. It benefits from
souls being rendered down. Beyond that, the GM decides: a dead god's echo,
a Faerie parasite, a Fog-born intelligence, or something else entirely.

=== The Mortefactor Favour
If the party accepted the tracker's help opening the laboratory entrance,
they owe the Mortefactors a favour. The nature of this favour is
unspecified --- the Mortefactors will call it in when it serves them. This
is a faction hook: it ties the party into the politics of the Most Ancient
and Noble Order, for better or worse.

=== The Research
If the research journals survived, the Mortefactors now possess detailed
notes on Prima Materia extraction. Whether they secure this knowledge
responsibly or whether it creates problems of its own is a question for
future adventures. If the research was destroyed, the knowledge died with
the journals --- but Šauhahten still remembers.
