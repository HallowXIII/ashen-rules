#import "../formatting/declarations.typ": *

#chap-header("1", "Introduction", "The Basics of the Game")

#flavor(width: 100%, citation: [The Death of the World])[
  Pochfa sheshêp tarash nyôlwâ fêhêk\
  Echayâyti yi thâlâ mêzesh i khanjhi\
  I shayâmbô hêk i tawpanj ipish tarti\
  Rhôndwâ hêk talamâ yupak râykêk\
  Zangwô yi nhayâm.
  #linebreak()
  #linebreak()
  They prayed their due as they beheld\
  The heavens opening in fire, on the valkyries’ descent\
  The dead raised their rifles, held them against plate\
  Aloft they held their hammers, glory to await\
  At the end of days.
]

Imagine a world shattered and broken, a shell of its former self. Imagine a
world reduced to cinders in the fires of the final cataclysm, that yet held on.
Imagine a world walked by those cursed not to die until they lay their regrets
to rest. This is the world of Ashen.

The cataclysm that ended the old world left wounds in the fabric of creation
itself. From these wounds seeps the Fog — the raw power of creation, unbound
and without the divine reason that once shaped it. It blankets most of the
world, spawning monsters, warping those who dwell in it, and saturating the land
with ambient magical energy so intense it can power entire cities. Only in
scattered Clears, places where the Fog has receded or been driven back, can
mortals live in relative safety.

In Ashen, you play a *Deathless*, an undying warrior, veteran of the Last War.
Your curse is two-fold: you remember little of your mortal life, and you cannot
die until you accomplish your purpose. It is only in the dangerous and
Fog-drowned wilderness that you might find release.

== Playing the Game

Ashen is a role-playing game in which the players take on the role of immortal
heroes who form a group (the Party) to go on dangerous adventures in an
unforgiving world. Another player, the Game Master (GM) takes on a special role:
to present the other players with the scenario they find themselves in and
adjudicate the results of their actions. The players, in the role of their
characters, take actions in the game world and drive the plot.

Most actions do not require any special rules to resolve. Many actions succeed
automatically, or fail automatically, following common sense. In some cases, an
action that is particularly difficult to accomplish but not impossible, or where
the precise degree of success or failure can make a material difference, must be
adjudicated by more detailed and impartial means. Like most other RPGs, Ashen
here makes recourse to die rolls.

Die rolls in the Ashen system are made using rolls of multiple dice of varying
sides; Ashen makes use of the *d4*, *d6*, *d8*, *d10* and *d12*. Most of these
dice are used to generate random numbers when the game requires it, such as when
rolling for damage in combat.

When a die roll is required to do so, the rules specify a number of dice plus
the type of die to be rolled (usually abbreviated as _XdY_, i.e. X Y-sided dice;
where the second number is left off, six-sided dice are always meant). These
dice are then rolled and the numbers on their faces added up to produce a final
result.

== The Core Mechanic

In any situation where the outcome is in doubt, Ashen uses die rolls to decide
about the success or failure of an action. Such die rolls are referred to as
"checks". For example, a character trying to open an unlocked door would not
need to roll any dice -- they succeed automatically. If the door is bolted shut
and secured with a mag-lock, however, any character attempting to breach it
would need to make a check.

=== Making a Check

Checks are made when a character attempts a particularly difficult action,
drawing on their innate abilities and training to surmount the difficulty. When
called upon to make a check, you normally roll against a particular skill or
characteristic. You roll as many six-sided dice as your character’s rating in
that skill or characteristic.

When you roll d6 in this way, they are instead used in a slightly different way
from other situations in the game when dice rolls are required. Instead of
adding up all the pips, you check the number rolled on every die. If the result
is 4 or higher, the die is counted as a success. If the result is 6, it counts
as two successes. If the result is 1, the die counts as a negative success. To
refer to d6 used in this way, the rules use the term "Ashen dice".

Checks always have a difficulty, which the GM may or may not tell you in
advance. If the total number of successes is greater than or equal to the
difficulty number of the roll, the check is considered successful and your
character accomplishes his or her goal. If not, you suffer the consequences of
failure.

=== Bonuses and Penalties
Many abilities, items and circumstances grant a bonus or a penalty to a check.
These bonuses and penalties are expressed as numbers of Ashen dice, or ±Xd for
short. As an example, a catalyst might grant you a +2d bonus to cast spells of a
certain type; firing a gun at very long ranges might give you a -2d penalty to
the shot.

