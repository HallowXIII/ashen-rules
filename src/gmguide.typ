#import "declarations.typ": *

#chap-header("10", [= GM Guide], "How to run the game")

The preceding chapters describe the rules from the player's perspective: how
checks work, how combat flows, what powers and equipment do. This section
addresses the other side of the table. It covers what you are expected to do as
the Game Master, where Ashen's assumptions diverge from those of other systems,
and which parts of the rules are structural and which are adjustable.

=== The GM's Role

Your role has three parts. First, you control the world: you describe what the
characters see, voice the people they meet, and determine the consequences of
their actions. The players' choices drive the narrative; your job is to present
situations and let the outcomes follow.

Second, you are the arbiter of checks. The core principle is simple: if both
success and failure would lead somewhere interesting, call for a roll. If only
one outcome matters---the door is obviously unlocked, the cliff is obviously
fatal---skip the roll and let it happen. A check exists to introduce uncertainty
where uncertainty matters, not to gate routine actions behind randomness.

Third, you track the clocks. Ashen's tension comes from parallel timelines: the
players are working toward their objective while the world advances its own
agenda. Patrols continue their routes. Rituals approach completion. The Fog
rolls in. When you advance these clocks faithfully, the players can feel the
pressure of time and make their best decisions without you having to manufacture
urgency on the fly.

=== What Ashen Does Differently

If you have run other tabletop RPGs, some of Ashen's core assumptions will feel
unfamiliar. The following points describe how the system is built and where it
differs from common conventions. Understanding them early will save you from
surprises at the table.

*Death is not a stake.* Player characters are Deathless. When they are killed,
they can spend 5 Essence Points to revive on their next turn, or their essence
travels to their soul anchor and they reincorporate over three to seven days.
This means that "you might die" is not the threat that keeps a scene tense. The
real threats are mission failure, Essence depletion, the death of mortal allies,
territory lost while the party is absent, and---most importantly---the
advancement of your clocks. A party that dies in a ruin forty miles from their
objective does not lose their characters. They lose days of travel while the
opposition completes its plan unopposed. The most effective tension in Ashen
comes from consequences---mission failure, resource depletion, the world
changing while the party is absent---rather than from the threat of death
itself.

#attention[Essence Points are the true survival resource. Every death costs 5 EP
from a pool that recovers only 3 per long rest, so two deaths in a single act
is a serious resource drain that will shape the rest of the adventure. This is
what gives death its weight in Ashen: not the loss of a character, but the
steady erosion of a party's ability to keep going.]

*Action economy is the balance lever.* Every creature in Ashen---player
characters and enemies alike---receives 4 AP per turn. A party of four
characters generates 16 AP per round. A solo enemy with 4 AP will be
overwhelmed regardless of its raw statistics. This is the single most important
principle of encounter design: if the players outnumber the opposition in total
AP, the opposition must compensate with Legendary Actions, area effects, or
expendable allies. The Designing Creatures section covers this in detail.

*Tier is not level.* There is no moment where the GM announces "you are now Tier
3." Tier is an emergent property of cumulative XP spent on advances. Characters
within the same party may sit at different tiers if they have spent their XP
differently. As the GM, track approximate party power by comparing cumulative XP
against the tier threshold table in the Progression and Rewards section, and use
that to calibrate encounters and rewards.

*Item-based progression matters.* A character's effectiveness in combat is
roughly half statistics and advances, half equipment. A party whose gear lags
behind their tier will underperform noticeably---a party that is Tier 3 by XP
but still carrying Tier 1 weapons will struggle against standard Tier 3
opposition. Keeping
equipment in step with character advancement is one of the GM's ongoing
responsibilities, managed through mission pay and loot placement. The
Progression and Rewards section provides benchmarks to help with this.

*The three magic traditions work differently.* Arcane casters learn spells from
external sources: scrolls, spellbooks, and other casters. If your party includes
an Arcane caster and you never place spell loot, that character's power stalls.
Divine casters draw prayers from reliquaries, which you control: the reliquaries
you place in the world determine which prayers are available and when. Psychic
casters are self-contained---they learn powers through advances and need no
external support. This asymmetry is intentional, and it means the GM plays a
direct role in those characters' progression: placing spell loot for the Arcane
caster and designing reliquaries thoughtfully for the Divine caster are part of
adventure preparation.

*Stretches are load-bearing.* The stretch system---five-minute ticks of parallel
action---is Ashen's primary tool for non-combat tension. Infiltration,
exploration, chases, heists, and social pressure all run in stretches. They
provide a mechanical backbone for scenes that in other systems would be
freeform narration or would collapse directly into combat rounds. The Pacing
and Time section that follows covers stretches in detail.

=== Difficulty and the Dice

The Ashen dice pool produces an average of one-half success per die. A character
rolling 8 dice expects about 4 successes; a character rolling 12 dice expects
about 6. This average is exact---each d6 contributes an expected value of 0.5
successes (a one-in-six chance of --1, two-in-six of 0, two-in-six of +1, and
one-in-six of +2).

The key rule for setting difficulties is that *one level of difficulty equals two
dice*. A character with a pool of 7 will pass a difficulty 4 check about half
the time. Add two dice to the pool and the 50% mark moves up by one. The Skills
chapter includes a full probability table; the following is a condensed
reference for use at the table.

#pftab(
  "Success Chances by Pool Size",
  columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  stroke: 0.5pt,

  [*Pool Size*], [< 10%], [\~25%], [50%], [\~75%], [> 90%],
  [3d],  [5], [3], [2], [1], [---],
  [5d],  [6], [5], [3], [1], [0],
  [7d],  [8], [6], [4], [2], [0],
  [9d],  [9], [7], [5], [3], [1],
  [11d], [11], [8], [6], [4], [1],
  [13d], [12], [9], [7], [5], [2],
  [15d], [13], [10], [8], [6], [3],
  [17d], [15], [12], [9], [6], [3],
  [19d], [16], [13], [10], [7], [4],
)

Read the table by finding the column closest to the pass rate you want and
the row matching the character's pool. The cell gives the difficulty. For
example, if a skilled character (pool 9) should succeed about three-quarters of
the time, set the difficulty to 3. If you want the same task to be a true test,
set it to 5 (50%) or 7 (roughly one in four).

Notice how narrow the margins are. The difference between a 50% and a 25% chance
of success is often only one or two points of difficulty---and even a character
rolling well above the target has a real chance of failure, because the variance
on Ashen dice is high. This is by design, but it has a practical consequence:
any check where failure ends the adventure is a gamble you will eventually lose.
A "pass this check or the mission fails" gate has a substantial chance of
blowing up your session regardless of how skilled the character is. Design your
adventures with margin for recovery. Failure on a check should make the
situation harder, costlier, or more dangerous---not terminal. If the party
absolutely must cross the chasm, the question is not whether they cross it but
what it costs them to do so.

Bonuses and penalties modify the pool, not the difficulty. A --2d penalty is
devastating for a 4d character but barely noticeable for a 12d specialist. When
you set a difficulty, you are defining how hard the task is in absolute terms.
The character's pool, including all bonuses and penalties from equipment,
conditions, and circumstances, defines how well-suited they are to attempt it.

#note[A check should only be called when both success and failure lead somewhere
interesting. "You fall to your death" is not an interesting failure for
Deathless characters---they revive and climb again, and you have wasted
everyone's time on a roll that changed nothing. "The bridge collapses behind you
and you cannot retreat" is an interesting failure: the party is now committed to
whatever lies ahead, and the tactical landscape has changed.]

=== Flexible and Load-Bearing Rules

Not every rule in Ashen carries the same structural weight. Some are calibrated
to interlock with other systems and will produce cascading problems if changed.
Others are designed to be adjusted. This section provides a map.

==== Load-Bearing

These interlock tightly with other systems. Changing them is possible, but expect
to adjust downstream mechanics as well.

- *4 AP per turn.* The entire action economy---power costs, multi-attack
  structures, Legendary Actions, and creature design guidelines---is calibrated
  to 4 AP. Increasing or decreasing it changes the relative value of every
  action in the game.
- *The dice mechanic.* The d6 pool with its 4+/6/1 probability distribution is
  baked into every difficulty number, every creature stat line, and every power
  design. Changing it invalidates all published numbers.
- *Essence Point economy.* The 5 EP revival cost, the 3 EP per long rest
  recovery rate, and the 1 EP per 1000 XP progression are what make death
  meaningful despite Deathless immortality. Lowering the revival cost makes
  death trivial; raising the recovery rate does the same more slowly.
- *Tier thresholds and equipment availability.* The transition at Tier 5 from
  "commercially available" to "quest for it" is an intentional design gate. It
  forces the campaign's tone to shift at high tiers and prevents characters from
  simply buying their way to peak power.
- *Equipment maintenance during intermissions.* The 10% cost-of-ownership rule
  is the wealth treadmill that prevents hoarding. Without it, the party
  accumulates wealth faster than intended and tier-appropriate gear loses its
  significance as a reward.

==== Adjustable with Care

These are explicitly designed as dials. Each one changes the feel of the game in
a predictable way.

- *Mission XP.* This is the easiest pacing lever. Raise it to accelerate tier
  progression, lower it to slow things down. The expected session XP table in
  Progression and Rewards gives you the baseline; deviate from it deliberately,
  not accidentally.
- *Combats per session.* The default assumption is two to three fights per act.
  Fewer combats means slower XP gain from kills; compensate by raising mission
  XP if you do not want tier progression to stall.
- *Fog density and encounter rates.* A campaign set mostly in the Clears plays
  as civilized politics and intrigue. A campaign deep in the Dense Fog plays as
  desperate survival. Both are valid, but they produce very different games.
  Choose deliberately.
- *Initiative frequency.* Rolling initiative once per encounter versus once per
  act is already presented as a dial in the Pacing and Time section. The former
  gives more variety; the latter gives faster play.
- *Reincorporation timer.* Three to seven days is the default. A shorter timer
  reduces the cost of death; a longer one increases it. Adjust this if the
  campaign's geography makes the default trivial or punishing.

==== Fully Flexible

These can be changed freely without mechanical consequence.

