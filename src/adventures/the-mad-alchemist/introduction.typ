#import "../../formatting/declarations.typ": *

#chap-header("1", [Introduction], "What this adventure is and how to run it")

== Adventure Summary

_The Mad Alchemist_ is a *learn-to-play adventure* for the Ashen
role-playing game: a single session of three and a half to four hours,
designed for a table of new players using the seven pregenerated
characters from the player packet. Every scene introduces one part of the
system, in play, at the moment the players need it --- no rules lecture
required.

The structure follows the five-room dungeon model adapted for teaching:
an easy skills scene, a fun first fight, a roleplay scene, a showcase of
the system's signature mechanic, and a climactic battle. Each scene's
chapter opens with the *system lesson* it carries and the *time budget*
it should stay inside.

#attention[
  *For the Game Master:* This adventure assumes you have read the core
  rulebook, but it does not assume you have run a game before. Where the
  adventure asks you to make a judgement call, it tells you what factors
  to weigh. Where it presents a skill check, it tells you what the result
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
  careful handling. Read these before the session.
]

Skill checks are noted inline as *Skill DN* (e.g. *Occultism D3*), where
the number is the difficulty. The result of the check --- what information
it yields or what happens on success --- follows immediately.

== Adventure Synopsis

People are disappearing from the outskirts of Keshto Village --- foragers,
travelers, and now Never-Still peacekeepers sent to investigate. The
Never-Still have posted a Black Guard contract, and Merzaghaal, their
agent in Keshto, briefs the party (*Scene 0*).

The party follows the trail of the disappearances northeast into the
thinning Weald (*Scene 1*) and finds the ravine where the perpetrator
dumps his victims: desiccated bodies, emptied of their souls by
methodical, scholarly alchemy. The dead do not stay still --- reanimated
peacekeepers and Fog-drawn beasts attack, led by something that used to
be a sergeant of the watch (*Scene 2*).

Evidence in hand, the party returns to Keshto, where Merzaghaal points
them to Sennakht, a reclusive ex-Mortefactor. If they can persuade her to
talk (*Scene 3*), she names the culprit --- Šauhahten, a Mirror expelled
from the Most Ancient and Noble Order of Mortefactors for experimenting
on souls --- and shares the secret of the old fey shrine he has made his
lair beneath: _the door opens only for the dead_.

At the shrine (*Scene 4*), the party pays the threshold's price --- a
Deathless character must die to open the way, and rises again by the
grace of the Essence that makes the Deathless what they are. Below, in a
laboratory of glass and stolen souls (*Scene 5*), they confront Šauhahten
himself: calm, articulate, and utterly certain that his murders are
necessary to heal the world. He fights beside his Chimera and his
homunculi until his work is lost --- then vanishes through a silvered
mirror, beaten but not finished.

The contract is fulfilled. The victims are avenged. And somewhere in the
Fog, the Mad Alchemist begins again (*Epilogue*).

== The Five Rooms

Each scene teaches one thing. Introduce rules only when the scene needs
them; the character profiles in the player packet carry the rest.

#pftab(
  "Scenes and System Lessons",
  columns: (0.8fr, 1.8fr, 2.6fr),
  [*Scene*],
  [*What Happens*],
  [*What It Teaches*],
  [0],
  [Merzaghaal's briefing],
  [Who the characters are; how to talk to an NPC],
  [1],
  [Investigation and tracking],
  [Skill checks, group checks, preparation paying off],
  [2],
  [Fight at the dump site],
  [Initiative, AP, attacks, conditions, terrain],
  [3],
  [Persuading the recluse],
  [Social play; more than one approach works],
  [4],
  [The threshold sacrifice],
  [Death, spot-revival, and Essence Points --- the
    signature mechanic, demonstrated safely],
  [5],
  [Šauhahten's laboratory],
  [Powers and FP under pressure; objectives beyond
    "kill everything"],
)

== Pacing for Seven Players

The session budget below totals about 3 hours 40 minutes plus a break.
The two combats are the immovable objects; everything else flexes around
them.

#pftab(
  "Session Clock",
  columns: (2.2fr, 1fr, 1.2fr),
  [*Scene*],
  [*Budget*],
  [*Clock (elapsed)*],
  [Scene 0 --- The Briefing],
  [15 min],
  [0:15],
  [Scene 1 --- The Investigation],
  [30 min],
  [0:45],
  [Scene 2 --- Fight at the Dump Site],
  [65 min],
  [1:50],
  [_Break_],
  [10 min],
  [2:00],
  [Scene 3 --- The Recluse],
  [25 min],
  [2:25],
  [Scene 4 --- The Threshold],
  [15 min],
  [2:40],
  [Scene 5 --- The Laboratory],
  [65 min],
  [3:45],
  [Epilogue],
  [10 min],
  [3:55],
)

