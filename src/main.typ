#import "formatting/style.typ": *
#import "declarations.typ": *
#set page(paper: "a4")
#show: pf-stylization
#set document(title: "Ashen Rulebook")

#set document(
  title: "Ashen Rules",
  author: "Hallow XIII",
  description: "The Ashen Rulebook",
  keywords: (),
  date: datetime(
    day: 29,
    hour: 15,
    minute: 8,
    month: 3,
    second: 0,
    year: 2026,
  ),
)

#titlepage("Ashen", subtitle: "Role-Playing Game", description: "Core Rulebook")

#outline(title: [Table of Contents], depth: 2, indent: 2em)

#pagebreak()

#chap-header("1", [= Introduction], "The Basics of the Game")
\
#flavor[
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
--- The Death of the World

\

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

= Playing the Game

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

#note([*Example:* #text(style: "italic")[Alan’s character, the Magician Myrddin, is in
  combat with a squad of ferocious Warboars. Heavily outnumbered and outgunned,
  the party has decided to flee. To buy time, Myrddin will attempt to cast the
  _Ice Storm_ spell on the front row of Warboars. _Ice Storm_ has a difficulty
  of 7 successes. Myrddin’s Arcane characteristic is 8, and his bonuses to the
  roll grant him an additional 4, so he rolls 12 dice -- they come up 5, 4, 3,
  1, 2, 3, 6, 4, 6, 2, 5 and 3. The 6s grant two successes, but the 1 counts as
  a negative success: he has barely managed to beat the target number, but he
  has beaten it. The Warboars’ war cries are drowned out by the howling wind...]])

=== Rounding

Whenever a rule requires you to divide a number and the result is not a whole
number, round down unless the rule specifically says otherwise.

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
downtime---during an intermission, every character's Essence, Health and Focus
refresh, and the characters have the opportunity to spend XP, allocate skill
points, and purchase new equipment.

#colbreak()

= Characters

#flavor([
  Azal jalē vahttan \
  Iryane niboltvānhē \ 
  Nidaumave avorhōyō \
  Narvim iluiyamgo vatauhanyō \
  Aivašti arvahvamdō \
  Avahmāš nyašbittī! \
#linebreak() 
As hero of the Azalmen \
Truly thou art now remade \ 
In thy hands, our hope we ken \
Our silver-gleaming blade \
With godly fire burn them then \
Who sought to be our foes!
])

--- The Lay of Ingin \
#linebreak()

Characters are the lifeblood of Ashen. They are the roles the players take on
when they play the game. Each character is unique: they may belong to one of
several different races, have their own history (reflected in their Background)
and be trained in several different skills and styles of combat.

The following sections present an overview of character creation as well as an
introduction to some of the most important features of player characters in game
terms. Character options are listed later in dedicated chapters.

== Creating a Character

To get started playing Ashen, you must create your player character. As a first
step, think about the general concept of your character: do you wish to play a
sly rogue, a bookish scholar, or maybe a battle-hardened veteran? Your concept
will guide every choice that follows --- the race you pick, the attributes you
prioritize, and the advances you buy should all serve a coherent idea of who
your character is and how they fight.

#attention[
  A word of warning: the advance system gives you a great deal of flexibility,
  but a character who spreads their resources too thinly will struggle compared
  to one who commits to one or two strengths. Decide early what your character
  is _good at_ and invest accordingly. You can always broaden later; you
  cannot easily recover from a weak foundation.
]

Once you have made up your mind on what kind of character you wish to play, you
can use the following sequence of steps to convert your concept into a
fully-fledged Ashen character:

=== 1. Pick a Race

The first step is to pick your character’s race. Your race determines your
starting racial traits --- innate powers and abilities that define how your
character interacts with the world. Some races are better suited to certain
roles than others: Ironhand Clockworks make natural heavy fighters, Porcelains
are gifted arcanists, Echoes are mobile and elusive, Soot-Beasts are
resilient brawlers and commanders, and Humans have a unique relationship with
magic and the divine. Read the _Races_ chapter for full descriptions of each
race and subtype.

=== 2. Determine Attributes

Every character has ten attributes, each starting at rank 1. Choose *three*
attributes to raise to rank 2. These initial choices shape your character’s
strengths for the early game and influence which characteristics and skills
you will excel at.