- Which factions exist and how they interact.
- The truth of the Last War---it is deliberately left blank.
- Which reliquaries exist and which prayers they grant.
- Specific geography, settlement names, and NPC identities.
- The number and identity of active deities.

=== Using a Different Setting

Ashen's rules do not require its default setting, but they assume that certain
things exist in whatever world you use. If you are bringing your own setting to
the table, the following is what the mechanics need you to provide.

*An immortality mechanic and its cost.* The Essence Point economy is deeply
embedded. EP spending drives rest pacing, determines how punishing death is, and
gates long-term resource management. Your setting needs a reason characters come
back from death and a finite resource they spend to do it. The names are
cosmetic---call it soul energy, anima, life force---but the 5-point revival
cost, the 3-per-long-rest recovery rate, and the soul-anchor reincorporation
mechanic are all load-bearing math. Without them, the death and rest systems
lose their shape.

*A pervasive environmental hazard.* The Fog is not flavour. Navigation rules,
equipment reliability, creature spawning, and the entire Exploration chapter are
built on four density bands (Clear, Light, Dense, Extreme) with escalating
mechanical consequences. Your setting needs an equivalent: a graduated,
world-spanning threat that makes travel dangerous, gates where advanced
technology functions reliably, and provides a source of ambient energy. It could
be radiation, a magical plague, an unstable ley-line network, or a literal
cursed weather system---but the four-band model and its downstream effects on
equipment, creatures, and exploration need analogs.

*Advanced technology powered by the hazard.* The equipment chapter assumes
ranged weapons, vehicles, and certain armour materials are produced using a
technology base that draws power from the environmental hazard. If your
hazard-equivalent is radiation, your technology-equivalent might be atomic-age
devices. The structural dependency is twofold: equipment tiers assume some gear
is manufactured at a technological level above medieval craftsmanship, and that
technology's reliability is gated by the environmental hazard's intensity.

*Divine conduits with a trust economy.* Divine casting is built around
reliquaries---physical objects that mediate between the caster and a divine
source, with a Will and Favor economy. Your setting needs something equivalent,
even if you call them holy symbols, spirit bonds, or divine contracts. The
mechanical core---earn trust through use, spend trust to enhance prayers, lose
trust on critical failure---is structural to the balance of divine casting.

*Nine thematic domains.* Prayers and high-tier rituals are organized into nine
aspects. You can rename them freely (Ash becomes Destruction, Crown becomes
Order, Scarab becomes Rebirth), but you need nine thematic categories, because
reliquaries grant access by category, prayers are sorted by category, and ritual
influence requirements at Tier 4 and above reference categories by name.
Reducing the number collapses prayer variety; increasing it dilutes reliquary
identity.

*Three distinct magic traditions.* Arcane magic (prepared from external sources,
catalyst-dependent), Divine magic (reliquary-granted, aspect-gated), and Psychic
magic (innate, with Cosmic Backlash on critical failure) have different
acquisition paths, different casting implements, and different failure modes. You
cannot collapse them into two traditions or a single unified system without
redesigning the critical failure table, the advance tree, and the equipment
chapter.

*Hazard-spawned creatures.* The Fog Effects tables and exploration encounter
system assume creatures that emerge from the environmental hazard. Your
equivalent hazard needs its own creature ecology---things that live in the
hazard, grow more dangerous as the hazard intensifies, and give the party a
reason to fear the wilderness.

What you can reskin freely, with no mechanical consequences: the name of the
currency, faction names and allegiances, geographic names and settlement
details, deity names in prayer flavour text, and the specific names of the nine
aspects so long as the nine-category structure is preserved.

== Pacing and Time

The rulebook describes three resolutions at which Ashen tracks time: open
time, where minutes and hours pass between meaningful actions; stretches,
where roughly five minutes pass between each significant choice; and rounds,
where every action is counted in seconds and action points. As the GM, you
decide which resolution a scene runs at, and---more importantly---when to
switch between them. The right choice is rarely about realism; it is about
where the table's attention should sit. Open time gives the players narrative
latitude; stretches put a clock on a tense situation without dragging it into
turn-by-turn bookkeeping; rounds let every second matter when lives are on
the line.

The sections that follow offer guidance on each resolution and on the seams
between them.

=== Stretches: Keeping Pressure On

Stretches shine in scenes where two sides are acting in parallel and neither
side has yet noticed the other---or where they have noticed but the
confrontation has not yet snapped into violence. Players moving through a
guarded dungeon, breaking into a townhouse before the city watch comes around
the corner, lifting a relic from a dragon's hoard while the dragon dozes: in
all of these, the question is not "who hits whom first" but "do the players
finish what they came to do before the other side reacts?"

To run a scene in stretches, sketch the opposition as a parallel track to the
players' actions. The watch patrol is six stretches away from the front door.
The dragon stirs and lifts its head on a 1 in 6, rolled at the start of every
stretch. The ritual the players are interrupting completes in four stretches
unless they disrupt it. Then, on each stretch:

- Each player declares a single significant action and rolls for it.
- You advance every parallel clock by one stretch and resolve any triggered
  events (the patrol turns the corner, the dragon opens an eye, the ritual
  reaches its next phase).
- You describe the new state of the scene, including any sensory cues the
  players' characters would notice---torchlight bobbing closer down the
  corridor, the dragon's breathing changing pitch.

Stretches are particularly good at giving players agency over the costs of
their plan. Sneaking past the patrol takes longer than sprinting past it, but
sprinting risks being heard. Picking the lock carefully takes three
stretches; forcing it takes one but leaves obvious damage. The stretch makes
these trade-offs concrete without requiring you to adjudicate them in
seconds.

=== Rounds: When to Drop In, When to Skip

A scene running in stretches can collapse into rounds at any point, and a
scene that begins in rounds can dissolve back into stretches once the
immediate threat is past. The transition is always the GM's call, and the
trigger is almost always the same: the resolution of a single second now
matters. The dragon's eye opens. The watch sergeant draws steel. The
ritual's final syllable hangs in the air.

When you cross that line, call for initiative. The default is to roll
initiative once per encounter---each combat scene gets a fresh order, with
fresh circumstances reflected in modifiers and surprise. This keeps the
initiative roll meaningful: characters who have invested in Initiative are
rewarded every time the dice come out, and the order at the table reshuffles
with each new threat.

For some scenes, especially small dungeons or fast-moving chases where
encounters come quickly one after another, you may prefer to roll initiative
once for an entire act and reuse it across every combat in that act. This
keeps the table moving and avoids interrupting momentum with bookkeeping.
The cost is real, though: characters built around initiative---scouts,
duellists, gunslingers---lose most of their opportunity to shine, because
their advantage is paid for once and amortized across every fight. A
reasonable compromise is to roll once per act for routine encounters and
re-roll for set-piece battles, signalling to the table that the next fight
matters more than the last one.

A combat scene need not end by snapping all the way back to open time. If
the characters cut down the last cultist but the alarm bell is ringing in
the next tower, drop back into stretches: each stretch, the surviving
characters declare an action---bar the door, search the bodies, drag the
wounded priestess to cover---while the reinforcements close in. Only when
the last clock has run out, or the players have decisively escaped or won,
should the scene dissolve into open time.

=== The GM's Clock

Whatever resolution a scene is running at, the GM is also tracking the world
around the players. Torches burn down. Spells expire. Wandering threats
roam. Weather turns. Ritual circles pulse and dim. The GM's clock is the set
of regular checks you make to keep the world breathing, and the cadence of
those checks should match the resolution of the scene.

In stretches, a 1-in-6 check at the start of each stretch handles most
short-term hazards: a guard happens by, the torch gutters in a draft, the
fog thickens in the room. Use a d6 in plain view at the table when you want
the players to feel the pressure; roll it behind the screen when you want
the threat to be ambient rather than explicit.

In rounds, the GM's clock is mostly handled by the duration fields on
ongoing effects (the bleed lasts three rounds, the smoke clears after
five), but you may still want a heartbeat---a chant from the next room
growing louder each round, a structural beam groaning, a portal slowly
closing. Announce these at the top of each round so the players can react
to them.

In open time, the clock runs slower and broader. A wandering monster check
each in-fiction hour, a weather check each morning, a check for whether
news of the players' last exploit has caught up to them each time they
enter a new settlement. The principle is the same as in stretches: regular,
predictable checks turn the world into a system the players can plan
against, rather than a series of GM-fiat surprises.

=== The Long View

The same logic that makes stretches useful at the scale of minutes can be
applied at the scale of hours, days, or hundreds of miles. If the party is
crossing the high road by skimmer at thirty miles an hour, a stretch is
absurd---five minutes of skimmer travel is a featureless straight line. But
the underlying procedure still works: pick a unit of travel that contains
about one meaningful decision, advance it one tick at a time, and roll your
GM's clock against each tick.

For wilderness travel by skimmer or mount, a tick of one to two hours, or
fifty to a hundred miles, is usually about right. On each tick:

- The party covers their travel distance and the GM describes anything they
  pass that warrants attention.
- The GM rolls for weather changes, vehicle malfunctions, and random
  encounters appropriate to the terrain.
- The party may declare an action that takes the full tick---scanning the
  horizon for pursuit, attempting to repair a stressed engine, hunting for
  game---and roll for it.

For longer expeditions---a week-long march through the Sand Wastes, a
month-long voyage across the Western Islands---the tick can stretch to a
day or more. The same three steps still apply, only the scale of the events
they trigger changes: instead of weather, it is supply attrition; instead
of a random encounter, it is a sickness, a desertion, or a rumour
overtaking the party from behind.

The result, at every scale, is the same texture: the world acts on a clock
the players can hear ticking, the players act with full knowledge of the
trade-offs, and the GM never has to invent pressure on the fly because the
pressure was always already in the schedule.

== Running Adventures

An adventure in Ashen is one or more acts connected by a shared objective. A
short adventure is a single act---one to three sessions of play. A standard
adventure spans two or three acts with intermissions between them. A long
adventure runs four or more acts and begins to shade into a campaign arc. Most
of the time, one adventure is one mission: a patron hires the party, or the
party identifies a goal and pursues it.