To apply the bonus or penalty, modify the size of your pool accordingly. For
example, if your Marksmanship characteristic is 6, and you are firing your
weapon at three increments of range, you would roll (6d base - 2d penalty) = 4d
to make the shot. If, conversely, you were firing at point blank and your
character had the _Weapon Focus_ advance, granting them +2d to the attack, you
would roll 8d.

Bonuses and penalties both stack and cumulate with each other. To expand the
previous example, your character might have the _Weapon Focus_ advance and take
a _Precision Shot_, both granting a +2d bonus, for a total of +4d; however, your
target might be heavily concealed (-3d penalty) and at three increments of range
(-2d penalty); the total comes out to (2+2-3-2) = -1d penalty on the shot.

If, after applying all bonuses and penalties, your dice pool is reduced to zero
dice, you fail the check automatically. This applies especially if additional
penalties are inflicted after you have already declared your action.

=== Automatic Successes and Failures
In rare cases, checks can be modified by added automatic successes or failures.
When they apply, add them directly to the result of the roll, without changing
the size of your dice pool.

#note(
  [*Example:* #text(style: "italic")[Alan’s character, the Magician Myrddin, is in
      combat with a squad of ferocious Warboars. Heavily outnumbered and outgunned,
      the party has decided to flee. To buy time, Myrddin will attempt to cast the
      _Ice Storm_ spell on the front row of Warboars. _Ice Storm_ has a difficulty
      of 7 successes. Myrddin’s Arcane characteristic is 8, and his bonuses to the
      roll grant him an additional 4, so he rolls 12 dice -- they come up 5, 4, 3,
      1, 2, 3, 6, 4, 6, 2, 5 and 3. The 6s grant two successes, but the 1 counts as
      a negative success: he has barely managed to beat the target number, but he
      has beaten it. The Warboars’ war cries are drowned out by the howling wind...]],
)

=== Rounding

Whenever a rule requires you to divide a number and the result is not a whole
number, round down unless the rule specifically says otherwise.

=== Critical Failures

If, after counting all successes and negative successes, your total is *zero or negative*, the check is a *critical failure*. A critical failure is worse than ordinary failure --- something has gone actively wrong.

The consequences depend on the type of check:

- *Attack rolls:* A critical failure on an attack is a *misfire* (ranged) or *fumble* (melee). See the Combat chapter for details.
- *Skill checks:* The character not only fails but creates a new problem. A critical failure on a Subterfuge check might alert additional guards; a critical failure on a Shop check might damage the item being worked on. The GM determines the specific consequence.
- *Arcane casting checks:* The spell misfires. The Focus cost is still spent, but the effect does not occur. The caster suffers *arcane backlash*: they take damage equal to the spell's Focus cost (reduced by Ward --- their magical damage reduction; see _Damage_ in the Combat chapter) and are Dazed (losing 1 AP and having their Evasion halved) until the end of their next turn. Arcane magic is formulaic and predictable --- its failures are painful but contained.
- *Divine casting checks:* The prayer fails and the deity is displeased. The caster immediately loses 1 *favor* with the reliquary used (see _Reliquaries_ in the Equipment chapter for how favor works). Additionally, the GM may impose a deity-specific consequence: a god of war might inflict a wound, a god of nature might cause the caster's equipment to corrode, a death god might drain Essence. The consequence should reflect the deity's domain and temperament.
- *Psychic casting checks:* The power misfires catastrophically. The Focus cost is still spent, and the caster must roll for *Cosmic Backlash* (see the Powers chapter). Psychic power draws on raw willpower and the fabric of reality itself --- when it goes wrong, reality pushes back.
- *Resistance checks:* The character suffers the worst possible version of the effect they were resisting. A critical failure on a Stamina check against poison means the poison takes full effect with no opportunity to save against it later (see _Saving Throws_ in the Combat chapter) --- it lasts for the encounter or until treated.

A critical failure occurs naturally when the dice come up badly --- many 1s and few successes. It is not the same as simply failing a check; a roll of 3 successes against a difficulty of 7 is an ordinary failure, not a critical failure.

== Tracking Time

In Ashen, as in many other role-playing games, keeping track of how much time
passes in the game world is essential. As the characters cannot---at least under
ordinary circumstances---die, their success or failure in their quests often
depends on how much time passes, and whether their enemies succeed in their
goals before they can be thwarted.

