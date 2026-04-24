#import "../../formatting/declarations.typ": *

#chap-header("1", [= Introduction], "What this adventure is about")

== Adventure Summary

_The Mad Alchemist_ is a Tier 1 adventure for the Ashen role-playing game,
designed for a party of four characters and approximately eight sessions of
play. It is written with a first-time Game Master in mind: every mechanical
element is explained, every decision point is flagged, and the structure
rewards preparation without punishing improvisation.

#attention[
  *For the Game Master:* This adventure assumes you have read the core
  rulebook, but it does not assume you have run a game before. Where the
  adventure asks you to make a judgement call, it tells you what factors to
  weigh. Where it presents a skill check, it tells you what the result
  means. Trust the structure, and trust your players.
]

== How to Use This Document

This adventure uses several formatting conventions to help you find
information quickly during play:

#aloud[
  Text in this style is meant to be read aloud or paraphrased to your
  players. It sets a scene, describes what the characters see, or delivers
  an NPC's words. You do not need to read it verbatim --- use it as a
  starting point and make it your own.
]

#note[
  Text in this style is a note for you, the Game Master. It provides
  context, tactical advice, or guidance on how to handle a situation. Your
  players should not see this information unless you choose to share it.
]

#attention[
  Text in this style flags something important --- a common pitfall, a
  design intention you should not undermine, or a moment that requires
  careful handling. Read these before the session in which they appear.
]

Skill checks are noted inline as *Skill DN* (e.g. *Occultism D3*), where
the number is the difficulty. The result of the check --- what information
it yields or what happens on success --- follows immediately.

== Adventure Synopsis

The adventure takes place in and around Keshto Village, a frontier
settlement in Venna Weald clear. People have been disappearing ---
foragers, patrols, travelers between settlements --- and the
disappearances are accelerating. The Never-Still have issued a Black Guard
contract for Deathless willing to investigate.

The party's investigation leads them from the village into the wilds of the
Weald's outskirts, where they discover two sites: a dump site where
soulless corpses have been discarded, and a ritual site where the
extractions are performed. The method is alchemical and scholarly ---
Mortefactor-derived, though twisted beyond what the faction would condone.

Returning to Keshto with this evidence, the party connects with a
Mortefactor tracker who has been quietly hunting the culprit: Šauhahten, a
Mirror expelled from the Most Ancient and Noble Order of Mortefactors for
experimenting on souls. He is attempting to create Prima Materia --- the
pinnacle of alchemy --- by rendering down mortal souls, guided by a voice
in the Fog whose true nature he does not understand.

Armed with the alchemist's identity and the location of his laboratory ---
hidden beneath an ancient Faerie ruin the party may have already visited ---
the party descends into a layered dungeon defended by reanimated victims,
fey illusions, and an alchemical monstrosity. At the heart of it, they
confront Šauhahten himself: calm, articulate, and utterly certain that his
murders are necessary to heal the world.

The party's victory lies in destroying the laboratory and its research,
setting Šauhahten back by years or decades. He cannot be permanently killed
--- he is Deathless, and will reincorporate at his soul anchor. The
adventure ends with a victory and an open threat, ready to seed future
adventures.

== Player Hooks

Why is your character in Keshto Village, answering a Black Guard contract?

- *Never-Still member:* You were sent by the faction leadership. Never-Still
  peacekeepers are among the missing, and there is an old Faerie site nearby
  that the faction considers significant. This is faction business.
- *Free Agent:* You are here for the coin and the reputation. Black Guard
  contracts pay well, and completing one builds your name.
- *Other faction member:* Your faction sent you here for reasons that may not
  be entirely transparent. Perhaps they have heard rumours of Mortefactor
  research being misused. Perhaps they simply want eyes on the situation.

== Session Overview

#pftab(
  "Session Overview",
  columns: (1fr, 2fr, 2fr, 2fr),
  [*Session*], [*Location*], [*Focus*], [*System Lessons*],
  [1--2], [Keshto Village], [Social investigation, gathering leads],
    [Social interaction, skill checks],
  [3--4], [Dump Site, Ritual Site], [Field exploration, crime scene investigation],
    [Exploration, hazards, Fog, first combat],
  [5], [Keshto Village], [Faction politics, assembling the picture],
    [Social negotiation, faction dynamics],
  [6--8], [The Faerie Ruin], [Dungeon, combat, climax],
    [Combat, puzzles, threat assessment, Deathless],
)

== XP and Wealth Budget

#pftab(
  "Expected XP per Character",
  columns: (2fr, 1fr),
  [*Source*], [*XP*],
  [Combat (field encounters)], [15--30],
  [Combat (undead sentries)], [28--42],
  [Combat / bypass (monstrosity)], [25],
  [Combat (Šauhahten)], [60],
  [Mission XP (primary: destroy laboratory)], [100],
  [Mission XP (secondary, optional)], [100],
  [Loot XP (estimated)], [50--100],
  [*Total*], [*378--457*],
)

Over eight sessions, characters should earn roughly 1500--2000 XP total
(including XP from sources not itemised above, such as incidental encounters
and additional loot). Combined with the 1000 XP every character starts with,
this puts the party at approximately 2500--3000 cumulative XP by the end of
the adventure --- ready to begin purchasing Tier 2 advances.

#pftab(
  "Expected Wealth per Character",
  columns: (2fr, 1fr),
  [*Source*], [*Feathers*],
  [Black Guard contract payout], [500--1000],
  [Field site salvage], [100--200],
  [Laboratory salvage], [300--600],
  [*Total income*], [*900--1800*],
  [Maintenance costs (est. 2--3 intermissions)], [200--600],
  [*Net wealth*], [*300--1200*],
)

== NPC Quick Reference

#pftab(
  "NPCs",
  columns: (1.5fr, 1fr, 1.5fr, 2fr, 1fr),
  [*Name*], [*Race*], [*Faction*], [*Role*], [*Location*],
  [Merzaghaal], [Goldenbristle], [Never-Still], [Quest-giver, faction contact], [Keshto],
  [The Town Reeve], [TBD], [---], [Local authority, disappearance records], [Keshto],
  [Surviving Peacekeeper], [TBD], [Never-Still], [Bridge to field exploration], [Keshto],
  [Mortefactor Tracker], [TBD], [Mortefactors], [Faction intel, cipher, tension], [Keshto],
  [Local Who Remembers], [TBD], [---], [Personal details on Šauhahten], [Keshto],
  [Šauhahten], [Mirror], [Ex-Mortefactors], [Villain], [Faerie Ruin],
)