When choosing attributes, consider which characteristics matter most for your
concept. Each characteristic is derived from two attributes (see _Attributes
and Characteristics_), so raising an attribute that feeds multiple
characteristics you care about is more efficient than spreading your choices.
Some examples:

- A melee combatant might raise *Strength* (Martial, Stamina), *Endurance*
  (Speed, Stamina, Grit), and *Agility* (Dodge, Speed).
- An arcane caster might raise *Attunement* (Arcane, Potential),
  *Intelligence* (Arcane, Initiative), and *Will* (Potential, Grit).
- A divine caster or commander might raise *Presence* (Command),
  *Will* (Potential, Grit), and *Endurance* (Stamina, Speed, Grit).
- A marksman or scout might raise *Dexterity* (Marksmanship),
  *Perception* (Marksmanship, Dodge), and *Agility* (Dodge, Speed).

=== 3. Allocate Skill Points

Every character begins with *11 skill points (SP)* --- 10 base, plus 1 from
your starting 1000 XP. Skill points are spent to learn trained skills (1 SP
to learn, granting rank 1) and to improve any skill’s rank further (cost
equal to the rank you are reaching: 1 SP for rank 2, 2 SP for rank 3, and
so on). See the _Skills_ chapter for the full cost table and skill
descriptions.

At character creation, you will typically want to learn 3--5 trained skills
and raise one or two of your most important skills to rank 2 or 3. A few
guidelines:

- Every character benefits from at least one social skill (Persuasion,
  Deception, or Intimidation) and one awareness skill (Observation or
  Investigation).
- Combat characters should consider investing in Athletics or Acrobatics for
  mobility.
- Casters should invest in the skill that matches their casting tradition:
  Ritual for arcane, Occultism for divine, and either for psychic.
- The Piloting skill is useful if your campaign involves vehicles.

=== 4. Buy Advances

Every character starts with *1000 experience points (XP)* representing their
previous combat experience and training. You spend XP during character
creation (and later, during intermissions) to purchase *advances* --- permanent
improvements to your statistics and abilities.

Each advance costs a certain amount of XP and grants HP, FP, or both, in
addition to its specific benefit. Advances are organized by tier; at character
creation, you will be purchasing Tier 1 advances. Some advances have
prerequisites --- other advances, minimum characteristic ratings, or both ---
so plan your build with an eye toward what you want to unlock later.

Your first advances should establish your character’s core role:

- *Melee fighters* will want one or more Exploit advances to gain martial
  powers, and may want advances that improve their Martial or Dodge
  characteristics.
- *Ranged fighters* similarly benefit from Exploit advances (for
  marksmanship exploits) and characteristic improvements.
- *Arcane casters* need Spell Memory I to prepare and cast Tier 1 spells.
  Without this advance, you cannot cast arcane spells at all. You will
  also need to acquire at least one spell to prepare (see _Arcane Spells_
  under Basic Rules).
- *Divine casters* need a reliquary (purchased in step 5) to access
  prayers. Advances that improve Command help with favor checks and
  prayer casting.
- *Psychic characters* need one or more Discipline advances to gain
  psychic powers.
- *Commanders* benefit from Command advances that grant command powers
  for supporting allies.

You are unlikely to spend all 1000 XP during character creation --- and that
is normal. Unspent XP carries forward and can be spent at the next
intermission, when higher-tier advances and new powers become available.

=== 5. Buy Equipment

Each character begins the game with *#feathers 500* to spend on starting
equipment. At minimum, you will need:

- A *weapon* appropriate to your fighting style (melee, ranged, or both).
- *Armor* suitable to your build (light for mobile characters and casters,
  medium for a balance of protection and mobility, heavy for frontline
  fighters).
- A *catalyst* (if you cast arcane or psychic powers) or a *reliquary*
  (if you cast divine prayers). Without the appropriate implement, you
  cannot cast.
- Basic *gear*: a pack, rope, a light source, and any tools relevant to
  your skills (a healer’s kit, a climbing kit, an alchemy kit, etc.).

Consult the _Equipment Tables_ section for prices and statistics. At
#feathers 500, you can afford a full Tier 1 kit with some feathers left
over for consumables and sundries, or a partial Tier 2 kit if you are
willing to skimp elsewhere. You will earn more feathers through missions and
loot as the game progresses.

#attention[
  Arcane casters: remember that you need at least one *spell* to prepare.
  Your starting budget can be used to purchase a spell from a local caster
  or a spell scroll, if the GM makes one available. Discuss this with your
  GM during character creation.
]