However, as characters engage in various activities to fulfill their goals, the
time necessary for certain milestones can vary wildly. Outside of the
predictable rhythm of quiet time, when measuring time in hours and days is more
than adequate, action in more hectic phases of the game can take wildly
differing amounts of time. Racing to fix an airship drive might still take days,
a harrowing negotiation with a crime boss might take hours, but a fight to the
death mere seconds. As events in such periods can follow each other in quick
succession, Ashen adopts a more abstract system of tracking time.

=== Game Time

Play in Ashen is structured, at the top level, into _Acts_ and _Intermissions_.
As the name implies, acts are where the action happens, and intermissions are
the times between acts. An Act is itself divided into _Scenes_.

=== Acts

An act is a meaningful story unit---a period during which the characters further
their goals and develop the plot. An act could be a raid on an enemy fortress, a
harrowing trek across a hostile landscape, or preparing and hosting a diplomatic
gathering with the leaders of other factions.

During an act, the characters' full attention is required. They must rely on the
resources they've already gathered and the skills they've already learned.

=== Scenes

Acts are divided into _Scenes_. A scene represents a discrete event in the act.
In general, a scene plays out in a single location and deals with a single
issue. The archetypal example of a scene is combat encounter, but other types of
plot events can also constitute a scene: a ride over a collapsing bridge,
haggling with a shady merchant, or exploring a room in a ruined castle.

There are thus almost no hard and fast rules as to what constitutes a scene,
with one exception---a combat encounter is always its own scene. In game terms,
transitioning from one scene to the next has two effects: powers and abilities
that can be used once per scene refresh, and the game can switch from _open
time_ to _structured time_ or vice-versa.

=== Open Time and Structured Time

Most scenes in Ashen operate on open time---characters declare their actions in
any order, and they take as long as they need to. The time tracking resolution
does not usually drop below the level of minutes. However, for certain scenes,
the action being described unfolds quickly enough, or under enough pressure,
that finer-grained timekeeping becomes necessary. These scenes operate on
_structured time_.

=== Structured Time
A scene using structured time is divided into *stretches* and *rounds*. A round
is a fuzzy unit of time representing roughly thirty seconds---enough for every
participant to take their *turn* acting. The order of turns within the round is
determined by each participant's initiative, and during their turn a character
can take several actions, given by the amount of action points they have. A
stretch is a longer unit equal to ten rounds, or about five minutes of
in-fiction time. Combat encounters are typically run round by round; other
tense but slower-paced scenes---picking a stubborn lock with pursuers closing
in, creeping past a patrol, or sustaining a short ritual---are run stretch by
stretch.

==== Initiative
In the heat of the moment, fractions of seconds can decide between life and
untimely death. To model this, Ashen uses *initiative*.

Every round is divided into 100 initiative ticks. The round begins at tick 99,
and proceeds by every participant taking a turn at their initiative tick, with
higher initiatives going first. When the count reaches initiative 0, the round
ends and a new round begins at tick 99.

To decide your initiative, you must roll it when you enter into combat. To roll
initiative, roll as many D6 as your character’s Initiative rating, and add up
all the pips. This number is your initiative and determines your place in the
initiative order.

==== Extreme Initiative
If a participant scores an initiative X greater than 99, their initiative “rolls
over”: X - 100 becomes their initiative count for all subsequent rounds. In
combat, this grants special benefits related to surprise (see _Surprise_ in the
Combat chapter).

==== Actions and Action Points
In structured time, everytime you wish to do something, you must take an action
to do it. Actions consume *Action Points (AP)*; every creature has a set number
of AP per turn, usually 4 of them. On every creature’s turn, that creature can
take actions by spending action points; when a creature is out of action points,
it can no longer take additional actions and must end its turn. On the start of
its turn, a creature recovers all its spent action points. Unspent ones are
lost---they do not carry over between turns.

==== Stretches
Some scenes are too tense to resolve in open time, but the action does not
unfold quickly enough to merit tracking initiative and action points round by
round. Picking a lock with the city watch closing in, sneaking through a
patrolled corridor, sustaining a short ritual, or searching a room before its
occupant returns are all examples. In these situations, the GM may run the
scene in *stretches*: each stretch represents about five minutes of in-fiction
time, or ten rounds. On each stretch, every participating character declares
one significant action---an attempt at the lock, a careful advance, a
contribution to the ritual---and the GM resolves them together before
checking whether the situation has changed: a guard arrives, the spell
completes, the door bursts open, and so on.