The distinction matters because the act is the unit of pacing. Each act has its
own internal rhythm of scenes---some tense, some quiet, some violent---and each
intermission is a pause for maintenance, advancement, and worldbuilding. When
you plan an adventure, you are deciding how many of these cycles the story
needs.

Not all intermissions carry the same weight. An intermission between acts of the
same adventure is usually brief: the party knows what comes next, so the
intermission is a chance to spend XP, maintain equipment, and resupply before
pressing on. An intermission between adventures is something larger. The current
objective is resolved, the next one has not yet been given, and the characters
have genuine free time. This is the natural moment for a break in real life as
well---a week or two between sessions gives the GM time to prepare the next
adventure while the players handle their characters' personal business
asynchronously. A character who belongs to a faction might report in, pursue
private leads, or attend to obligations that do not involve the rest of the
party. If the party makes port at the Black Bazaar after completing a mission,
one character might seek out a Mortefactor contact while another commissions new
equipment and a third spends a few days in the archives. These solo threads can
be resolved through brief exchanges between sessions---a few messages or a short
one-on-one conversation---and they give the world texture that group play
alone cannot provide.

=== Building an Adventure

The following steps produce a playable adventure. They are presented in order,
but in practice you will iterate: stocking encounters will suggest changes to
the clock, placing rewards will suggest changes to the encounters, and so on.

==== Start with the Opposition

Every adventure begins with something that wants to happen. A cult is performing
a ritual. A warlord is marching on a settlement. A Mist Creature is migrating
into inhabited territory. A rival faction is excavating a ruin.

Define the opposition in one or two sentences: what it is, what it wants, and
what happens if the players do nothing. That last point is the most important.
If the players sit in a tavern for a week, what changes in the world? Write that
down. This is your doom clock---the event the adventure is racing toward.

The opposition does not need to be a villain. It can be a natural disaster, a
political crisis, or a ticking magical effect. What matters is that it has a
timeline and that the players can interact with that timeline through their
choices.

==== Define the Objective

What does success look like for the players? "Stop the ritual." "Escort the
convoy to River Clear." "Retrieve the relic before the Mortefactors do." "Find
out what happened to the survey team." The objective should be concrete enough
that the players can plan toward it and you can judge when it has been achieved
or lost.

If the adventure has secondary objectives---rescue the hostages _and_ stop the
ritual, or retrieve the relic _and_ map the ruin---note them separately. They
provide fallback successes if the primary objective fails and give the party
reasons to take risks beyond the minimum.

==== Build the Clock

Decide how much time the party has. Express it in whatever unit fits the
adventure's scale: stretches for a single-scene infiltration, hours for a
dungeon, days for an overland race, weeks for a political intrigue. The Pacing
and Time section covers how to operate clocks at each scale.

The clock should be visible to the players, at least in broad terms. "The ritual
completes at the next full moon" is a clock the players can plan around. "The
warlord's army arrives in three days" gives them a budget of actions. Invisible
clocks---where only you know the deadline---rob the players of agency and reduce
decision-making to guesswork.

==== Design the Environment

Where does the adventure take place? Determine the Fog density, terrain type,
travel distances, and any environmental hazards. The Exploration chapter
provides tables for all of these: terrain modifiers, weather effects, Fog
density consequences, and exposure mechanics.

The environment is not a backdrop. It is a constraint that shapes every decision
the party makes. A Dense Fog forest imposes navigation difficulty, limits
visibility, triggers Fog effects each day, and spawns Mist Creatures. A Clear
settlement offers safety but may have political complications. Choose the
environment to reinforce the adventure's tone.

A worked example: the party must cross 80 miles of Dense Fog forest to reach a
ruin before a rival faction. The rival is two days ahead. Dense Fog means daily
Fog effects (roll on the Dense Fog table), navigation difficulty of 6 or higher,
and travel speed reduced to roughly 25 miles per day on foot. The party has
about three and a half days of travel---the rival has two days of head start
plus whatever time they spend in the ruin. The adventure's tension comes from
the arithmetic: do the players push through the Fog, accept the exposure and
encounter risks, and try to close the gap? Or do they find a faster route,
perhaps by skimmer, and accept the Fog effects on their vehicle?

==== Stock the Encounters

Decide which scenes will involve combat, which will run in stretches, and which
will be primarily social or investigative. A typical act contains two to three
combat encounters and one or two stretch-based tension scenes. More than this
and the session drags; fewer and the act feels hollow.

#note[The number of combats per act is adjustable. If your group prefers social
and investigative play, reduce combat encounters to one or two per act without
breaking anything---but lower the expected combat XP accordingly and raise
mission XP to compensate, so that tier progression does not stall.]

Not every encounter needs to be a fight the party wins. Some encounters are
obstacles to be avoided, traps to be disarmed, or negotiations to be survived.
Variety in encounter type keeps acts from becoming a sequence of identical
combats separated by narration.

Use the Designing Creatures section to build combat encounters. Use the Pacing
and Time section to structure stretch scenes. For social encounters, the skill
system---Persuasion, Deception, Intimidation, Insight---provides the mechanical
backbone; you supply the NPC's motivation and the stakes of the conversation.

Keep the EP economy in mind when calibrating encounter pressure, because it
shifts dramatically across tiers. At Tier 1, characters have only 11 EP---two
deaths and they are on the edge of discorporation. Encounters at these tiers
barely need to threaten death for the stakes to feel real; the EP cost does the
work for you. By Tier 5 and beyond, characters have 40 or more EP, advances
that reduce revival costs, and powers that mitigate the action-economy penalty
of dying. A party at this level can absorb several deaths per act without
meaningful pressure. High-tier adventures need to apply that pressure
deliberately: longer stretches between rests, more encounters per act, or
opposition that forces repeated EP expenditure. If Tier 5 characters never feel
the pinch of their EP pool, something the adventure is designed to test has gone
slack.

==== Place the Rewards

Consult the Progression and Rewards section for the numbers. Match the
adventure's total XP output to the expected session XP table so that tier
progression stays on track. Place mission pay appropriate to the tier and
distribute loot worth roughly half to equal the mission pay across the
adventure's encounters and exploration scenes.

Place gear deliberately. If the party's Arcane caster is looking for a
particular spell, put a scroll in the ruin. If the group's fighter needs a Tier
3 weapon, make one available as loot or as a commission from a smith they rescue
during the adventure. Loot that serves the party's actual needs is more
satisfying than random treasure, and it lets you steer equipment progression
without relying entirely on the economy.

==== Prepare the NPCs

An adventure needs, at minimum, one patron or hook (the reason the party is
involved), one adversary (the opposition's face), and one or two encounter NPCs
(people the party interacts with along the way). For each NPC, write one
sentence on what they want and one sentence on how they speak or carry
themselves. That is enough to improvise any conversation.

Do not write stat blocks for NPCs unless they will appear in combat. If an NPC
might fight, use the creature design guidelines. If an NPC is purely social,
their personality and motivation are their stat block.

#note[You do not need to prepare every possible outcome. Prepare the _situation_:
who wants what, where the resources are, and what the clocks are. The players
will decide what to do, and you will adjudicate the consequences. If you find
yourself scripting dialogue trees or mapping every branch of a decision, you are
over-preparing. The stretch and scene structure will carry the session once you
know the moving parts.]

=== Running a Session

==== Opening

Begin each session with a brief recap: where the party is, what they know, and
what the current state of the clocks is. If this is the first session of an
adventure, present the hook---the patron's briefing, the distress call, the
rumour in the market, the direct observation of something wrong. The hook should
make the objective and the time pressure clear enough that the players can begin
planning immediately.

==== Scene Transitions

A scene ends when one of three things happens: the party moves to a new
location, a clock advances to a new state that demands a response, or the
party's current action is fully resolved and they must decide what to do next.
Between scenes, narrate the transition briefly and check whether any clocks have
advanced. A sentence or two is enough: "You leave the warehouse as the rain
picks up. By the time you reach the east gate, the second watch has started its
rounds." Then open the next scene.

Do not linger between scenes. The transition is a seam, not a scene of its own.
If nothing interesting happens during transit, skip it.

==== When to Call for Checks

In combat and stretch scenes, the resolution system drives the action---every
turn or tick produces checks naturally. In open time, checks are rarer and more
consequential. Call for a check in open time when a character is attempting
something with a meaningful chance of failure _and_ a meaningful consequence for
failing. Buying supplies in a well-stocked market is not a check. Buying
restricted military equipment from a black-market dealer who might report you to
the city watch is a check.

==== Switching Resolution

The transitions between time resolutions follow a consistent pattern. Open time
collapses into stretches when a clock starts ticking---the party enters a
guarded area, a deadline begins to press, or parallel action tracks emerge.
Stretches collapse into rounds when violence erupts or when second-by-second
resolution becomes necessary. Rounds dissolve back into stretches when the
immediate threat is resolved but the situation remains tense. Stretches dissolve
back into open time when all clocks have stopped or the party has clearly
succeeded or failed.

You control these transitions. The trigger is always the same question: does the
current resolution give the players enough granularity to make meaningful
choices? If open time is too loose for the tension at hand, switch to stretches.
If stretches are too loose, switch to rounds. If the current resolution is finer
than the situation requires, zoom out.

==== Ending the Session

End the session at a natural pause: after an act concludes (triggering an
intermission), after a major scene resolves, or at a cliffhanger just before a
known confrontation. Avoid stopping mid-combat or mid-stretch---the mechanical
state is difficult to reconstruct next session and the momentum is lost.

If an intermission falls at the end of a session, run it at the start of the
next session rather than skipping it. For a mid-adventure intermission this is
quick---mostly bookkeeping. For a between-adventure intermission, it is a chance
to give the players room to breathe and handle solo threads before the next
mission begins.

=== Pitfalls Worth Knowing About

The following are easy traps to fall into when running Ashen for the first time,
especially if you are coming from a system with different assumptions.

*Letting the clocks slip.* The GM's clock is the primary tension mechanism in
Ashen, and it is easy to forget in the flow of a scene. If Fog effects, patrol
timers, and doom clocks are not advancing, the world feels static and the
players lose their sense of urgency. A useful habit: before each new scene, ask
yourself what the opposition has done since the last one, and advance the clock
accordingly.