#attention[
  *Checkpoints and cuts.* If you are not rolling initiative at the dump
  site by the one-hour mark, stop calling for checks and hand the party
  the trail. If Scene 2 runs long, compress Scene 3: Sennakht names her
  price immediately (the journals) and one good roll seals the deal. If
  you reach Scene 5 with less than an hour left, drop two homunculi and
  trigger The Vanishing the moment Šauhahten drops below half HP.

  *Speeding up seven-player combat:*
  - Enemies act in groups: all husks on one initiative count, both beasts
    on another, named creatures on their own.
  - Ask each player to plan their turn while the previous one resolves.
    Every character profile ends with a scripted opening move --- point
    new players at it.
  - Minions die to almost any hit. Do not track their HP precisely;
    track how many are left.
  - Call the round order out loud so people know when they are "on deck."
]

== The Characters

The adventure assumes the seven pregenerated characters from the player
packet. Each of them has a personal stake in this contract, and each has
a scene where their sheet gets to shine. If a character is not in play,
their spotlight beats simply go unused --- nothing breaks.

#float[
  #floating-table(
  "Spotlight Map",
  columns: (1fr, 2fr, 2.6fr),
  [*Character*],
  [*Stake*],
  [*Spotlight Moments*],
  [Ushtâng],
  [Vazhan, a vanished peacekeeper, was his friend],
  [Scene 2: faces what Vazhan has become],
  [Zamazaha],
  [A free agent, here for the contract],
  [Scenes 2 & 5: duels the revenant and the Chimera],
  [Pâhâk],
  [Vague Perfector orders about the disappearances],
  [Scene 4: Electroception senses the machinery below;
    covering fire everywhere],
  [Kalariyar],
  [The fey sites might hold their lost memories],
  [Scene 1: best tracker; Scene 3: Sennakht knows what
    a Shade is; Scene 4: the door "remembers" them],
  [Wishanya],
  [Wants the practitioner's notes],
  [Scene 2: reads the alchemy; Scene 5: fire stops the
    Chimera's regeneration],
  [Kho Prea],
  [Sent because the Clear is thinning],
  [Scene 1: investigation; Scene 4: understands the
    ritual; healing in both fights],
  [Mbazân],
  [Lost patrols are his business],
  [Scenes 0, 1 & 3: the party's voice; command powers
    in both fights],
)]

== NPC Quick Reference

#pftab(
  "NPCs",
  columns: (1.4fr, 1.2fr, 1.4fr, 2.2fr),
  [*Name*],
  [*Race*],
  [*Faction*],
  [*Role*],
  [Merzaghaal],
  [Goldenbristle],
  [Never-Still],
  [Quest-giver, faction contact],
  [Reeve Ottavan],
  [Human],
  [---],
  [Local authority, disappearance records],
  [Dashek],
  [Human],
  [Never-Still],
  [Surviving peacekeeper, points to the field],
  [Vazhan],
  [Human (dead)],
  [Never-Still],
  [Ushtâng's friend; rises as the Hollow Revenant],
  [Sennakht],
  [Human (Deathless)],
  [Mortefactors (retired)],
  [Recluse; knows Šauhahten and the fey door],
  [Šauhahten],
  [Mirror],
  [Ex-Mortefactors],
  [Villain],
)