=== 6. Calculate Statistics

Once you have completed all the above steps, calculate your character’s
derived statistics. All of these follow directly from the choices you have
already made:

- *Hit Points (HP):* 10 + HP gained from advances.
- *Focus Points (FP):* 10 + FP gained from advances.
- *Movement Speed:* 2 + your Speed rating.
- *Evasion:* Half your Dodge rating (rounded down), modified by armor.
- *Action Points (AP):* 4 (for almost all characters).
- *Essence Points (EP):* 10 + 1 per 1000 cumulative XP (11 at creation).
- *Bulk Capacity:* Equal to your Stamina rating.
- *Charge Capacity:* Equal to your Potential rating.

Verify that your equipped items do not exceed your Bulk or Charge capacity.
Record your weapon damage, armor values, and any other equipment-derived
numbers on your character sheet.

=== 7. Finishing Touches

Finally, give your character a name, a brief history, and a reason to
adventure. Every player character is a *Deathless* --- an immortal veteran
of the Last War, cursed to walk the world until they lay their regrets to
rest. Consider:

- Which *faction* does your character belong to, or are they unaligned?
  Factions provide patrons, mission opportunities, and social connections.
- What does your character *remember* of the Last War? Most Deathless
  remember little or nothing --- but fragments surface, and those
  fragments shape who they are.
- What drives your character *forward*? Deathless cannot truly die, so
  survival alone is not enough. What goal, grudge, or unanswered question
  keeps them moving?
- What *keepsake* does your character carry? Most Deathless have at least
  one object from their forgotten past --- a weathered medal, a key to an
  unknown door, a faded portrait, a weapon with an unfamiliar name
  engraved on the blade, a letter in a language they no longer read. The
  character probably does not remember what it represents, or why they
  cannot bring themselves to discard it. Work with your GM to choose a
  keepsake; it may become a thread the GM can weave into the story, giving
  the character clues to who they were before the War took their memories.


== Basic Rules and Common Terms
Many of the following rules make reference to some common concepts that bear
explanation.

=== Character Statistics

Every character is largely defined in game terms by several sets of numbers.
Fundamentally, a character is said to have *Attributes*, *Characteristics*,
*Skills* and *Derived Statistics*.

Of these, *Attributes* are the most fundamental: they describe your character’s
most fundamental physical and mental characteristics. Attributes include things
like a character’s strength and intelligence.

*Characteristics* are a step down and measure a character’s basic capability to
move and act in certain ways. Characteristics are some of a character’s most
important numbers in combat. Characteristics describe traits such as a
character's swiftness of foot or their skill in melee combat.

*Skills* are similar to characteristics, but describe a character’s skill in
more complex domains. They tend to be used outside of combat. Skills include a
character’s proficiency in map-reading, alchemy or disguising themselves.

*Statistics*, finally, is a catch-all term for numbers derived purely
mechanically in some way from choices made in character creation and
advancement. Such numbers include a character’s hit points and armor rating.

Attributes, Characteristics and Skills all have *ranks*: a number from 1 to 6
representing a character’s innate proficiency and training in that Attribute,
Characteristic or Skill.

Characteristics and Skills also have ratings: a number that ranges between *3
and 18*. The ratings are composed of a character’s ranks in that statistic, from
1 to 6, and their *attribute bonuses* to the statistic, equal to the character’s
ranks in those attributes. Each skill and characteristic gains bonuses from two
attributes, listed below.

The values of derived statistics usually also have ratings, but there is no
uniform way of calculating them.

=== Equipment States

Items a character owns can be in one of three states: *carried*, *equipped*, or *wielded*. Carried items are stowed in a pack or on a character's person but are not ready for immediate use. Equipped items are worn or readied on the body and available to be drawn quickly. Wielded items are actively held in hand and ready to use. For full definitions, see _Equipment States_ in the Equipment chapter.

=== Advances and Powers

Apart from a character’s numbers, the choices that most influence a character’s
development have to do with the advances and powers they learn over the course
of the adventures.

Advances are improvements to your character’s statistics and abilities purchased
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
aspects, up to the tier of the reliquary itself. As long as the reliquary
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

=== Legendary

Some items, powers, and advances are marked as *legendary*. Legendary things share two properties: they are _quest-bound_ (they cannot simply be purchased or learned --- they must be earned, recovered, or unlocked through a significant quest or story event), and they are _extraordinary_ (they break or transcend the normal rules in some way).