*Over-scaling early encounters because "they cannot die."* At Tiers 1 and 2,
characters have only 11 to 15 EP. Revival costs 5, so a single death leaves a
character badly depleted and a second may force discorporation. It is tempting
to ratchet up difficulty to compensate for Deathless immortality, but at these
tiers the EP economy already makes death punishing. The standard encounter
balance in the Designing Creatures section accounts for this. (At higher tiers,
the calculus shifts---see the note on EP pressure in the Running Adventures
section.)

*Forgetting to place spell loot.* Arcane casters advance by finding new spells.
If you do not place spell scrolls, spellbooks, or NPC casters willing to teach,
the Arcane caster's power plateaus while other characters continue to grow.
At the start of adventure preparation, check: does the party include an Arcane
caster? If yes, does this adventure offer at least one spell acquisition
opportunity?

*Ignoring maintenance costs.* Equipment maintenance during intermissions is a
deliberate wealth drain. It prevents hoarding, keeps the party hungry for
mission pay, and ensures that upgrading equipment remains a meaningful decision
throughout the campaign. If you waive maintenance, the economy inflates and
tier-appropriate gear loses its weight as a reward.

*Defaulting to combat.* If every scene of tension ends in a fight, the stretch
system atrophies and the game becomes a series of combats connected by
narration. Stretches are mechanically supported and provide a different kind of
tension---one built on trade-offs, parallel clocks, and imperfect information
rather than hit points and damage. Use them for infiltration, chases, heists,
exploration, and any scene where the question is "do you finish before something
bad happens?" rather than "do you survive?"

== Running Campaigns

A campaign is a sequence of adventures connected by continuity of characters,
setting, and themes. Where an adventure answers a single question---stop the
ritual, retrieve the relic---a campaign answers a larger one: what kind of world
do the characters leave behind?

=== Campaign Structure

The tier system provides a natural backbone for campaign arcs. Each tier lasts
roughly eight to twelve sessions at standard XP pacing, which gives the
following shape:

*Tiers 1--2: Establishment* (roughly 16 to 24 sessions). Adventures are local.
The party is learning the world: who the factions are, how the economy works,
what the Fog is like at the edges of the Clears. Threats are immediate and
personal---clear a ruin, protect a settlement, investigate a disappearance.
Equipment is commercially available and the party is building its first full
kit. The tone is grounded. Let the players feel what "normal" is before you
begin to subvert it.

*Tiers 3--4: Expansion* (roughly 16 to 24 sessions). Adventures span regions.
The party has a reputation and faction politics become personal---patrons make
demands, rivals take notice, and the party's choices begin to have consequences
beyond the immediate mission. The setting's mysteries surface: the nature of the
Fog, the truth of the Last War, the existence of the Heart of the World.
Equipment transitions from commercial to commissioned, requiring relationships
with specific artisans and access to major settlements.

*Tiers 5--6: Endgame* (roughly 16 to 24 sessions). Adventures are
world-shaping. The party is among the most powerful beings in the setting, and
the problems they face are proportional: threats to the Clears, faction wars,
the corruption or healing of the Heart of the World. Equipment is quest-bound---
the party must find or create its highest-tier gear. The endgame rituals (the
Rite of Unmaking and the Rite of the Second Birth) become mechanically
reachable. The campaign is heading toward a conclusion, and the players'
choices determine its shape.

A full campaign at this pacing runs roughly 48 to 72 sessions---one to two years
of weekly play. This is not a prescription. Some campaigns will compress tiers,
skip entire bands, or run indefinitely at a single tier. The numbers exist to
help you plan, not to constrain you.

=== The Faction Web

Choose three to five factions that will feature in the campaign. At minimum, you
need the party's faction (if they have one), one or two factions that provide
missions and support, and one or two factions whose goals oppose the party's.

For each faction, write one sentence: what does this faction want, and what is
it willing to do to get it? That sentence is the faction's engine. Everything
the faction does in the campaign---the missions it offers, the obstacles it
creates, the alliances it seeks---follows from that sentence.

#note[You do not need all the factions from the setting chapter. Three factions
with clear motivations will generate more interesting play than twelve that the
players cannot keep straight. Start small. Add a new faction only when the
campaign's events demand it.]

Faction relationships are not static. A patron at Tier 1 may become an opponent
at Tier 4 when its interests diverge from the party's. An enemy at Tier 2 may
become an uneasy ally at Tier 5 when a greater threat emerges. Let the
relationships evolve in response to the party's actions and the campaign's
events.

Introduce factions through people, not exposition. The party meets a Lantern
Knight who needs their help, not "the Order of the Lantern." The party
encounters a Mortefactor field researcher whose work has gone wrong, not "the
Mortefactors." Let the faction's personality, values, and methods emerge through
the NPCs who represent it. The players will form opinions about factions based
on the people they meet---use that.

=== Seeding Mysteries

Most campaigns have at least one large-scale mystery that the players will
uncover over the course of play. Before the campaign begins---or at least before
a mystery becomes relevant---decide its answer. A mystery without an answer is a
mystery without satisfying clues, and the clues are what make the journey worth
it.

Plant clues early. Starting at Tier 1, fragments of the larger truth should
appear in the margins of ordinary adventures: a journal entry in a looted ruin,
a mural that contradicts an official history, an NPC who mentions something they
should not know, a strange environmental effect that nobody can explain. The
players will not recognize these as clues immediately, and that is the point.
They are building a library of details that will start to connect in the Tier
3--4 range.

The key is to introduce the campaign's endgame question early enough that the
players have time to care about the answer. By Tier 3, they should know the
central mystery exists. By Tier 4, they should understand that resolving it is
the campaign's ultimate challenge. The tension of the endgame comes from the
choice of what to do---not from the revelation that there is something to do.
Waiting until Tier 5 to introduce the campaign's central question risks
compressing the endgame into a reveal-and-rush rather than a deliberate choice.

For example, the default setting provides several mysteries suited to this
structure: the ending of the Last War, the origin of the Deathless curse, the
nature of the Heart of the World, and the suppressed history of Vay Ngien and
Old Ko Vihya. The Setting Secrets section provides frameworks for each.

=== Managing Long-Term Progression

The wealth and XP benchmarks in the Progression and Rewards section are your
campaign health check. At each intermission, compare the party's cumulative XP
and total wealth to the tables. If the party is significantly ahead---more than
20% above the expected range---reduce mission pay or loot density for a few
adventures. If they are behind, offer a windfall: a vault in a ruin, a patron's
bonus for exceptional work, a particularly lucrative salvage haul.

The item availability gates create natural campaign beats. The Tier 3 transition
---equipment must be commissioned from specialists---gives the party a reason to
visit a major settlement and build relationships with artisans. The Tier 4
transition---only master craftsmen in great trading hubs---gives them a reason to
travel to the campaign's largest cities. The Tier 5 transition---nothing is
commercially available---generates adventures by itself, as the party must quest
for materials, seek out legendary smiths, or recover pre-cataclysm relics.

Plan legendary rewards as campaign milestones. Decide early which characters
will receive legendary items, powers, or advances, and what narrative arcs will
unlock them. A legendary item should arrive with a name, a history, and at least
one session's worth of effort behind it. The Awarding Legendary Rewards section
provides the mechanical guidance; your job is to make the acquisition
memorable.

Do not rush intermissions. Thirty to forty-five minutes of real time spent on
shopping, crafting, spending XP, and interacting with the world between
adventures is normal and healthy. Intermissions are where the players engage
with the campaign as a living place rather than a sequence of missions. If you
skip them or compress them to bookkeeping, the campaign loses the texture that
makes long-term play rewarding.

== Designing Creatures

This section provides guidelines for creating enemy creatures for use in combat encounters. Creatures in Ashen use the same mechanical framework as player characters: they have attributes, characteristics, derived statistics, equipment (or natural equivalents), and powers.

=== Creature Stat Blocks

A creature stat block should include the following:

- *Hit Points (HP):* How much damage the creature can sustain.
- *Focus Points (FP):* The creature's reservoir for powers. Creatures that rely purely on physical attacks may have low or no FP.
- *Armor:* Physical damage reduction, whether from natural hide, worn armor, or construction.
- *Ward:* Magical damage reduction, from innate magical resistance or protective enchantments.
- *Evasion:* How difficult the creature is to hit. Derived the same way as for characters: half the creature's Dodge rating (rounded down), modified by armor or natural agility.
- *Action Points (AP):* Almost always 4, the same as player characters.
- *Movement Speed:* 2 + the creature's Speed rating, as for characters.
- *Main Attack Characteristic:* The dice pool the creature rolls for its primary attacks (Martial for melee combatants, Marksmanship for ranged, a casting characteristic for spellcasters).
- *Resistance Characteristics:* The creature's Stamina, Potential and Grit ratings, used to resist powers and effects.
- *Attacks and Powers:* The creature's available actions, including base weapon damage and any special powers.

=== Encounter Balance

A fight is balanced when the *action economy* is roughly equal on both sides. On a featureless battlefield where both sides can fully employ their abilities, a group of enemies equal in number to the player characters --- each enemy being of the same tier as the party --- constitutes a fair fight.

When the number of enemies differs from the number of players, the creatures must be adjusted:

- *Fewer enemies than players:* The creatures need higher HP, better defenses, and stronger powers to compensate for being outnumbered. A single "boss" creature facing a full party should have dramatically more HP and access to multi-target or area powers to offset the action economy disadvantage.
- *More enemies than players:* Each creature should be weaker than a same-tier PC --- lower HP, simpler attack options, and fewer powers. Minion-type creatures may have only a single attack and minimal HP.

=== Stat Guidelines by Tier

The following table provides baseline statistics for a standard creature at each tier. These values represent a creature roughly equivalent to a player character of the same tier wearing medium-weight equipment.