A scene running in stretches can drop into rounds at any point, and vice
versa. If the city watch breaks down the door mid-stretch, roll initiative and
proceed in rounds; once the fight ends, the surviving characters might shift
back into stretches to pursue a fleeing enemy or stabilize a wounded ally
before the scene loosens out into open time.

=== Intermissions

When an act ends, the game enters an intermission. Intermissions are essentially
downtime --- during an intermission, every character's Essence, Health and Focus
refresh, and the characters have the opportunity to spend XP, allocate skill
points, and purchase new equipment.

==== Equipment Maintenance

Equipment requires regular upkeep to remain in working order. During each intermission, every character must pay a *maintenance cost* equal to *10% of the total base price* of all equipment they own (carried, equipped, and wielded). This covers repairs, replacement parts, ammunition stockpiling, power cell recharging, enchantment stabilization, and general wear.

Modifications increase the maintenance cost: add the modification's cost to the base price before calculating the 10%. A #feathers 3150 Silvered Moontouched Longsword costs #feathers 315 per intermission to maintain.

Items that are not maintained risk degradation. For each unmaintained item, the GM rolls on the following table at the start of the next act:

#pftab(
  "Equipment Degradation",
  columns: (1fr, 5fr),
  breakable: true,
  [D10],
  [Result],
  [1--3],
  [*Cosmetic wear.* The item looks battered but functions normally. No mechanical effect --- this time.],
  [4--5],
  [*Reduced stats.* One of the item's primary stats is reduced: --1/T damage (weapons), --2/T Armor or Ward (armor), or --1/2T Casting bonus (catalysts). This penalty is cumulative across intermissions and persists until the item is repaired (costs the skipped maintenance plus 25%).],
  [6--7],
  [*Lost quality.* One of the item's special properties ceases to function: a treatment wears off, an enchantment goes dormant, or a material property degrades. The GM chooses which. Restoring it requires re-applying the modification at full cost.],
  [8--9],
  [*Gained defect.* The item develops a negative quality: weapons become prone to dangerous malfunctions (gaining the Overload keyword; see _Weapon Keywords_ in the Equipment chapter); armor develops weak points (--1 Evasion); catalysts become erratic (--1d to casting checks). This defect persists until repaired.],
  [10],
  [*Catastrophic failure.* The item breaks down entirely and cannot be used until repaired. Repair costs the full maintenance cost plus 50%, and requires a Shop or Ritual check at difficulty equal to the item's tier + 3.],
)

Tier 0 items (Old War surplus) have no maintenance cost --- they are already in the worst shape they can be in. Legendary items have unique maintenance requirements determined by the GM, usually involving rare materials or specific conditions rather than a flat currency cost.

== Basic Rules and Common Terms
Many of the following rules make reference to some common concepts that bear
explanation.

=== Character Statistics

Every character is largely defined in game terms by several sets of numbers.
Fundamentally, a character is said to have *Attributes*, *Characteristics*,
*Skills* and *Derived Statistics*.

Of these, *Attributes* are the most fundamental: they describe your character's
most fundamental physical and mental characteristics. Attributes include things
like a character's strength and intelligence.

*Characteristics* are a step down and measure a character's basic capability to
move and act in certain ways. Characteristics are some of a character's most
important numbers in combat. Characteristics describe traits such as a
character's swiftness of foot or their skill in melee combat.

*Skills* are similar to characteristics, but describe a character's skill in
more complex domains. They tend to be used outside of combat. Skills include a
character's proficiency in map-reading, alchemy or disguising themselves.

*Statistics*, finally, is a catch-all term for numbers derived purely
mechanically in some way from choices made in character creation and
advancement. Such numbers include a character's hit points and armor rating.

Attributes, Characteristics and Skills all have *ranks*: a number from 1 to 6
representing a character's innate proficiency and training in that Attribute,
Characteristic or Skill.

Characteristics and Skills also have ratings: a number that ranges between *3
and 18*. The ratings are composed of a character's ranks in that statistic, from
1 to 6, and their *attribute bonuses* to the statistic, equal to the character's
ranks in those attributes. Each skill and characteristic gains bonuses from two
attributes, listed below.

The values of derived statistics usually also have ratings, but there is no
uniform way of calculating them.

=== Equipment States

Items a character owns can be in one of three states: *carried*, *equipped*, or *wielded*. Carried items are stowed in a pack or on a character's person but are not ready for immediate use. Equipped items are worn or readied on the body and available to be drawn quickly. Wielded items are actively held in hand and ready to use. For full definitions, see _Equipment States_ in the Equipment chapter.

=== Advances and Powers

Apart from a character's numbers, the choices that most influence a character's
development have to do with the advances and powers they learn over the course
of the adventures.

Advances are improvements to your character's statistics and abilities purchased
with the experience points you earn while adventuring. They can grant you a
variety of benefits from increasing your attributes and characteristics to
improving your skill at certain actions.

Powers are extraordinary actions you can perform during combat. Powers can span
the gamut from magical spells to heroic feats of skill at your weapons. They can
be learnt in a variety of ways: some can be purchased as advances, others must
be obtained through instruction from a master.

==== Arcane Spells

Arcane spellcasters learn spells by studying written formulae --- copying them
from spellbooks, scrolls, or the notes of other casters. A character can know
any number of arcane spells, but knowing a spell is not enough to cast it. To
use an arcane spell in the field, it must first be *prepared*.

Preparation is a ritual process that requires several hours of undisturbed
concentration, access to ritual materials (chalk, ink, and other minor
components), and a quiet environment. Most casters prepare their spells during
a long rest. Once preparation is complete, the spells remain available until
the caster next prepares --- there is no time limit, but there is also no way
to change the selection without performing the full ritual again.

The number and tier of spells a character can prepare is determined by their
*spell slots*, which are gained from the Spell Memory advances. Each spell
slot holds one spell of its tier or lower. For example, a character with one
Tier 1 slot and one Tier 2 slot can prepare two spells: one of Tier 1 or
lower in the first slot, and one of Tier 2 or lower in the second. Each
Spell Memory advance can be taken multiple times, adding an additional slot
of that tier each time.

Arcane spells are, in effect, a form of loot. Larger towns often have
resident casters who can be persuaded --- or paid --- to share their
knowledge, and the ruins of the old world frequently contain spellbooks
among their treasures.

==== Divine Prayers

Divine prayers are not learned or prepared. They are granted by a character's
wielded *reliquary* --- a remnant of a dead god that retains a portion of
divine power. Each reliquary provides access to prayers from one or more
aspects (thematic domains such as Ash, Crown, or Veil), up to the tier of the reliquary itself. As long as the reliquary
is wielded and the character has earned its favor, those prayers are available
to cast. See _Reliquaries_ in the Equipment chapter for the full rules on
favor, will, and tapping.

A character who switches to a different reliquary immediately gains access to
that reliquary's prayers (assuming favor has been earned) and loses access to
the previous one's. This makes the choice of reliquary one of the most
important decisions a divine caster can make.

==== Psychic Powers

Psychic powers are intrinsic to the character. Each Discipline advance grants
the character a psychic power permanently --- once learned, a psychic power
is always available and does not need to be prepared or equipped. Psychic
powers can be taught by one practitioner to another, but the process is long
--- days to months of intensive mental training --- and requires the student
to commit XP through a Discipline advance. As with all advances, this can
only be done during an intermission, unless extraordinary circumstances
(a divine blessing, communion with a powerful artifact) allow it.

==== Martial Exploits

Martial exploits are combat techniques learned through training and battle
experience. Each Exploit advance grants the character one exploit
permanently. Like psychic powers, exploits are always available once learned
and do not require preparation. Exploits are typically learned from a
master-at-arms, a fighting school, or through the hard lessons of combat
itself --- but always during an intermission, when the character has time to
train.

#colbreak()

=== Legendary

Some items, powers, and advances are marked as *legendary*. Legendary things share two properties: they are _quest-bound_ (they cannot simply be purchased or learned --- they must be earned, recovered, or unlocked through a significant quest or story event), and they are _extraordinary_ (they break or transcend the normal rules in some way).

For items, legendary also implies _uniqueness_: only one copy of a legendary item exists in the world. For powers and advances, the meaning is looser --- legendary denotes rarity and distinction rather than strict uniqueness. A legendary power might be shared by a handful of powerful beings, or a legendary advance might be the birthright of a small group created for a specific purpose. What sets them apart is not that no one else can have them, but that they cannot be attained through ordinary means.

A legendary item might be an ancient weapon with a power that cannot be replicated. A legendary power might represent a character's latent ability, forgotten across lifetimes, that resurfaces only when the right conditions are met. A legendary advance might unlock a capability that no amount of ordinary training could produce.

The specific rules for legendary items, including enchantment slots, are detailed in the Equipment chapter. The key principle is universal: legendary things are not available at will. They are milestones, not purchases.