For items, legendary also implies _uniqueness_: only one copy of a legendary item exists in the world. For powers and advances, the meaning is looser --- legendary denotes rarity and distinction rather than strict uniqueness. A legendary power might be shared by a handful of powerful beings, or a legendary advance might be the birthright of a small group created for a specific purpose. What sets them apart is not that no one else can have them, but that they cannot be attained through ordinary means.

A legendary item might be an ancient weapon with a power that cannot be replicated. A legendary power might represent a character's latent ability, forgotten across lifetimes, that resurfaces only when the right conditions are met. A legendary advance might unlock a capability that no amount of ordinary training could produce.

The specific rules for legendary items, including enchantment slots, are detailed in the Equipment chapter. The key principle is universal: legendary things are not available at will. They are milestones, not purchases.

= Races

The world of ashen is a wild place. Inhabited by magical and monstrous
creatures, shaped by technology whose secrets of construction have long been
lost, it is a realm of secrets and adventure.

The immortal warriors that walk this land are themselves the heirs of magic and
technology beyond modern reckoning. From the sentient machines that are the
Clockworks to the færie Echoes, the racial composition of immortals attests to
their atypical nature.

There are seven races presented in the sections below. Each race is given a
brief introduction, including what is known of their history, and typical ranges
of physical traits for members of that race.

Most important are each race’s special abilities: while your race does not
modify your statistics, it does provide you with different physical and magical
attributes that may make particular races better or worse suited to the type of
character you want to play.

== Clockwork

#flavor[“The Goddess Third loved toys and tinkers, and when she took up arms,
  her toys marched alongside her.”]

You are a construct, a machine of supreme elegance, the watchmaker’s art united
with that of the wizard. Powered by the energy of your soul-anchor and the
arcane workings of your mechanism, you were once created for love of art and
science, and once reforged in your maker’s tears to fight like no creature could
fight.

There are two kinds of clockworks: Ironhands and Porcelains. All clockworks have
the following traits:

*Construct*

You are a machine, and thus do not need to eat, breathe, or sleep. You are
immune to poison and disease. However, you have other weaknesses instead: you
are treated as a machine and are subject to all effects that target machines.

*Wind-Up*
You are powered by the soul-anchor you carry within your body, which drives the
mechanism that moves you. When the connection to the soul-anchor is interrupted,
you become an inanimate object after three rounds until the connection is
restored. This effect can be staved off for up to one hour by winding up your
mechanism manually from the outside. After this time, you lose consciousness and
winding up has no further effect until the underlying problem is fixed.

In addition, every clockwork must choose one of the following two subtypes:

=== Ironhands

You are a walking suit of armor, made to wield heavy weapons and crush your foes
in melee. Your actual body is a magi-mechanic core that powers the limbs and
weapons of your iron form.

You gain the following racial traits:

*Walking Armor*
You cannot normally wear armor. Instead, your core is built to be fit into
combat walker frames called Construct Bodies. You begin the game with a
construct body available to you. If at any point you wish to switch to a new
one, your core must be uninstalled from your current body and inserted into the
new one. This is an operation that takes significant time -- the engineer
conducting it must roll Shop against the Equipment Rank of the construct body,
with every roll taking one day.

*Integrated Weapons*

You can mount weaponry and gear to your construct body up to its total bulk
rating. When you do this, you ignore the bulk rating on the mounted equipment.
Your charge use is calculated as normal.

=== Porcelain
Where the Ironhands are brute force, the Porcelains are effortless grace. Lithe,
youthful figures, they were originally crafted as companions for the reclusive
Just-So. When the war came, she remade them as conduits for raw magical might.

You gain the following racial traits:

*Graceful Form*
You move with supernatural grace. While you are animated, the magic within you
disguises your nature as a clockwork until someone touches your cold skin. You
are immune to effects that would trip you and you ignore movement penalties from
Difficult and Treacherous terrain.

*Spell Capacitor*

Your inner workings are optimized to focus arcane energy into destructive force.
Whenever you expend Focus, roll a D6. On a 5 or 6, you immediately regain the
lost Focus.


== Echoes
#flavor[“High and Just-As-High were different from their sister. They were not
  content to play in silence by themselves, but made wonderful playgrounds for﻿
  themselves, and filled them with playmates.”]