#pftab(
  "Creature Stat Guidelines",
  columns: 7,
  align: (left, center, center, center, center, center, center),
  stroke: 0.5pt,

  [*Stat*], [*T1*], [*T2*], [*T3*], [*T4*], [*T5*], [*T6*],
  [HP], [20--25], [30--40], [45--60], [65--85], [90--120], [120--160],
  [FP], [13--18], [20--30], [30--45], [45--65], [65--90], [90--130],
  [Armor], [5], [8], [10], [13], [17], [22],
  [Ward], [4], [5], [8], [10], [13], [17],
  [Evasion], [2--3], [3--4], [4--5], [5--7], [7--8], [8--9],
  [Main Attack], [5--7], [7--9], [10--12], [13--15], [15--17], [16--18],
  [Primary Resistance], [4--6], [6--8], [8--11], [11--14], [14--16], [16--18],
  [Damage (per hit)], [7--10], [10--14], [14--18], [18--23], [22--29], [27--35],
)

Use the lower end of each range for more fragile or evasion-oriented creatures (rogues, casters, skirmishers) and the higher end for tougher brutes and tanks.

=== The Role of Powers in Creature Design

The relationship between armor values and base damage shifts dramatically across tiers, and this has major implications for how creatures should be designed.

==== Low Tiers (T1--T2): Restraint

At Tiers 1 and 2, base weapon damage comfortably exceeds typical armor values. A T1 creature dealing 8 damage against a target with 5 armor still lands 3 points per hit --- meaningful against a 20 HP character. Basic attacks are effective, and most creatures at these tiers can function with simple attack options.

Powers must be used with caution. A 200% damage power at T1 deals 14--20 damage, which can drop a player character in a single hit. Creatures at these tiers should use high-damage powers sparingly, or telegraph them so players have a chance to react. Reserve 200% powers for tough or elite enemies, and avoid 300% entirely --- it is almost always an instant kill.

==== Mid Tiers (T3--T4): Transition

At Tiers 3 and 4, armor begins to absorb a significant fraction of incoming damage. A T3 creature dealing 16 damage against 10 armor lands only 6 points --- survivable, but slow to kill a 50 HP character through basic attacks alone. Creatures at these tiers need at least one or two 200% powers to threaten well-armored characters, and should begin to have access to effects that degrade defenses (Shred, Disrupt) or bypass them (penetration, damage types that target the weaker of armor or ward).

==== High Tiers (T5--T6): Necessity

At Tiers 5 and 6, armor and ward values approach or exceed base damage. A T5 creature dealing 25 damage against a target with 17 armor lands only 8 points per hit --- a character with 100+ HP can shrug off basic attacks almost indefinitely. Without 200--300% powers, creatures at these tiers simply cannot threaten well-equipped player characters.

High-tier creatures _must_ have a toolkit that includes some combination of:

- *High-percentage powers:* 200--300% damage to punch through defenses.
- *Defense degradation:* Shred and Disrupt effects to erode armor and ward over the course of a fight.
- *Armor bypass:* Penetration, effects that ignore armor entirely, or damage types that target the weaker defensive stat.
- *Multi-hit attacks:* Multiple smaller hits apply armor separately per hit, but can overwhelm through volume --- and each hit can carry riders (conditions, ongoing damage).
- *Qualitative effects:* Conditions like Exposed, Vulnerable, or Staggered that strip defensive layers and set up devastating follow-up attacks.

This mirrors the design of player-facing powers at these tiers: the tier guidelines note that T5--T6 power comes from qualitative shifts, not raw damage multipliers.

=== Creature Roles

When designing encounters with multiple creatures, it helps to assign each creature a combat role. The stat guidelines above represent a balanced baseline; roles shift the emphasis:

- *Brute:* High damage and HP, low Evasion and Ward. Relies on raw physical power to overwhelm opponents. Armor near baseline, few or no magical abilities. Simple but dangerous.
- *Knight:* High HP, Armor and Ward, lower damage. A defensive frontliner that holds ground and protects other creatures. May have abilities that punish enemies for ignoring it (opportunity attacks, auras, taunt effects).
- *Skirmisher:* High Evasion and Movement Speed, lower HP. Hits and runs, uses positioning to avoid retaliation. May have abilities that trigger on movement.
- *Artillery:* High damage at range, low HP and Evasion. Dangerous if left alone, fragile if engaged in melee. Needs other creatures to screen for it.
- *Controller:* Moderate stats across the board, but access to area powers and conditions. Shapes the battlefield rather than dealing raw damage.
- *Caster:* High FP and casting characteristics, lower physical stats. Uses spells or powers as primary offense. Ward above baseline, Armor below.
- *Elite:* A creature designed to face multiple PCs. Higher HP (1.5--2x baseline), access to more powers, and possibly extra AP or reactions.
- *Minion:* A creature designed to be fielded in numbers greater than the party. Minimal HP (half baseline or less), one basic attack, no powers. Compensates with action economy.

=== Boss Creatures

A true boss is a creature designed to face an entire party alone or with only a handful of minions at its side. Bosses are fundamentally different from standard creatures: they must combine multiple roles --- dealing damage, absorbing punishment, and disrupting the party's plans --- all in a single stat block. A boss that can only do one of these things will be quickly neutralized by a coordinated party.

==== Stat Adjustments

A boss should have significantly above-baseline statistics. As a starting point:

- *HP:* 2--3x the baseline for its tier. A boss that dies too quickly is anticlimactic; err on the side of durability.
- *Defenses:* Armor, Ward and Evasion should all be at or above baseline. Bosses cannot afford a glaring defensive weakness that the party can exploit to trivialize the encounter.
- *Resistance Characteristics:* Above baseline across the board. A boss that can be reliably stunned or dominated in the first round is not a boss for long.
- *Attacks and Powers:* A boss needs a diverse toolkit. It should have at least one high-damage single-target attack, one area or multi-target power, and one disruptive ability (a condition, a forced movement effect, or something that changes the battlefield). At high tiers, defense-degrading effects (Shred, Disrupt) are essential to prevent the fight from stalling.

==== Action Economy

The most critical challenge in boss design is the action economy. A single creature with 4 AP facing a party of four characters with 4 AP each is outnumbered four-to-one in available actions. Without compensation, the boss will be locked down by conditions and destroyed before it can act meaningfully.

At low tiers (T1--T2), simply increasing the boss's AP to *5--6* can be sufficient. The party's powers are limited in scope, and the extra actions let the boss attack, move, and use an ability each turn without feeling overwhelming.

At higher tiers, raw AP increases are not enough --- the party has access to powerful conditions and combination attacks that demand the boss be able to act outside its own turn. Two mechanisms address this:

*Legendary Action* \
_Once per round, after another creature's turn ends, this creature may take a single action costing up to 2 AP._ \
This gives the boss one extra action per round at a time of the GM's choosing. It is appropriate for mid-tier bosses (T3--T4) and for high-tier bosses that are accompanied by a few supporting creatures.

*Greater Legendary Action* \
_Whenever another creature completes its turn, this creature may take a single action costing up to 2 AP._ \
This gives the boss an action after _every_ other creature's turn --- potentially 4 or more extra actions per round against a full party. This is appropriate for the most powerful high-tier bosses (T5--T6) that are meant to face a full party alone. Greater Legendary Actions make a creature extremely dangerous and should be paired with careful HP tuning to avoid fights that drag on too long.

==== Design Considerations

- *Condition immunity:* Bosses should be immune to at least Dominated, and may be immune to Stunned as well. Being fully locked out of actions for even one round can be catastrophic for a solo creature. Consider granting resistance (automatic saves at the start of the boss's turn) to other disabling conditions rather than full immunity, so that the party's control abilities still feel impactful.
- *Phased encounters:* A boss with 3x baseline HP can feel like a slog. Consider breaking the fight into phases --- at certain HP thresholds, the boss changes behavior, gains new powers, or the environment shifts. This keeps the encounter dynamic and gives the party a sense of progress.
- *Minion support:* Even a boss designed for solo play benefits from 2--3 minions. Minions occupy the party's attention, provide targets for area powers (making the players choose between hitting the boss and clearing adds), and help the boss's action economy without requiring Greater Legendary Actions.

== Progression and Rewards

Character power in Ashen advances along three axes: experience (which buys
advances, skill points and Essence Points), wealth (which buys equipment), and
item access (which determines what equipment is available to buy at all). These
three must advance roughly in step. A party that is rich in XP but poor in
feathers has high HP and many powers but hits like a T0 recruit; a party
swimming in feathers but low on XP dies easily despite carrying excellent gear.
The guidelines below help the GM keep these axes in balance without reducing
progression to a formula.

@tier-thresholds shows the approximate cumulative XP at which a character
is considered to be at each tier. These are not hard gates --- tier is
emergent from the advances a character has purchased --- but they are a
useful reference for the GM when planning mission difficulty, loot, and
pacing. A character whose cumulative XP falls within a tier's band should
have access to tier-appropriate advances and should be facing
tier-appropriate challenges.

#floating-table(
  "Tier Thresholds",
  columns: (2fr,) + (1fr,) * 7,
  align: (left, center, center, center, center, center, center, center),
  stroke: 0.5pt,

  [*Category*], [*Start*], [*T1*], [*T2*], [*T3*], [*T4*], [*T5*], [*T6*],
  [Cumulative XP], [1000], [1000--2500], [2500--5000], [5000--10000], [10000--18000], [18000--30000], [30000--48000],
  [SP earned], [1], [1--2], [2--5], [5--10], [10--18], [18--30], [30--48],
  [EP total], [11], [11--12], [12--15], [15--20], [20--28], [28--40], [40--58],
) <tier-thresholds>

=== Experience Points

XP is awarded for concrete actions: defeating enemies, completing missions, and
recovering valuables. The GM tallies XP at the end of each session.

==== Combat XP

Each creature defeated awards XP to every character who participated in the
encounter. Use @creature-xp for baseline values, then apply the role modifier
for the creature's combat role.

#floating-table(
  "Base Creature XP",
  columns: (2fr,) + (1fr,) * 7,
  align: (left, center, center, center, center, center, center, center),
  stroke: 0.5pt,

  [*Tier*], [*T0*], [*T1*], [*T2*], [*T3*], [*T4*], [*T5*], [*T6*],
  [Base XP], [5], [15], [25], [40], [65], [100], [175],
) <creature-xp>

- *Minion:* ×0.5 (rounded down).
- *Standard:* ×1.
- *Elite:* ×2.
- *Boss:* ×4.

If a creature's tier differs from the party's, adjust its value: one tier
above the party pays ×1.5, two or more tiers above pays ×2. One tier below
pays ×0.75; two or more tiers below pays ×0.5. These multipliers stack with
role multipliers.