#colbreak()

== XP and Wealth

A single-session award, tallied at the end. With the mission bonus and
loot, each character finishes with roughly 350 XP toward their next
advances --- a concrete "here is what playing on looks like" hook.

#pftab(
  "Expected XP per Character",
  columns: (2fr, 1fr),
  [*Source*],
  [*XP*],
  [Scene 2 combat (husks, beasts, revenant)],
  [102],
  [Scene 5 combat (Šauhahten, Chimera, homunculi)],
  [118],
  [Mission XP (fulfil the contract)],
  [100],
  [Loot XP (estimated)],
  [30--60],
  [*Total*],
  [*350--380*],
)

The Black Guard contract pays *700 #feathers* to the party on completion,
plus whatever they salvage from the laboratory (see the Loot Table in the
Appendix).

#pagebreak()

#chap-header("1",[Scene 0: The Briefing], "")

*Time budget: 15 minutes. Lesson: who the characters are, and how
talking to an NPC works.*

The adventure begins in Keshto Village, a frontier settlement in the
Venna Weald clear, at the village's only inn, where Merzaghaal has
gathered everyone who answered the contract.

#flavor[
  Keshto is small and practical --- a cluster of stone and timber buildings
  around a market square, ringed by a low wall that marks the boundary
  between settlement and wilderness. The Weald presses close on all sides,
  ancient forest visible over the rooftops. The air smells of woodsmoke
  and rain.
]

#note[
  *Before the briefing:* go around the table and have each player
  introduce their character in a sentence or two --- name, what they look
  like, why they answered the contract (each profile's "Who You Are"
  section answers this). With seven players this is the cheapest way to
  make the table feel like a party, and it hands you their hooks to call
  back to later. Keep it brisk: one minute each.
]

== Merzaghaal's Briefing

#aloud[
  The Goldenbristle leans forward across the table, his bristled mane
  catching the lamplight. He speaks carefully, as if weighing each word
  against the cost of saying it.

  "Thank you for coming. I will be direct. Over the past three months,
  eleven people have gone missing from the outskirts of this settlement.
  Six civilians --- foragers, a trapper, a courier. Five of our
  peacekeepers, sent to investigate. None have returned. No bodies have
  been recovered.

  "The disappearances cluster along the northeastern routes, where the
  Weald thins and the Fog gets thicker. They are accelerating --- three in
  the last two weeks alone.

  "Your job is to find out what is taking these people and put a stop to
  it. Speak to Reeve Ottavan --- she keeps the records. Speak to Dashek ---
  he is the only one who came back. And then follow whatever you find.
  Payment on completion: seven hundred feathers."
]

=== Merzaghaal

- *Race:* Goldenbristle (Sootbeast)
- *Faction:* Never-Still (mid-level agent)
- *Personality:* Competent, professional, dry. Cares about this as a
  faction matter first, a humanitarian crisis second. Not callous ---
  simply prioritised. He will be frustrated if the party wastes time.
- *What he knows:* The timeline and geography of the disappearances. That
  the peacekeepers who were sent were competent and should not have simply
  vanished. That there is an old fey shrine northeast of Keshto the
  Never-Still consider significant --- though he has no reason yet to
  connect it to the case.
- *What he can provide:* Introductions to the reeve and to Dashek, access
  to Never-Still records and supplies, and a sounding board when the party
  returns with new information.

#note[
  Merzaghaal is the party's anchor NPC. He does not go into the field, but
  he is always available in Keshto to discuss findings and broker
  introductions. If the party is ever stuck, he can suggest the next
  step --- but he should not solve their problems for them.

  If Mbazân is in play, Merzaghaal knows him by reputation --- a fellow
  Goldenbristle officer of the Never-Still --- and addresses him as a
  colleague. Let that player field the briefing questions.
]