Echoes are fey creatures, born of the capricious goddesses of Magic, Knowledge
and Fate. The sisters ruled over their own fey domains, twisted reflections of
the material world. The Echoes that inhabited them are themselves images of
humans, refracted through the lenses of their creator-goddesses. Though these
faerie realms are long gone, the Echoes still retain some of their old power
within themselves.

All Echoes gain the following racial traits:

*Fey Jaunt*

You gain the following power:

#power-description(
  "Fey Jaunt",
  "Psychic Power",
  none,
  "Move Action, 2 AP",
  "Select one square within your move range. You teleport to it.",
  domain: "Warp",
  keywords: ("Innate",),
  cost: "6 FP",
)

*Vindictive*

It was said that those who made enemies of the Fairies would never escape their
pursuers. When an enemy damages you, you can choose to hold a grudge against
that enemy. When you next attack or use a spell power against that enemy, you
gain 1 automatic success on your attack or spell check against him. You can only
hold a grudge against one creature at a time.

There are two kinds of Echoes: Mirrors and Shades. Every Echo character must
choose one of the following subtypes:

=== Mirrors
The Mirrors, children of Might-Be, the Fateweaver, are the fairest of the
humanoid races. They lived in the beautiful lands of Faerie, once, and like many
of its denizens, they are adept at misleading their foes.

Mirrors gain the following racial trait:

*Dance of the Spring Court*

The old, hidden world of the fey is dead, but you can still call up its echoes
to bewilder your foes. You gain the following power:

#power-description(
  "Dance of the Spring Court",
  "Psychic Power",
  none,
  "Reaction (Immediate Interrupt)",
  "You may immediately teleport to any free space within 2 meters. This power does not stop the triggering attack; apply the rules for a missing target.",
  domain: "Warp",
  keywords: ("Innate",),
  cost: "6 FP",
  trigger: "You are targeted by an attack",
)


=== Shades
Shades were the favored companion of Once-Was, the Knower of Ways, Goddess of
what is Hidden and Forgotten. They are said to have dwelt deep underground, in
glorious palaces, until they rode out to hunt in the long winter nights of
Faerie.


As a Shade, you gain the following racial trait:

*Hunt of the Autumn Court*
In days of old, the goddess Came-To-Pass was worshipped as an unerring huntress.
You retain some of her essence.

You gain the following power:

#power-description(
  "Hunt of the Autumn Court",
  "Psychic Power",
  none,
  "2 AP",
  "Target one enemy within range that you or your allies can see. You place a mark upon it; while it is marked, your ranged attacks against the target ignore obscuration and partial cover. Additionally, whenever you use your Fey Jaunt power, you can choose to appear in a square adjacent to your enemy instead, even if the enemy would otherwise be out of range.",
  keywords: ("Innate", "Unerring"),
  cost: "6 FP per Tier",
  range: "15; one target",
)

== Soot-Beasts
#flavor[“The Lion-Headed God of War, jealous of his brother, pawned his
  innocence to the Boar-Mother for creations of his own. Always itching for war,
  her work had the aspect of their mother, but the temperament of their
  father.”]

This diverse race of mostly green-skinned mostly humanoids has vexed many a
scholar and led to the banning of many books. Optimized for life on the
battlefield, many associate Sootbeasts with warlikeness and bravery. Although
not all forms of them tend to display these traits, the ones presented here do.

There are two kinds of Sootbeasts: Warboars and Goldenbristles. All Sootbeasts
have the following traits:


*Asexual*

Sootbeasts reproduce in idiosyncratic ways and therefore do not have the
capacity to feel attraction to others, even (or perhaps especially) other
Sootbeasts. You are immune to being seduced, even by magical effects.

*Born for Battle*

Bred to last in grueling campaigns that would wear down an army of any other
race, you can find reserves of energy within yourself no matter how bloodied you
are. Once per encounter, you can spend an action point to give yourself a second
wind. You immediately heal up to your healing rate and end all ongoing damage
effects affecting you.

*Indomitable*

You are the pride of your hive, a son of battle. You were born to the sound of
shields cracking under axes and the drum of gun-volleys in the air. You are
immune to fear effects of any kind and cannot be compelled to run away from
battle.


In addition, every Sootbeast must choose one of the following two subtypes:

=== Warboar