==== Mission XP

Completing a mission objective --- returning with the target, escorting the
convoy, killing or capturing the mark --- awards a flat XP bonus to each
character. Use the mission's tier, not the party's.

#pftab(
  "Mission XP",
  columns: (2fr,) + (1fr,) * 6,
  align: (left, center, center, center, center, center, center),
  stroke: 0.5pt,

  [*Mission Tier*], [*T1*], [*T2*], [*T3*], [*T4*], [*T5*], [*T6*],
  [Completion XP], [100], [150], [250], [400], [600], [1000],
)

A mission may have secondary objectives worth a fraction of the completion
bonus --- typically half. Failing the primary objective but completing
secondary objectives still awards secondary XP.

==== Loot XP

Characters earn *1 XP for every 10#feathers of value* obtained during the
session, whether from recovered loot, salvaged materials, or payment received.
This is assessed on market value, not personal utility: a caster who recovers
a T3 greatsword earns XP for its value even if they will never swing it.

Loot XP serves two purposes. It rewards exploration and thoroughness, and it
creates a natural link between wealth and progression --- a party that invests
time in looting earns both spending money and advancement.

==== Pacing

The numbers above are calibrated so that a typical session --- two significant
combats, some loot, and progress toward or completion of a mission --- yields
roughly the following total XP per character:

#pftab(
  "Expected Session XP",
  columns: (2fr,) + (1fr,) * 6,
  align: (left, center, center, center, center, center, center),
  stroke: 0.5pt,

  [*Party Tier*], [*T1*], [*T2*], [*T3*], [*T4*], [*T5*], [*T6*],
  [XP / session], [150--250], [250--400], [400--650], [650--1000], [1000--1500], [1500--2200],
)

At this rate, a tier lasts roughly eight to twelve sessions. Characters
cross SP and EP thresholds (every 1000 cumulative XP) naturally along the
way, gaining skill points and Essence Points at a pace that tracks their
growing power.

If the campaign feels too slow or too fast, adjust the mission XP bonus ---
it is the simplest dial to turn without disrupting the combat-to-reward
relationship.

=== Awarding Wealth

Wealth enters the game through two channels: *mission pay* (reliable income
from patrons and factions) and *loot* (variable income from salvage,
treasure, and windfalls).

==== Mission Pay

Most Deathless work for a faction, a patron, or an employer. Mission pay is
the primary source of income and should be announced before the party
accepts the job, so that players can weigh the reward against the risk.

#pftab(
  "Mission Pay per Character",
  columns: (2fr,) + (1fr,) * 6,
  align: (left, center, center, center, center, center, center),
  stroke: 0.5pt,

  [*Mission Tier*], [*T1*], [*T2*], [*T3*], [*T4*], [*T5*], [*T6*],
  [Pay (#feathers)], [100--300], [300--600], [600--1500], [1500--3000], [3000--6000], [Favors],
)

At Tier 6, feathers lose their meaning. The people who can commission T6
work pay in political influence, territorial concessions, legendary
materials, or debts of service. If a T6 patron offers coin, it is either a
king's ransom or an insult.

Patrons may also offer non-monetary compensation --- access to restricted
facilities, introductions to artisans, or a claim on future salvage rights
--- which may be worth more than the listed pay range.

==== Loot and Salvage

Loot supplements mission pay and provides the "treasure hunt" motivation
that keeps exploration rewarding. As a guideline, loot found in the field
should be worth roughly *half* to *equal* the mission pay for that tier.
This means a party that explores thoroughly earns noticeably more than one
that beelines for the objective, without making mission pay feel irrelevant.

Not all loot is coin. Equipment found in ruins may be damaged, requiring
repair costs (typically 20--30% of market value). Exotic materials may need
a buyer. Salvaged magitek may have value only to a specific faction. These
frictions are good --- they create side objectives, NPC relationships, and
reasons to visit settlements.

==== Wealth Benchmarks

@wealth-benchmarks shows the approximate cumulative wealth a character
should have earned (from all sources, including their starting #feathers
500) by the time they are solidly established at each tier. These values
assume the party can afford a full tier-appropriate kit --- one weapon, one
set of armor, and one catalyst or reliquary if relevant.

#floating-table(
  "Cumulative Wealth Benchmarks",
  columns: (2fr,) + (1fr,) * 6,
  align: (left, center, center, center, center, center, center),
  stroke: 0.5pt,

  [*Tier*], [*T1*], [*T2*], [*T3*], [*T4*], [*T5*], [*T6*],
  [Full Kit Cost], [500--1500], [1500--4000], [4500--10000], [13000--22000], [24000--37000], [Quest],
  [Cumulative Earned], [500--1000], [2500--4500], [7000--14000], [22000--36000], [46000--73000], [---],
) <wealth-benchmarks>

The gap between cumulative earned and full kit cost represents savings,
consumable spending, repairs, ritual components, and the general cost of
living. Characters who spend frugally will have a comfortable buffer;
characters who burn through consumables and ritual components will feel
the pinch --- both are valid play experiences.

If the party's wealth is significantly ahead of or behind these benchmarks,
the easiest correction is to adjust mission pay for the next few sessions.
Windfall loot (a vault, a bounty, a patron's bonus) can also close a gap
quickly without disrupting the session-to-session economy.

=== Item Availability

Having feathers is not the same as having access. The commercial
availability of equipment depends on its tier and on where the characters
are.

==== Tiers 0--2: Common Goods

Old War salvage (T0) is everywhere. Tier 1 and 2 equipment is manufactured
or restored by local smiths, armorers, and artificers and can be found in
any settlement with a functioning market. Availability is not a concern ---
if the characters have the feathers, they can buy it.

==== Tier 3: Specialist Work

Tier 3 equipment represents the upper end of what skilled artisans can
produce. It is available in major settlements and trading hubs, but a
frontier outpost or a small Clear may not stock it. Characters may need to
commission a piece and wait days or weeks for delivery, or travel to a
larger settlement. This is a soft gate, not a hard one: the equipment
exists on the open market, it just is not always on the shelf.

==== Tier 4: Master Craftsmanship

Tier 4 is the ceiling of commercially available equipment. Only the great
trading hubs --- Aurum, Ironhaven, the floating markets of the Western
Islands --- reliably stock T4 gear, and even there the selection is limited.
Most T4 purchases are commissions: the character specifies what they want,
pays in advance, and waits. Lead times of one to four weeks are normal.

Masterwork items (generic items enhanced beyond their base tier) follow the
same pattern. A master artisan can produce them, but they are expensive,
slow to make, and the artisan may have conditions --- rare materials, a
favor, or simply a long queue.

==== Tier 5 and Above: Beyond Commerce

Tier 5 equipment is not commercially available in any meaningful sense. The
materials are too rare, the techniques too specialized, and the makers too
few. Characters who want T5 gear must find it --- in ancient ruins, in the
hoards of powerful creatures, or in the vaults of factions willing to part
with it for a price measured in service rather than feathers.

This is by design. The transition from T4 to T5 is the point where
character progression shifts from economic to narrative. The party cannot
simply grind missions, accumulate feathers, and buy their way to the top.
They must engage with the world: seek out legendary artisans, delve into
dangerous places, negotiate with powerful factions, or earn the right to
wield what they find. The feather values listed in the equipment tables for
T5 items represent replacement cost or insurance value, not a price anyone
will actually charge.

Tier 6 equipment is unique by definition and is covered under _Awarding
Legendary Rewards_ below.

== Awarding Legendary Rewards

Legendary items, powers, and advances (see _Legendary_ in the Basic Rules chapter) are among the most significant rewards a GM can offer. Because they are quest-bound and extraordinary by definition, they require more thought than standard loot or level-up choices.

=== When to Award Legendary Rewards

Legendary rewards should mark turning points in the campaign --- moments that change who a character is or what they can do. Good occasions include:

- *Completing a major story arc:* Defeating a campaign-defining threat, fulfilling a prophecy, or resolving a mystery that has driven the plot for multiple sessions.
- *Character milestones:* A character confronting their past, unlocking a latent ability tied to their origin, or earning the trust of a powerful patron.
- *Discovering something ancient:* Entering a ruin no one has breached in centuries, recovering a weapon from a fallen hero, or making contact with a forgotten power.

The pacing of legendary rewards should follow the arc of the campaign:

- *Tiers 1--2:* Legendary rewards should not feature at all. Characters at these tiers are still finding their footing, and the extraordinary nature of legendary rewards has no baseline to contrast against. Let the players discover what "normal" looks like before breaking the rules.
- *Tiers 3--4:* Legendary rewards should be very rare --- at most one per character across both tiers, and many characters may receive none. At these tiers, legendary weapons and armor do not yet exist; the most powerful generic equipment reaches tier 4 without requiring masterwork or legendary status. Any legendary rewards at these tiers should be limited to advances, powers, or artifacts that do not directly affect a character's combat statistics --- a prophetic vision, a pact with a powerful entity, or a strange relic whose purpose is not yet clear.
- *Tiers 5--6:* Legendary rewards become more frequent as the campaign reaches its climax. This is where legendary weapons and armor enter play (legendary items exist only at tiers 5 and 6), and where legendary powers and advances can represent the culmination of a character's arc. A character might receive two or even three legendary rewards across these tiers.

=== Legendary Items

A legendary item should feel like it has a history. Give it a name, a backstory, and at least one trait that makes it behave differently from anything the players could buy or craft. The item's legendary trait (which does not count against its enchantment slots) is the hook: it should do something no ordinary enchantment can replicate.

When placing a legendary item in the world, consider:

- *Foreshadowing:* Mention the item before the players find it --- in lore, in an NPC's story, or as a rumour. The discovery is more satisfying when the players recognise what they've found.
- *Cost of acquisition:* The quest to obtain it is part of the reward. A legendary weapon found in a chest with no effort feels less legendary than one pried from the hands of a dying guardian.
- *Enchantment slots:* A legendary item found early in its story may have empty enchantment slots. Letting a player fill those slots over time --- finding the right enchantments, seeking out the right artisans --- extends the reward across multiple sessions.

=== Legendary Powers and Advances

Unlike items, legendary powers and advances are intrinsic to a character. They represent something the character _becomes_, not something they _have_. This makes them deeply personal rewards, and they work best when tied to a character's arc.

Some principles:

- *Tie it to the character's story:* A legendary power is most compelling when it grows out of something the character has struggled with or worked toward. A psychic who has been haunted by visions of a past life might unlock a legendary Time power when they finally confront that memory.
- *Rarity, not uniqueness:* Legendary powers and advances need not be strictly one-of-a-kind. A small group of beings might share a legendary trait --- the six constructs built by a goddess, the last three knights of a fallen order. What matters is that it cannot be learned from a book or purchased with experience points.
- *Mechanical restraint:* A legendary power should be strong, but its strength should come from doing something _different_ rather than simply doing more damage. A power that ignores a fundamental rule (bypasses resistance, acts outside the normal turn order, affects a type of target that is normally immune) is more interesting than one that deals 400% damage.

== Designing Equipment

This section provides guidelines for designing new weapons, armor, catalysts, and other gear, as well as for balancing existing equipment across tiers.

=== Weapon Damage by Tier

@weapon-damage gives canonical damage values by tier, weight class, and variance. Variance describes the shape of the damage distribution: *LV* (low variance) has a high floor and a low ceiling, suited to reliable and precise weapons; *MV* (medium variance) is the standard for most weapons; *HV* (high variance) has a low floor and a high ceiling, suited to brutal or unpredictable weapons.

#float([#floating-table(
  "Weapon Damage by Tier",
  columns: 10,
  align: (left, center, center, center, center, center, center, center, center, center),
  stroke: 0.5pt,

  [*Tier*], [*Light LV*], [*Light MV*], [*Light HV*], [*Medium LV*], [*Medium MV*], [*Medium HV*], [*Heavy LV*], [*Heavy MV*], [*Heavy HV*],
  [0], [4+D3], [3+D4], [2+D6], [5+D3], [4+D4], [3+D6], [6+D3], [4+D6], [3+D8],
  [1], [6+D3], [4+D6], [3+D8], [8+D3], [6+D6], [5+D8], [11+D3], [8+D8], [6+D12],
  [2], [7+D4], [6+D6], [4+D10], [11+D4], [9+D8], [7+D12], [15+D4], [12+D10], [9+2D8],
  [3], [11+D4], [9+D8], [7+D12], [15+D6], [12+D10], [9+2D8], [20+D6], [16+D12], [12+2D10],
  [4], [14+D6], [12+D10], [8+2D8], [19+D8], [16+D12], [12+2D10], [25+D8], [20+2D8], [15+2D12],
  [5], [17+D8], [14+D12], [11+2D10], [23+D10], [20+2D8], [15+2D12], [30+D10], [24+2D10], [18+3D10],
  [6], [21+D10], [18+2D8], [14+2D12], [27+2D8], [24+2D10], [18+3D10], [35+2D6], [29+2D12], [22+4D10],
) <weapon-damage>])