You are the epitome of what people picture when they hear the word “Sootbeast”
spoken. Tough, strong, bristling with claw and tusk, you make your enemies
tremble with your coming and your allies glad to have you by their side. As a
Warboar, you gain the following racial traits:

*Unstoppable, Immovable*

You gain a +2 resistance bonus against effects that would move you against your
will. When you make an attack or activate an effect that would move your target,
gain a +2 bonus to any roll made to activate that effect.

*Tide of Iron*

To see your enemies falter before you invigorates you. When you kill another
creature with an action, you immediately regain up to 2 AP for this turn. You
cannot regain more AP than you spent on the action that triggered this ability.

=== Goldenbristle

Where there is brawn, there must be brain, or else the army will falter. While
nothing compels an Warboar to be stupid, and nothing compels a Goldenbristle to
weakness, their temperaments are by and large very different. Where a Warboar
longs to drown in the tide of battle, a Goldenbristle is content to hang back;
where a Warboar is happy (to a certain point) with taking orders, a
Goldenbristle is charismatic and imperious, reflecting their designated role as
field commanders of Sootbeast armies. As a Goldenbristle, you gain the following
racial traits:

*Born Leader*

You have a natural talent at winning others’ respect, if not loyalty, and your
orders tend to be followed. You gain a +2 bonus on Command rolls to activate
Command Powers.

*Time to strike!*

You gain a +2 bonus to your Initiative roll. In addition, once per round, you
can swap places in the initiative order with one ally you can see.

== Humans
#flavor[“And thus it was that the first-born of the gods were doomed to spend
  their lives torn between themselves, for both the Boar-Mother and the
  Falcon-Headed Sun had laid their claims to them, and neither would relinquish
  theirs until the bitter end.”]

Humans were the first of the humanoid races, product of a Tryst between the God
of Crafts, whose name is now lost, and the Boar-Mother, the great goddess of
Life and Earth. When she slew her lover in a fit of jealous rage, it was the Sun
God Kharu who adopted the young race to shield them from her wrath. Their
natures have been divided ever since, but they are closer to the fading glory of
the Gods than any other race.

*Golden Apple*

Your nature makes you both beloved of the gods, and quick to incur their anger.
When you attune to a reliquary, you begin with 1 favor already earned --- the
gods recognize their firstborn. In addition, the first time you tap a prayer
each encounter, the tap costs 0 favor instead of 1. You also gain a +2 bonus
to Occultism checks whenever you interact with divine essence, relics of the
gods, or sacred sites.

*Gift of the Sun*

Falcon-Headed Khâru is a great and terrible father; he demands much, but he
rewards with pride the efforts of his children. Once per round, you may spend
2 Essence Points to add 2 automatic successes to any check you make. This
decision is made after rolling but before the result is determined.

*Gift of the Earth*

The Boar-Mother gives freely of her gift; but those who sup too greedily
discover that with debt comes obedience. Beneficial magical effects on you
whose duration is measured in rounds last two rounds longer than usual. However,
saving throws you make against hostile magical effects require 3 successes
instead of the usual 2.

= Attributes and Characteristics

== Attributes
Attributes describe a creature’s core traits in the game. Most creatures have
ten attributes: *Strength*, *Endurance*, *Dexterity*, *Agility*, *Attunement*,
*Sight*, *Intelligence*, *Perception*, *Will* and *Presence*. Each attribute is
rated on a scale from *1 to 6*. Every character begins with a single rank in all
ten attributes before modifiers are applied.

Attributes are used together with skills to make die rolls. Every point in an
attribute adds one die to the pool. For a description of each skill, see the
skills section of the rules.

Attributes also influence a character’s combat statistics, which are described
below:

=== Strength

Strength is a measure of a character’s capacity to exert physical force. A
character with low strength will be not far beyond his race’s baseline; a
character with very high strength has both very well-developed musculature and
significant supernatural or technological assistance.

Strength contributes to a character’s capacity for Athletics and Manual Labor.
It influences the Martial and Stamina characteristics of a character. It also
adds to their Athletics skill.

=== Endurance

Endurance measures a character’s capacity to keep exerting themselves without
needing to rest. A low-Endurance character has to be careful not to overburden
themselves, lest they fail to keep up; a very high-Endurance character can fight
in the heaviest armor for hours without needing to rest.

Endurance helps a character resist harsh environments and the exertions of long
travel under muscle power. It influences a character’s Grit and Stamina
characteristics. It also assists their Athletics skill.

=== Agility
Agility represents a character’s ability to move their body quickly and
explosively. A low-Agility character might seem almost sluggish, while a very
high Agility score allows a character to run at superhuman speeds and deliver
devastatingly fast blows.

Agility assists a character in almost all spheres of physical exertion. It
influences a character’s Martial, Speed and Dodge characteristics. It also
assists their Acrobatics skill.

=== Dexterity
Where Agility is about speed and explosivity, Dexterity represents a character’s
capacity for subtlety and finesse. A character with high Dexterity is much more
likely to be able to repair an extremely complicated micromechanism or wriggle
out of rope bindings than one with low Dexterity.

Dexterity assists characters both in the control of their own body as well as in
the manipulation of various mechanisms. Dexterity adds to a character’s
Marksmanship characteristic, as well as their Access, Shop and Piloting skills.
=== Attunement
Attunement represents a character’s capacity to sense and manipulate the flow of
magical energies around them. It is an indispensable attribute for would-be
practitioners of Arcane magic, and those who would make effective use of the
many wonders they produce. A character with low Attunement will find themselves
oblivious to the presence of all but the most obvious magic, and poorly suited
to make use of magical items. A high-Attunement character, on the other hand,
will find these pursuits easy.

Attunement adds to a character’s Arcane and Potential characteristics. It also
aids in the Eerie, Magitek and Ritual skills.
=== Sight
Sight represents a character’s proverbial Sixth Sense: an uncanny talent to know
things that by rights ought to be unknowable. A character with high Sight is
difficult to surprise and uncannily resourceful; with the appropriate training,
sufficient Sight allows a character to pierce the veil of reality and perceive
what lies beyond, allowing them a modicum of clairvoyance and the ability to
make use of psychic powers.

Sight contributes to a character’s Psychic and Initiative ratings. It is also
useful for the Eerie and Occultism skills.
=== Intelligence
Intelligence represents a character’s capacity to absorb and process new
information. High Intelligence marks a character as quick-witted and capable of
finding novel solutions to problems.

Intelligence is the foundational attribute for most technical skills. It adds to
a character’s Initiative and Arcane characteristics as well as their Access,
Influence, Alchemy, Electronics and Magitek skills.
=== Perception
The mundane counterpart to Sight, Perception measures how acute a character’s
ordinary five senses are. A character with high Perception is more likely to
notice fine details that another might have missed.

Perception contributes to many different skills. It adds to a character’s
Marksmanship and Dodge ratings as well as their Alchemy and Piloting skills.

=== Will
Will represents a character’s capacity for taking decisions and seeing them
through, come hell or high water. A character with high Will will be more able
to resist pain or attempts at controlling them, as well as be more able to
follow through on their decisions.

Will contributes to a character’s Grit, Potential, Psychic and Command ratings.
It also adds to their Impose, Occultism and Ritual skills.

=== Presence
Presence is a measure of the character’s ability to capture others’ attention. A
character with high Presence cannot walk into a room unnoticed -- they are sure
to turn all the heads that can be turned. A low-Presence character is much more
forgettable, which has social disadvantages, but also lets one be more stealthy.

The Presence attribute contributes to a character’s Command rating. It also adds
to the Impose and Influence skills.

== Characteristics
Apart from their attributes, each character also has several characteristics
that are derived from them. These statistics principally influence the success
and failure of a character in combat, but occasionally may also be rolled
against in other situations.

Each character has a rating in a characteristic that normally ranges between 3
and 18. The ratings are composed of a character’s ranks in that statistic, from
1 to 6, and their attribute bonuses to the statistic. Each statistic gains
bonuses from two attributes, listed below.

A character starts with one rank in each characteristic, but may advance their
ranks in the course of play. See the sections on character creation and
advancement for details.


=== Martial
Attributes: STR + AGI \
This characteristic describes a character’s effectiveness in melee combat. It is
used to make attack rolls with melee or thrown weapons. You need to make an
opposed Martial check to resist being overpowered.

=== Marksmanship
Attributes: DEX + PER \
This characteristic describes a character’s skill with ranged weapons of all
kinds. It is used to make attack rolls with ranged and thrown weapons.

=== Initiative
Attributes: SGT + INT \
This characteristic represents a character’s alertness and quickness to act. It
determines how quickly your character gets a chance to act in combat (or in
structured time). Initiative checks are also rolled to avoid surprises and
sudden dangers, such as trap doors.