This leads to the following average damage by tier (MV):

#pftab(
  "Damage Averages",
  columns: (1fr,) * 4,
  align: (left, center, center, center),
  stroke: 0.5pt,

  [*Tier*], [*Light*], [*Medium*], [*Heavy*],
  [0], [5.5], [6.5], [7.5],
  [1], [7.5], [9.5], [12.5],
  [2], [9.5], [13.5], [17.5],
  [3], [13.5], [18.0], [23.0],
  [4], [17.5], [22.8], [28.8],
  [5], [21.2], [28.5], [35.0],
  [6], [26.8], [35.2], [41.5],
)

The die progression used across the table is D3, D4, D6, D8, D10, D12, 2D8, 2D10, 3D8, 3D10, 3D12, 4D10, 4D12, with average values of 1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 9, 11, 13.5, 16.5, 19.5, 22, 26 respectively.

==== Ranged Weapons

Ranged weapons follow the same damage table as melee for their weight class, with a few adjustments:

- *Single-shot weapons* deal damage at tier+1 (e.g., a T2 single-shot rifle uses T3 damage values). This compensates for the inability to make multiple attacks per round.
- Weapons with very long range may have slightly lower damage.
- Weapons with area effects (cone, blast) may have lower per-target damage.
- *Anti-vehicle weapons* (e.g., rocket launchers) are a separate category --- they can only target size 3+ creatures and have extreme damage values outside the normal scaling.

==== Special Weapon Patterns

- *Split damage weapons* (e.g., Hoarfrost): the listed damage is dealt twice --- once reduced by Armor, once by Ward. The effective total is 2× the listed damage, but both defenses apply. These weapons appear weaker on paper but perform strongly against balanced targets.
- *High-penetration weapons*: may have lower base damage as a tradeoff. Penetration bypasses Armor directly, so low damage + high Pen can outperform high damage + no Pen against armored targets.
- *Silvered or special-material weapons*: may trade damage for keywords or penetration that bypass specific resistances.

=== Armor Scaling by Tier

#float([#floating-table(
  "Armor Scaling",
  columns: 10,
  align: (left, center, center, center, center, center, center, center, center, center),
  stroke: 0.5pt,

  [*Tier*], [*Light Armor*], [*Light Ward*], [*Light Bulk*], [*Med Armor*], [*Med Ward*], [*Med Bulk*], [*Heavy Armor*], [*Heavy Ward*], [*Heavy Bulk*],
  [0], [2], [2], [1], [3], [2], [2], [6], [4], [3],
  [1], [3], [3], [1], [5], [4], [2], [8], [6], [4],
  [2], [5], [4], [1], [8], [5], [3], [11], [8], [4],
  [3], [8], [5], [2], [10], [7], [3], [15], [10], [5],
  [4], [12], [9], [2], [19], [12], [3], [25], [20], [5],
  [5], [11], [8], [2], [15], [10], [4], [24], [16], [6],
  [6], [14], [11], [2], [19], [13], [4], [30], [20], [7],
) <armor-scaling>])

@armor-scaling gives the average values stats for armor by weight class and tier. Modifiers follow the armor's weight class: light armor grants +1 to +2 Evasion, medium armor grants 0 to +1, and heavy armor imposes --1 to --4. Higher-tier armor within a weight class may improve evasion slightly compared to lower-tier examples.

=== Charge (Magical Encumbrance)

Charge is the magical equivalent of Bulk. A character has both a Bulk capacity (derived from Strength and Endurance) and a Charge capacity (derived from Attunement). When designing items, assign Charge according to their magical intensity:

- *Non-magical items* (mundane weapons, basic armor): Charge 0.
- *Lightly magical items* (enchanted weapons, warded armor): Charge roughly half Bulk.
- *Heavily magical items* (catalysts, reliquaries, magical robes): Charge equal to or greater than Bulk. Such items may have Bulk 0 but high Charge.

The underlying design principle is that physical warriors invest in Bulk capacity, casters invest in Charge capacity, and hybrid builds need both. Equipment should reinforce that tradeoff rather than paper over it.

=== Price Scaling by Tier

Approximate price ranges in feathers (#feathers):

#pftab(
  "Price Scaling",
  columns: 5,
  align: (left, center, center, center, center),
  stroke: 0.5pt,

  [*Tier*], [*Weapons*], [*Armor*], [*Catalysts*], [*Consumables*],
  [0], [0--50], [0--50], [---], [10--50],
  [1], [100--500], [100--500], [200--600], [50--250],
  [2], [500--1500], [500--1500], [600--1500], [150--500],
  [3], [1500--3500], [1500--3000], [1500--3000], [300--1000],
  [4], [5000--8000], [5000--6500], [3000--6000], [500--2000],
  [5], [8000--15000], [8000--12000], [6000--10000], [1000--5000],
  [6], [Unique], [Unique], [Unique], [2000--10000],
)

At T6, standard weapons, armor, and catalysts leave the commercial market entirely --- such items are unique or priceless, obtained through quests or legendary rewards rather than purchased.

=== Weapon Keywords

The following keywords appear on weapons throughout the rulebook. When designing a new weapon, prefer an existing keyword over a bespoke rule unless the mechanical effect is genuinely new.

- *Heavy:* Must be braced before firing. Firing without bracing is hip-firing, which imposes a penalty.
- *Rapid Fire:* +2 automatic successes when the target is within half the weapon's range.
- *Assault:* Hip-fire penalty halved (--1 instead of --2 for single shots; --2 instead of --4 for auto).
- *Sidearm:* Draw or stow as a free action once per turn. Can be drawn even when a hand is occupied by a two-handed weapon.
- *Burning:* Target catches fire on hit, taking ongoing Thermal damage (save ends).
- *Explosive:* Deals damage in a blast radius.
- *Jet:* Propelled projectile.
- *Overload:* Carries a risk of overheating or malfunctioning.
- *Poisonous (N):* Target must pass a D(N) Stamina check or become Poisoned.
- *Parry +Nd:* Adds +N dice to parry checks made with the weapon.
- *Powered:* Requires a power source or charge.
- *Reliable:* Reduced malfunction chance.

== Setting Secrets

This section contains information about the world of Ashen that is intended for
the Game Master's eyes only. Players who read this section risk spoiling
mysteries that are meant to be discovered through play.

=== The Last War: A Note on Design

The conclusion of the Last War is deliberately left blank. The broad strokes ---
the war itself, the death of the gods, the release of the Fog, the creation of
the Deathless --- are fixed. But what happened in the final moments, what act or
event or betrayal brought the war to its catastrophic close, is not defined. This
is intentional.

The gap exists so that each Game Master can establish their own truth. The
players' Deathless characters remember nothing of the war's end, and the
historical record is genuinely absent. This means that the answer to "what
happened?" can be different in every campaign, tailored to the themes and
conflicts that the GM wants to explore.

Some example truths a GM might establish:

- *The Betrayal:* One of the gods --- perhaps one still worshipped by a player's
  faction --- deliberately sacrificed the others to end the war on their own
  terms. The Fog and the Deathless curse are side effects of a divine murder.
- *The Seal:* The war was fought to contain something --- an entity, a force, a
  truth --- and the conclusion was not a victory but a sealing. The world is a
  prison, but not for the Deathless: for whatever is locked beneath it.