=== Speed
Attributes: AGI + END \
This characteristic represents how quick a character is on their feet. It
determines a character’s movement range. You may also need to make a speed check
when attempting to traverse ground within a certain amount of time.

=== Stamina
Attributes: STR + END \
This characteristic represents your character’s ability to keep fighting and
exerting themselves under strain. Your character’s Stamina rating determines
their *Bulk capacity* (see _Bulk and Charge_ in the Equipment chapter). Your
character may need to make a Stamina check to resist the effects of poison,
disease or fatigue.

=== Potential
Attributes: ATT + WIL \
This characteristic represents your character’s ability to control magical
energy. Your character’s Potential rating determines their *Charge capacity*
(see _Bulk and Charge_ in the Equipment chapter). You may also need to make a
Potential check to resist the effects of harmful magic.

=== Arcane
Attributes: ATT + INT \
This characteristic determines your character’s skill at casting Arcane magic.
It is used when making casting rolls for Arcane spells.

=== Psychic
Attributes: SGT + WIL \
This characteristic determines your character’s skill at using Psychic powers.

=== Command
Attributes: PRS + WIL \
This characteristic represents your character’s ability to persuade both allies
and enemies. It is used to make casting rolls for charm abilities. Since it is
also necessary to convince Reliquaries, this characteristic additionally
determines your character’s skill at casting Divine magic.

=== Dodge
Attributes: AGI + PER \
This characteristic influences how easy your character is to hit with weapon
attacks, and can allow them to avoid larger attacks as well. Dodge checks are
usually made to avoid area attacks and effects.

=== Grit
Attributes: END + WIL \
This characteristic influences your character’s ability to resist pain,
disturbing mental effects and similar noxious influences.

== Derived Statistics

The following statistics are derived from a character’s attributes, characteristics and advances. Unlike attributes and characteristics, they do not have ranks — they are calculated from other values.

=== Hit Points (HP)

Hit Points represent how much damage a character can sustain before falling. Every character begins with *10 HP*. Additional HP is gained from advances: each advance a character purchases grants a certain amount of HP as listed in its description. A character’s total HP is the sum of their base 10 plus all HP gained from advances. For rules on how damage is dealt and reduced, including damage types, Armor, Ward, and resistances, see _Damage_ in the Combat chapter.

=== Focus Points (FP)

Focus Points fuel a character’s extraordinary abilities, including spells, prayers and psychic powers. Every character begins with *10 FP*. Additional FP is gained from advances in the same way as HP. A character’s total FP is the sum of their base 10 plus all FP gained from advances.

=== Movement Speed

A character’s Movement Speed determines how many squares they can move with a single move action. Movement Speed is equal to *2 + the character’s Speed rating*. A starting character typically has a Movement Speed of 5 squares, while a character at the peak of their physical ability can reach 20 or more with advances.

=== Evasion

Evasion represents how difficult a character is to hit with attacks. A character’s base Evasion is equal to *half their Dodge rating, rounded down*. This base value is then modified by armor (light armor typically grants a bonus, heavy armor imposes a penalty) and other effects.

=== Action Points (AP)

Every character has *4 Action Points* per turn. AP is spent to take actions during combat; unspent AP is lost at the end of a character’s turn. Some advances and effects can modify the number of AP available.

== Essence Points

Each character has a number of *Essence Points (EP)* that control that
character’s ability to recover from damage and exhaustion. A character starts
with 10 EP and gains an additional EP every time he or she gains 1000
experience.

Characters can spend EP to recover from damage and even return from the dead.
The costs are as follows:

A Deathless character who dies may spend 5 EP on their next turn to revive on
the spot. See #link(<death-and-revival>)[_Death and Revival_] in the Combat
chapter for the full rules, and #link(<death-and-reincorporation>)[_Death and
Reincorporation_] in the Exploration chapter for what happens when spot-revival
is not possible.

When taking a rest, a character may spend 1 EP to recover either *half their
health* or *their entire focus*. Characters suffering from magical effects that
do not require special measures to end may also spend 1 EP to end them.

Whenever you take a *long rest*, you recover 3 EP.

#include "skills.typ"

#include "advances.typ"

#include "powers.typ"

#include "equipment.typ"

#include "combat.typ"

#include "exploration.typ"

#include "setting.typ"

#include "gmguide.typ"