- *The Accident:* There was no grand plan. The combined power unleashed in the
  war's final battle simply exceeded what creation could bear, and the world
  broke. The gap in the record exists because there was no coherent "end" ---
  just a collapse.

The GM should decide which truth (or which variation) their campaign uses early,
and plant clues accordingly. The factions' conflicting beliefs about the Last War
provide natural vectors for revealing information gradually.

=== The Heart of the World

Deep beneath Dragon's Head, the largest of the Western Islands, lies the wounded
Heart of the World. It is held in what were once the great jaws of the World
Serpent --- the same being whose bones form the island chain itself.

The Heart is the source of the Fog, or more precisely, it is the wound through
which creation bleeds. The Last War damaged it, and the Fog is the result: raw
creative power leaking from a break in the fundamental structure of reality. The
Heart still beats, after a fashion, and the energy it releases sustains both the
Fog and the ambient magical power that magitek devices draw upon.

What happens if the players reach the Heart is up to the GM. Some possibilities:

- It can be healed, ending the Fog but also ending the ambient magical energy
  that powers civilization. The world becomes mundane --- and the Deathless curse
  may or may not lift with it.
- It can be destroyed, which would finish what the Last War started. She Who
  Waits Beyond would approve.
- It can be studied, revealing the truth about the Last War and the nature of the
  Deathless curse --- but not necessarily providing a solution.
- It is guarded, by something ancient and powerful, and reaching it is only the
  beginning of the challenge.

=== Vay Ngien and Old Ko Vihya

The order of wizards that once occupied Old Ko Vihya was destroyed by a rare
coalition of factions, and their records were deliberately suppressed. The GM
should decide what Vay Ngien and his followers were actually doing, but some
possibilities include:

- They discovered how to permanently kill a Deathless and were using this
  knowledge for purposes that horrified the other factions.
- They were attempting to reopen the wounds in creation --- to widen the cracks
  that produce the Fog --- in pursuit of unlimited magical power.
- They found a way to restore the memories of the Deathless and learned
  something so terrible that the other factions agreed it was better forgotten.

Vay Ngien's tower still stands and could serve as a dungeon, a source of
forbidden knowledge, or a warning about what happens when curiosity goes too far.

=== Ending The Game

The setting presented in this book, if you choose to use it, encourages a natural
endgame: a faction --- ideally the player characters --- reaches the Heart of the
World and performs one of two rituals that resolve the state of creation itself.
Neither ritual is a secret; the factions know, in broad strokes, what is possible.
What they lack is the means. Both rituals require materials of extraordinary
rarity, a journey to the most dangerous place in the world, and a sacrifice that
cannot be taken back.

The two rituals represent the setting's fundamental question: is this broken world
worth saving, or is it kinder to let it end? Neither answer is presented as
correct. A campaign may treat one as the obvious goal and the other as the
villain's plan, or it may leave the choice genuinely open until the final session.

#ritual-description(
  "Rite of Unmaking",
  6,
  "Occultism",
  "15",
  "35",
  "7 days",
  [The caster completes the work that the Last War began: the Heart of the World
  stops beating, and creation unravels. The Fog dissipates --- not because it is
  healed, but because the wound it bled from no longer exists. Over the hours and
  days that follow, the world comes apart. Magic fails. The land fractures and
  dissolves. The sky goes dark. What remains, if anything, is beyond mortal
  knowledge.

  The Deathless curse ends with the world. Every Deathless is granted a final,
  true death. Whether this is mercy or annihilation depends on one's theology.

  _This ritual cannot be reversed once completed._],
  sacrifice: "1 vial of Materia Nigra (consumed) + the permanent death of a willing Deathless participant (the sacrifice's soul is annihilated; they do not reincorporate)",
  aspects: ("Ash", "Skull"),
  failure: "The Heart shudders but does not stop. The caster and all participants within Burst 10 suffer 300% Void damage (ignores Armor and Ward). The Materia Nigra is consumed. The sacrifice is still annihilated. The ritual may be attempted again with new materials and a new sacrifice.",
  flavor: "She Who Waits Beyond has been patient. She will be patient a little longer, if she must.",
)

#ritual-description(
  "Rite of the Second Birth",
  6,
  "Occultism",
  "15",
  "35",
  "7 days",
  [The caster heals the Heart of the World and, in doing so, channels the
  accumulated divine essence of the sacrificed reliquary fragments into it. The
  dead god whose fragments were offered is reborn --- not as they were, but shaped
  by the state of the world and the intent of the caster. The reborn god assumes
  dominion over the healed world.

  The Fog ceases. The ambient magical energy that sustained magitek is replaced by
  the reborn god's power --- different in character, but no less potent. The
  Deathless curse is lifted: the cycle of death and rebirth resumes, and the
  Deathless become mortal once more. Whether they retain their memories of the Age
  of Ash is at the GM's discretion.

  The identity of the reborn god shapes the new world profoundly. A world under
  the Boar-Mother is not a world under the Falcon-Headed Sun. The GM should
  consider what the god valued in life and how their character has been altered by
  death, fragmentation, and rebirth.

  _This ritual cannot be reversed once completed._],
  sacrifice: "1 vial of Materia Rubrior (consumed) + reliquary fragments of a single dead god, totalling at least 20 tiers' worth of divine essence (consumed)",
  aspects: ("Scarab", "Sun"),
  failure: "The Heart flares with unstable divine energy. The reliquary fragments are consumed, but the god is not reborn --- instead, a fragmentary divine echo manifests, hostile and incoherent, with the statistics of a T6 Boss creature. The Materia Rubrior is consumed. The ritual may be attempted again with new materials and fragments of the same or a different god.",
  flavor: "The world was made once. It can be made again.",
)

== Designing Rituals and Recipes

This section provides guidelines for designing new rituals and alchemical recipes. Rituals and recipes occupy a different design space from combat powers: they are slow, expensive, and often transformative, and their balance is driven by cost and narrative stakes rather than by the action economy.

=== Tier Scaling

#float([#floating-table(
  "Ritual Tier Scaling",
  columns: 7,
  align: (left, center, center, center, center, center, left),
  stroke: 0.5pt,

  [*Tier*], [*Diff.*], [*Magn.*], [*Cost (#feathers)*], [*Casting Time*], [*Scope*], [*Identity*],
  [1], [3--4], [2--3], [50--200], [5--10 min], [Single target], [Local effect],
  [2], [5--6], [4--5], [200--500], [10--30 min], [Small area], [Moderate duration],
  [3], [7--8], [6--7], [500--1500], [30 min--1 hr], [Large area], [Lasting effect],
  [4], [9--10], [8--9], [1500--4000], [1--4 hours], [Transformation], [Permanent minor effects],
  [5], [11--12], [10--12], [4000--10000], [4--12 hours], [Reality-altering], [Permanent major effects],
  [6], [13+], [13+], [Priceless], [1+ days], [Legendary], [Campaign-defining],
) <ritual-scaling>])

Each point of power available to the ritual beyond its magnitude reduces the difficulty by 1, to a floor equal to the ritual's tier. This lets well-prepared casters perform rituals above their comfortable skill level, at the cost of accumulating reagents, influence, or assistants.

=== Sacrifice Types

A ritual's sacrifice is the resource it consumes. The appropriate type depends on tier and on the nature of the effect.

- *Components* (T1--T4): money and materials. A standard cost with no lasting impact beyond the price. Components are consumed whether or not the ritual succeeds.
- *Essence* (T3--T5): the caster takes strain or a long-lasting debuff. Used for rituals that channel dangerous forces. The debuff persists for days or weeks, representing a physical or spiritual cost paid by the caster personally.
- *Influence* (T4--T6): requires a concentration of specific aspects, either in the environment or in sacrificed objects. A ritual requiring Mist influence of magnitude 5, for example, must be cast in a strongly magical environment (a leyline, an ancient temple) or the caster must sacrifice a magical object that provides that level of aspect resonance. Influence is consumed: the environmental attunement fades, or the object is destroyed.

=== Aspect Requirements

Not every ritual demands aspect resonance, and lower-tier rituals should avoid it entirely so that they remain accessible to anyone with the skill and materials.

- *T1--T3:* no aspect requirements.
- *T4:* may require one aspect as Influence. Without the required aspect, difficulty increases by +2.
- *T5--T6:* require one or two specific aspects as Influence, provided by environment or sacrificed objects.

The aspects are Ash (destruction, desolation), Crown (law, domination), Forge (crafting, heat, origin), Key (opening, summoning), Mist (magic, the sublime essence), Scarab (rebirth, cycles), Skull (death, the end of things), Moon (mind, matter), and Maiden (nature).

=== Skills

Three skills cover all rituals and recipes, and they are not interchangeable:

- *Ritual* governs arcane magic and the structured traditions of Psychic practice. It is systematic and reproducible; a failed check wastes materials but carries predictable consequences.
- *Occultism* governs divine magic and the esoteric Psychic domains (Fate, Void). It relies on communion with entities rather than formula, and failed checks may have unpredictable or dangerous consequences.
- *Alchemy* covers every recipe --- potions, poisons, reagents, and explosives. Ritual and Occultism do not apply to alchemical work.

=== Design Checklist

When designing a new ritual or recipe, verify each of the following before placing it in play:

+ Difficulty and magnitude fall within the tier's band.
+ Sacrifice type is appropriate to the power level.
+ Casting time is proportional to the effect.
+ Effect description is clear and has measurable outcomes.
+ Failure consequence is defined (or the ritual uses the standard "components lost" failure).
+ Skill is specified (Ritual, Occultism, or Alchemy).
+ Aspects are required only at T4 or higher.
+ Difficulty modifiers are listed for rituals with variable scope.
+ The ritual fills a narrative or mechanical niche not already covered by a combat power.

=== Universal Reagents

Alchemical reagents are the raw material of most recipes. Readily obtainable universal reagents cap at magnitude 6, corresponding to T3. The *Philosopher's Reagent* recipe (T5, Alchemy) produces magnitude-8 reagents, and anything beyond that is unique or legendary and must be found or quested for. This cap is a hard balance lever: it prevents high-tier recipes from becoming routine, and gives the GM a natural hook for high-tier alchemy plots.
