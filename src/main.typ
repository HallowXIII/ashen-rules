#import "formatting/style.typ": *
#import "declarations.typ": *
#set page(paper: "a4")
#set document(title: "Ashen Rulebook")
#show: pf-stylization 

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
    year: 2026
  )
)

#align(center, text(24pt)[*The Ashen Rulebook*])

#pagebreak()

#outline(title: [Table of Contents], depth: 2, indent: 2em)

#pagebreak()

= Introduction
\
#flavor[
  Pochfa sheshêp tarash nyôlwâ fêhêk\
  Echayâyti yi thâlâ mêzesh i khanjhi\
  I shayâmbô hêk i tawpanj ipish tarti\
  Rhôndwâ hêk talamâ yupak râykêk\
  Zawnjwô yi nhayâm.


  They prayed their due as they beheld\
  The heavens opening in fire, on the valkyries’ descent\
  The dead raised their rifles, held them against plate\
  Aloft they held their hammers, glory to await\
  At the end of days.
]

\

Imagine a world shattered and broken, a shell of its former self. Imagine a
world reduced to cinders in the fires of the final cataclysm, that yet held on.
Imagine a world walked by those cursed not to die until they lay their regrets
to rest. This is the world of Ashen.

In Ashen, you play an *Immortal*, an undying warrior, veteran of the Last War.
Your curse is two-fold: you remember little of your mortal life, and you cannot
die until you accomplish your purpose. It is only in the dangerous and
fog-drowned wilderness that you might find release.

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

*Example:* #text(style: "italic")[Alan’s character, the Magician Myrddin, is in
  combat with a squad of ferocious Warboars. Heavily outnumbered and outgunned,
  the party has decided to flee. To buy time, Myrddin will attempt to cast the
  _Ice Storm_ spell on the front row of Warboars. _Ice Storm_ has a difficulty
  of 7 successes. Myrddin’s Arcane characteristic is 8, and his bonuses to the
  roll grant him an additional 4, so he rolls 12 dice -- they come up 5, 4, 3,
  1, 2, 3, 6, 4, 6, 2, 5 and 3. The 6s grant two successes, but the 1 counts as
  a negative success: he has barely managed to beat the target number, but he
  has beaten it. The Warboars’ war cries are drowned out by the howling wind...]

== Tracking Time

In Ashen, as in many other role-playing games, keeping track of how much time
passes in the game world is essential. As the characters cannot---at least under
ordinary circumstances---die, their success or failure in their quests often
depends on how much time passes, and whether their enemies succeed in their
goals before they can be thwarted.

However, as characters engage in various activities to fulfill their goals, the
time necessary for certain milestones can vary wildly. Outside of the
predictable rhythm of quiet time---when measuring time in hours and days is more
than adequate---action in more hectic phases of the game can take wildly
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
plot events can also constitute a scene---a ride over a collapsing bridge,
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
most notably combat encounters, because the action being described usually
happens over the course of just a few seconds, keeping even more fine-grained
track of time is necessary. These scenes operate on _structured time_.

=== Structured Time
A scene using structured time is divided into *rounds*, fuzzy units of time
representing a few seconds---enough for every participant to take their turn
acting. The order of turns within the round is determined by each participant’s
initiative. During their turn, under normal circumstances a character can take
several actions, given by the amount of action points they have.

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
If a combatant scores an initiative X greater than 99, their initiative “rolls
over” and they act for the first time in an extra round (the _surprise round_)
at initiative X - 100, which becomes their initiative count during all
subsequent turns. If this circumstance obtains for the first time while the
battle is already underway, the character can take a turn immediately; the
normal initiative order then resumes, with the character's initiative adjusted
as detailed above.

==== Actions and Action Points
In structured time, everytime you wish to do something, you must take an action
to do it. Actions consume *Action Points (AP)*; every creature has a set number
of AP per turn, usually 4 of them. On every creature’s turn, that creature can
take actions by spending action points; when a creature is out of action points,
it can no longer take additional actions and must end its turn. On the start of
its turn, a creature recovers all its spent action points. Unspent ones are
lost---they do not carry over between turns.

=== Intermissions

When an act ends, the game enters an intermission. Intermissions are essentially
downtime---during an intermission, every character's Essence, Health and Focus
refresh, and the characters have the opportunity to spend XP and purchase new
equipment.

= Characters

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
sly rogue, a bookish scholar, or maybe a battle-hardened veteran?

Once you have made up your mind on what kind of character you wish to play, you
can use the following sequence of steps to convert your concept into a
fully-fledged Ashen character:
=== 1. Pick a Race

The first step is to pick your character’s race. Your character’s race indicates
a lot about their history and origin. It also sets your basic physical traits
and grants you access to race-specific powers – choose wisely!

=== 2. Determine Attributes
When you have picked your race, pick three of your attributes (see _Attributes
and Characteristics_) to start at 2. The rest start at 1.

=== 3. Buy Advances
Every character starts with some number of experience points (1000 at the
beginning of the game) representing their previous combat experience and
training. You can spend these points to improve your stats and learn combat
powers.

=== 4. Buy Equipment
Each character begins the game with Ƒ 500 that can be used to buy gear and
items for your character. Consult the _Equipment Tables_ section for prices.

=== 5. Finishing Details
Once you have completed all the above steps, you can complete your character
sheet by calculating your character’s statistics, which all depend on the
choices made in previous sections.


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

=== Advances, Powers and Talents

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

Talents, finally, are improvements to your skills. They are purchased using your
aggregate skill experience, and allow you to perform better when using your
skills or even to use your skills in novel ways.


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
  "Psionic Power",
  none,
  "Move Action, 2 AP",
  "Select one square within your move range. You teleport to it.",
  domain: "Warp",
  keywords: "Innate",
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
  "Psionic Power",
  none,
  "Reaction (Immediate Interrupt)",
  "You may immediately teleport to any free space within 2 meters. This power does not stop the triggering attack; apply the rules for a missing target.",
  domain: "Warp",
  keywords: "Innate",
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
  keywords: "Innate, Unerring",
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
When you tap a reliquary to boost your Divine spells, you can make your roll
against their will with +1 die. However, if you fail, you automatically incur
two points of disapproval.

*Gift of the Sun*

Falcon-Headed Kharu is a great and terrible father; he demands much, but he
rewards with pride the efforts of his children. You gain the following power:

#power-description(
  "Gift of the Sun",
  "Spell",
  none,
  "Spell Action, 1 AP",
  "You can lose half your Health; all allies within close range that have line of sight to you immediately recover a quarter of their Health.",
  cost: "0 FP",
)

*Gift of the Earth*

The Boar-Mother gives freely of her gift; but those who sup too greedily
discover that with debt comes obedience. All effects on you whose duration is
measured in rounds last one round longer than usual, whether they be beneficial
or harmful to you.

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
exerting themselves under strain. It determines your character’s carrying
capacity and the maximum bulk of their equipped items. Your character may need
to make a stamina check to resist the effects of poison, disease or fatigue.

=== Potential
Attributes: ATT + WIL \
This characteristic represents your character’s ability to control magical
energy. It determines the maximum magic charge of the items your character can
make use of at any given time. You may also need to make a Potential check to
resist the effects of harmful magic.

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

== Essence Points

Each character has a number of *Essence Points (EP)* that control that
character’s ability to recover from damage and exhaustion. A character starts
with 10 EP and gains an additional EP every time he or she gains 1000
experience.

Characters can spend EP to recover from damage and even return from the dead.
The costs are as follows:

It costs 5 EP to prevent discorporation on death. A character may decide to
spend 5 EP on this at the beginning of their turn when they are dead. If they do
so, the normal death rules are suspended and they revive at full HP at the
beginning of their next turn.

When taking a rest, a character may spend 1 EP to recover either *half their
health* or *their entire focus*. Characters suffering from magical effects that
do not require special measures to end may also spend 1 EP to end them.

Whenever you take a *long rest*, you recover 3 EP.

#include "skills.typ"

#include "advances.typ"

#include "powers.typ"

#include "equipment.typ"

= Combat

Sometimes, characters’ conflicts cannot be resolved in a way other than coming
to blows. These situations are handled by the combat rules.

== How combat works

When characters find themselves in combat, they enter into *structured time* \-
because the action being described usually happens over the course of just a few
seconds, it is important to track the time in detail. To do so, each combat
scene is modeled as a cyclical sequence of rounds.

=== The order of combat

A combat scene is divided into *rounds*, fuzzy units of time representing a few
seconds \-- enough for every participant in combat to take their *turn* acting.
The order of turns within the round is determined by each participant’s
initiative. During their turn, under normal circumstances a character can take
several actions, given by the amount of action points they have.

=== Initiative

In the heat of combat, fractions of seconds can decide between life and untimely
death. To model this, Ashen uses *initiative.*

Every round is divided into 100 initiative *ticks*. The round begins at tick 99,
and proceeds by every participant taking a turn at their initiative tick, with
higher initiatives going first. When the count reaches initiative 0, the round
ends and a new round begins at tick 99\.

To decide your initiative, you must roll it when you enter into combat. To roll
initiative, roll as many D6 as your character’s Initiative rating, and add up
all the pips. This number is your initiative and determines your place in the
initiative order.

==== Beginning and Joining Combat

A combat begins when the first hostile action is taken or declared.

If a combat begins and some participants are not aware of their opponents, they
are surprised. A surprised combatant is *exposed* until they take their first
turn.

If this happens, the aware combatants may act in a special surprise round before
the combat proper begins. During the surprise round, only aware combatants may
act; surprised combatants skip their turns.

==== Extreme Initiative

If a combatant rolls an initiative X greater than 99, their initiative “rolls
over” and they act the first time in the surprise round at initiative X \- 100,
which becomes their initiative count during all subsequent turns. If this
happens, they may treat all other combatants as surprised during their first
turn.

A combatant that already has surprise and rolls an initiative higher than 99
also receives this benefit, in effect obtaining two surprise turns.

=== Actions and Action Points

In combat (or other structured game time), everytime you wish to do something,
you must take an action to do it. Actions consume action points; every creature
has a set number of *Action Points (AP)*, usually 4 of them. On every creature’s
turn, that creature can take actions by spending action points; when a creature
is out of action points, it can no longer take additional actions and must end
its turn. On the start of its turn, a creature recovers all its spent action
points. Unspent ones are lost \- they do not carry over between turns.

=== Reactions

Reactions are special actions that can be taken when it is not your turn. Reactions do not cost AP. Each character can take one reaction per round; this reaction resets at the start of the character's turn. Some powers or advances may grant additional reactions.

When a reaction is triggered, it interrupts the action that triggered it. The reaction is resolved before the triggering action continues.

==== Triggering Reactions

Reactions may trigger during different phases of an attack or action:

- *Target selection* — triggers when you are chosen as a target (e.g., Fire Overwatch triggers when you are targeted by a charge).
- *Resolution* — triggers when the attack hits or misses (e.g., certain defensive abilities trigger on being hit).
- *Damage* — triggers when you would take damage or be affected (e.g., Dive triggers when you would be damaged by an area effect).

A reaction specifies which phase it triggers on. You may only use a reaction appropriate to the current phase.

== Actions during Combat

Every character has a large and varying set of actions available to take during
combat.

==== Standard Actions (1 AP)

*Brace* \
*Disengage* \
*Draw/Stash* \
*Drop Prone* \
*Stand Up* \
*Take Aim*

==== Standard Actions (2 AP)

*Dash* \
*Attack* \
*Use Item* \

==== Standard Actions (3 AP)

*Multiattack* \
*Automatic Fire* \
*Charge*

==== Standard Actions (Special)

*Move* \
*Use Skill* \
*Use Power* \
*Cast Spell*

==== Reactions

*Counterspell* \
*Dive* \
*Fire Overwatch* \
*Opportunity Attack*

=== Explanation of Actions

==== Special Actions

===== Move

When you take a move action, you can move up to your speed. Move actions cost
progressively more action points as you take them; the first one costs 1, the
second 2 and so on.

===== Use Item

You can use an action to make use of an item in your possession. The amount of
action points required for this varies depending on the item; it is usually a
standard action.

===== Use Power

You can use a combat power or magic spell available to you, consuming action
points as specified in the power’s description. Most powers can be used as a
standard action, but some may also require a full action.

===== Use Skill

On occasion, you may wish to take an action in combat that requires a skill roll
(such as using Acrobatics to run over a cable, using Shop to restart a stuck
mechanism, etc.) The GM adjudicates the number of action points using a skill
requires depending on the situation.

==== Minor Actions

Minor actions cost 1 AP each to perform.

===== Brace

You can brace a heavy weapon to stabilize it. This can mean propping it against
a stable surface, or taking a more stable position to fire it from. Once you
have braced a heavy weapon, you remain braced until you move it from the braced
position. While you have your heavy weapon braced, you can fire it normally
without the penalty that would otherwise apply to heavy weapons.

===== Command

If you are controlling a summoned creature, you can command it to take an action
on your turn. The creature will follow your instructions to the best of its
ability.

===== Disengage

When you are in melee combat, you can disengage to move one square in any
direction of your choosing. This movement does not provoke attacks of
opportunity.

===== Draw/Stash

As a minor action, you can draw a weapon or item you have equipped to wield it,
or you can stash a weapon or item you are currently wielding.

===== Drop Prone

You can drop prone as a minor action. Doing so increases your evasion by 1
point. While you are prone, you can only crawl to move, reducing your land
movement speed to half.

===== Take Aim

You can take aim at a target to increase your accuracy against it. When you do
so, you can make your next ranged attack against the target with \+2 automatic
successes.

==== Standard Action

===== Hipfire

If you are wielding a ranged weapon capable of automatic fire, you can choose to
fire it from the hip. When you fire your weapon from the hip, you can make
attacks up to its rate of fire, but you make every attack roll at \-3 successes.

===== Stand Up

If you are prone, you can stand up as a standard action.

===== Dash

You break into a sprint, moving up to double your movement speed. Unlike a
normal move action, a Dash must be in a straight line. Movement during a Dash
provokes opportunity attacks as normal.

===== Standard Attack

You make a single attack roll against the target with a weapon you are wielding.

==== Full Action

===== Automatic Fire

If you are wielding a ranged weapon capable of automatic fire, you can take the
multiattack action to make attacks up to your weapon’s rate of fire.

===== Charge

To take a charge, declare a target you can see. You must move toward that target
in a straight line, moving up to twice your speed and ending your charge
directly adjacent to your target. At the end of the charge, you can make a
standard melee attack with a weapon you are wielding, or use a power that
replaces your melee attack in a charge. You gain a \+4d power bonus to your
Martial characteristic when you make attack rolls during a charge.

===== Multiattack

If you are wielding a melee weapon capable of making multiple attacks, you can
take the multiattack action to make attacks up to your weapon’s attack rate.

==== Reactions

Reactions are special actions that you can take when it is not your turn. In
general, reactions do not consume AP, but you can only take one of them per
round. Every character automatically has access to the following reactions.

===== Counterspell

When another creature within 20 squares uses a magic power of a type that you
can currently cast (for example, an Arcane spell while you are wielding an
Arcane catalyst), you can counterspell as a reaction. To counterspell, roll the
same check as the one used to cast the spell; if you score an equal number or
more successes than the original caster, their spell fizzles without effect.

===== Dive

When you would be damaged by an area attack or magical effect, you can roll your
Dodge characteristic against the difficulty of the attack. If you beat the
difficulty, you tumble out of the attack’s range and are unaffected by it.

===== Fire Overwatch

If you are wielding a ranged weapon and are targeted for a charge, you can fire
(automatically if the weapon is capable of it) at the charging enemy. This is
always considered hip-fire.

===== Opportunity Attack

When you are wielding a melee weapon, and another creature takes a move action
that passes through your weapon reach and does not end next to you, you can
immediately make a weapon attack against it.

=== Saving Throws

Many effects and status conditions last until the affected creature "saves" against them. A saving throw is a simple roll made at the end of the affected creature's turn: roll 3 dice. If 2 or more dice show successes, the saving throw passes and the effect ends. If fewer than 2 successes are rolled, the effect persists until the creature's next turn, when they may try again.

This same mechanic is used for cover saves (when an attack targets a creature behind cover).

Note that a saving throw is not the same as a *resistance check*. A resistance check uses a specific characteristic (such as Stamina or Potential) against a difficulty set by the power. Resistance checks are made when the effect is first applied, to determine whether it takes hold at all. Saving throws are made afterward, at the end of each turn, to end an ongoing effect.

=== Status Conditions

Battles are fought with vicious means, and in the course of a fight, characters
can not only suffer damage, but may be afflicted with status conditions as well.
A list of them follows:

==== Blinded

A blinded character cannot see. While they are blinded, they lose their
perception bonus to their Evasion and make all attack rolls at a \-4 penalty.

==== Disoriented

A disoriented character does not know their position relative to their
surroundings. Every time a disoriented character attempts to move, they must
roll a scatter die. On a 10, they go in the direction of their choosing;
otherwise, they move in the direction of the scatter die.

==== Stunned

A stunned character cannot take any actions. While Stunned, a creature is also
Exposed.

==== Vulnerable

Attacks against a vulnerable creature deal their maximum damage.

==== Dazed

A dazed creature loses 1 AP and has their evasion halved.

==== Exposed

An exposed creature cannot take reactions and their dodge rating becomes 0\.

==== Panicked

A panicked creature is in thrall to its fight or flight reflex. On its turn, it
must use all its AP either to attack the object of its fear (it may use powers
to do so) or to run away from it; it cannot do both or take any other actions.

==== Staggered

A staggered creature is both vulnerable and exposed.

==== Shred (x)

A shredded creature loses x armor. Unless otherwise specified, this effect lasts
indefinitely (or at least until repaired).

==== Disrupt (x)

A disrupted creature loses x ward.

==== Slowed (x)

A slowed creature’s movement speed is reduced by x.

==== Still

A still creature cannot expend focus. Any ability that would require focus
cannot be used.

==== Prone

A prone creature has +1 Evasion against ranged attacks but -1 Evasion against
melee attacks. A prone creature can only crawl, reducing its movement speed to
half. Standing up from prone requires the Stand Up action (2 AP).

==== Immobilized

An immobilized creature cannot move by any means, including teleportation. It
can still take all other actions normally.

==== Restrained

A restrained creature cannot move, takes a -2 penalty to Evasion, and makes all
attack rolls at -2d.

==== Frightened (of X)

A frightened creature takes a -2d penalty on attack rolls and cannot willingly
move closer to the source of its fear.

==== Weakened

A weakened creature makes all attack rolls at -2d.

==== Dominated

A dominated creature acts under the controller's direction on the controller's
turn. It can only take basic actions (move, basic attack). At the end of each of
the dominated creature's turns, it may attempt a saving throw to end the effect.

==== Exhausted

An exhausted creature takes a -2d penalty on all checks and has its movement
speed halved.

==== Poisoned

A poisoned creature is suffering from a toxin. The specific effects of being
Poisoned (ongoing damage, penalties, etc.) are defined by the power or effect
that inflicted the condition. Poisoned can be removed by the Cleansing Light
prayer, the Antidote recipe, or other effects that specifically remove the
Poisoned condition.

==== Diseased

A diseased creature is afflicted by a magical or mundane illness. The specific
effects of the Disease are defined by the power that inflicted it. Unless
otherwise specified, healing received by a Diseased creature is halved. Disease
can be removed by the Cleansing Light prayer or other effects that specifically
remove Disease.

==== Bleeding

A bleeding creature has an open wound that continues to deal damage. The
specific ongoing damage is defined by the power that inflicted the condition.
Bleeding can be removed by any healing effect, by the Cleansing Light prayer, or
by an Alchemy check (difficulty set by the GM).

==== Burning

A burning creature is on fire. The specific ongoing Thermal damage is defined by
the power or effect that caused the condition. A burning creature or an adjacent
ally can spend 1 AP to attempt to extinguish the flames (saving throw). Burning
can also be removed by full immersion in water or similar effects.

= Exploration

The world of Ashen is vast and dangerous. Between battles, characters must
navigate hostile terrain, endure the elements, manage their resources, and
contend with the consequences of their immortal nature. This section provides
rules for everything that happens outside of structured combat.

== Overland Movement

Characters traveling overland cover distance based on their mode of
transportation and the terrain they are crossing.

=== Base Travel Speeds

#table(
  columns: 3,
  align: (left, center, left),
  [*Mode*], [*Distance/Day*], [*Notes*],
  [On foot], [40 miles], [Standard marching pace],
  [Mounted], [80 miles], [Horse or equivalent beast of burden],
  [Vehicle (ground)], [100 miles], [Cart, carriage, or motorized ground vehicle],
  [Skimmer], [250–500 miles], [Magical/mechanical hover vehicle; speed varies by model],
  [Airship], [300–600 miles], [See Airship Combat section for details],
)

=== Terrain Modifiers

#table(
  columns: 3,
  align: (left, center, left),
  [*Terrain*], [*Speed Modifier*], [*Examples*],
  [Road/Easy], [Normal], [Paved roads, open plains, well-maintained paths],
  [Medium (no roads)], [-25%], [Light forest, grassland without paths, gentle hills],
  [Difficult], [-60%], [Swamps, mountain passes, dense jungle, rubble-choked ruins],
  [Harsh], [-90%], [Vertical climbs, the Thorn Forest, active volcanic terrain],
)

=== Forced March

Characters can push beyond a normal day's travel (typically 8 hours of
movement). For each additional hour of travel, each character must make an
Endurance check (difficulty 4, increasing by 1 per additional hour). On failure,
the character gains the Exhausted condition until they complete a rest.

=== Navigation

When traveling off established roads, the party must designate a navigator who
makes an Investigate check at the start of each day. The difficulty depends on
the terrain and conditions:

- Open terrain with clear landmarks: 2
- Forest or hills with limited visibility: 4
- Swamp, dense jungle, or featureless desert: 6
- Inclement weather: +2 to difficulty
- No map or prior knowledge of the area: +2 to difficulty

On failure, the party veers off course, losing 25% of the day's travel distance.
On a critical failure (0 successes), the party becomes lost and must spend the
following day reorienting.

== Terrain

=== Terrain Types

*Open terrain* includes plains, roads, and cleared areas. Movement is
unimpeded and visibility is excellent.

*Forest* provides natural concealment but slows movement. Light forest is
medium terrain; dense forest is difficult terrain. Visibility is limited to
short range.

*Mountain* terrain ranges from medium (foothills, established passes) to harsh
(cliff faces, high peaks). Altitude above the treeline imposes a -1d penalty on
all physical checks unless the character is acclimatized.

*Swamp* is difficult terrain. Characters must make Endurance checks (difficulty
4) each day of travel through swamp or risk contracting disease.

*Desert* is medium terrain by day and presents extreme heat hazards.
Characters without adequate water must make Endurance checks (difficulty 4,
increasing by 1 per day) or become Exhausted.

*Arctic* terrain is medium to difficult. Extreme cold requires adequate
clothing or shelter; without it, characters take ongoing cold damage
(GM-adjudicated).

*Urban* terrain varies. Intact cities are easy terrain on streets, but
ruined or contested urban areas may be difficult terrain due to rubble,
barricades, or hostile inhabitants.

=== Terrain Hazards

- *Difficult terrain:* Movement costs double (2 squares of movement per square
  entered). Cannot charge through difficult terrain.
- *Treacherous terrain:* As difficult terrain, but characters must make an
  Acrobatics or Athletics check (difficulty 3) each round of movement or fall
  prone.

== Weather

Weather is determined by the GM or rolled randomly at the start of each day.
Roll 2D6 and consult the appropriate climate table.

=== Temperate Climate

#table(
  columns: 2,
  align: (center, left),
  [*2D6*], [*Weather*],
  [2], [Storm — heavy rain/snow, strong winds. Visibility reduced to short range. -40% travel speed. Ranged attacks at -2d.],
  [3–5], [Precipitation — rain or light snow. Light concealment at long range.],
  [6–8], [Normal — clear or partly cloudy. No effects.],
  [9–11], [Overcast — cloudy, mild. No mechanical effects.],
  [12], [Fog — heavy concealment beyond 5 squares. -25% travel speed.],
)

=== Mountain Climate

#table(
  columns: 2,
  align: (center, left),
  [*2D6*], [*Weather*],
  [2–3], [Storm — blizzard or thunderstorm. Travel in harsh terrain becomes impossible. -60% in other terrain.],
  [4–6], [Showers — intermittent rain or sleet.],
  [7–8], [Normal — clear, cold.],
  [9–10], [Fog — as temperate fog.],
  [11–12], [Strong wind — ranged attacks at -2d. Flight-based travel at -25%.],
)

=== Tropical / Swamp Climate

#table(
  columns: 2,
  align: (center, left),
  [*2D6*], [*Weather*],
  [2–3], [Thunderstorm — as storm, plus lightning hazard (GM-adjudicated).],
  [4–6], [Sweltering heat — Endurance check (difficulty 3) per 4 hours of activity or gain Exhausted.],
  [7–8], [Normal — hot and humid. No mechanical effects.],
  [9–12], [Rain — light concealment at long range. Swamp terrain becomes harsh.],
)

== Vision, Light, and Senses

=== Light Levels

*Bright light* is the default in open daylight, well-lit interiors, or within
the radius of a strong light source. No penalties apply.

*Dim light* includes twilight, candlelight, moonlight, or the edge of a light
source's radius. Dim light provides light concealment (-2d to hit targets in dim
light from bright light). Scrutiny checks at medium range or beyond take a -2d
penalty.

*Darkness* is the absence of light — underground, sealed rooms, moonless
nights. Darkness provides heavy concealment (-4d to hit). Creatures without
darkvision or another sense capable of replacing sight are effectively Blinded.

=== Special Senses

*Darkvision* allows a creature to see in darkness as if it were dim light,
out to a specified range (typically 20 squares). Darkvision is monochrome and
cannot perceive color. It does not function in magical darkness.

*Lifesense* allows a creature to detect the presence and location of living
creatures within a specified range. Lifesense penetrates walls and obstacles but
is blocked by more than 1 meter of solid stone or metal, or by effects that
mask a creature's vital signs. Lifesense does not detect undead, constructs, or
other non-living entities.

*Magicsense* allows a creature to perceive active magical effects, enchanted
objects, and creatures with an active magical aura within a specified range.
This is the sense used by the Eerie skill. Magicsense can determine the
approximate tier and school of a detected effect with a successful Eerie check.

*Tremorsense* allows a creature to detect the location of creatures and objects
in contact with the same surface (ground, floor, wall) within a specified range.
Tremorsense is defeated by flight, levitation, or very light movement
(Infiltration check vs. the detecting creature's Scrutiny).

*Blindsight* allows a creature to perceive its surroundings without relying on
sight, through echolocation, magical awareness, or other means. Blindsight
functions in darkness and is not affected by concealment, but is defeated by
total cover. Range is specified per creature.

=== Concealment

Concealment represents visual obstruction that makes a target harder to hit.

- *Light concealment:* -2d to attack rolls against the target. Caused by dim
  light, light rain, smoke, or partial visual obstruction.
- *Heavy concealment:* -4d to attack rolls against the target. Caused by
  darkness (for creatures without darkvision), heavy fog, or dense smoke.
- *Total concealment:* The target cannot be targeted by attacks that require
  line of sight.

=== Cover

Cover represents physical obstruction between an attacker and a target. When a
creature behind cover is hit by an attack, they make a cover save (roll 3 dice)
before the attack is resolved. If the save succeeds, the attack misses.

- *Light cover:* Save succeeds on 3 or more successes. Examples: low walls,
  thin pillars, sparse vegetation.
- *Normal cover:* Save succeeds on 2 or more successes. Examples: solid walls
  with firing slits, overturned tables, doorways.
- *Heavy cover:* Save succeeds on 1 or more successes. Examples: fortified
  positions, arrow slits, thick barricades.
- *Total cover:* The creature cannot be targeted directly while behind total
  cover. The creature must leave total cover to attack.

== Types of Transportation

*On foot* is the default mode of travel. Characters on foot can navigate any
terrain passable to a humanoid and carry their own equipment.

*Mounted travel* uses horses or other beasts of burden. Mounted characters
double their base travel speed on roads and open terrain. Mounts can carry
approximately 200–300 lbs depending on size and breed. Mounts require food and
water and may panic in combat without training.

*Ground vehicles* include carts, motorized carriages, and armored transports.
They offer higher capacity and speed on roads but are restricted to terrain the
vehicle can physically traverse. Fuel-cell-powered vehicles require regular
refueling.

*Skimmers* are magical or magitek hover vehicles that travel at high speed
above the ground. They can cross most terrain types but are affected by severe
weather and cannot operate in enclosed spaces. Skimmer speed varies by model
(250–500 miles/day).

*Airships* are large flying vessels capable of long-distance travel above most
hazards. See the _Airship Combat_ section for rules regarding airship
encounters.

== Disease, Hunger, and Exhaustion

=== Disease

Diseases can be contracted from environmental hazards (swamps, contaminated
water), from creatures (venomous bites, plague carriers), or from magical
effects (the Diseased condition). A contracted disease follows this progression:

+ *Exposure:* The character is exposed to a disease source. They must make an
  Endurance check against the disease's difficulty or become Diseased.
+ *Diseased:* The character gains the Diseased condition. The specific effects
  are determined by the source (see _Status Conditions_). Unless otherwise
  specified, healing received by a Diseased creature is halved.
+ *Treatment:* Disease can be treated with an Alchemy check (difficulty = the
  disease's difficulty), the Antidote recipe (for toxin-based diseases), the
  Cleansing Light prayer, or other curative effects.

=== Hunger and Thirst

Deathless characters are more resilient than mortals but are not immune to
deprivation. A character that goes without adequate food or water suffers the
following effects:

- After 3 days without food: the character gains the Weakened condition.
- After 5 days without food: the character gains the Exhausted condition
  (stacks with Weakened).
- After 1 day without water in normal conditions (or 4 hours in extreme heat):
  the character gains the Exhausted condition.

These conditions persist until the character eats or drinks adequately.

=== Exhaustion

Exhaustion can result from forced marches, sleep deprivation, environmental
exposure, or running out of resources. The Exhausted condition (-2d on all
checks, half movement speed) persists until the character completes a rest.

=== Essence as a Survival Resource

Essence Points (EP) are the fundamental resource that limits Deathless
characters over extended expeditions. EP is spent to fuel powers, revive from
death, and recover during rests. Characters recover only 3 EP per day of rest,
and scarce consumable items are the only way to accelerate this recovery.

Managing EP is the central survival challenge: a party that burns through EP in
combat may lack the resources to revive fallen members or recover from injuries
during travel.

== Currency and Economy

=== Feathers (Ƒ)

The universal unit of account in the world of Ashen is the *Feather* (Ƒ) ---
literal metallic angel feathers that are occasionally found in the ruins of the
old world. Their scarcity, durability, and the impossibility of forging
counterfeits make them an ideal currency. Feathers are accepted everywhere,
though remote settlements may prefer barter for everyday transactions.

=== Purchasing Power Guide

#table(
  columns: 2,
  align: (left, left),
  [*Item / Service*], [*Approximate Cost*],
  [Simple meal at a tavern], [_Ƒ 2_],
  [Comfortable lodging (1 night)], [_Ƒ 5_],
  [Fuel cell recharge (standard vehicle)], [_Ƒ 20_],
  [Vehicle rental (1 day)], [_Ƒ 50_],
  [Passage on a skimmer (short journey)], [_Ƒ 100_],
  [Passage on an airship (long journey)], [_Ƒ 500_],
  [Horse (trained riding horse)], [_Ƒ 300_],
  [Mechanical repair (minor)], [_Ƒ 30_],
  [Mechanical repair (major)], [_Ƒ 200_],
  [Medical treatment (professional)], [_Ƒ 50_],
  [Information (street level)], [_Ƒ 10–50_],
  [Mercenary hire (1 day)], [_Ƒ 100_],
  [Skilled artisan labor (1 day)], [_Ƒ 30_],
)

For equipment prices, see the _Equipment Tables_ section.

== Lodging and Resting

=== Short Rest

A short rest takes approximately 1 hour and requires a reasonably safe location.
During a short rest, a character may spend EP to recover:

- *1 EP:* Recover HP equal to 25% of maximum HP.
- *1 EP:* Recover Focus equal to 50% of maximum Focus.

A character may spend multiple EP during a single short rest. This is the only
way to spend EP for recovery outside of powers or items.

=== Long Rest

A long rest takes 8 hours (at least 6 hours of sleep and up to 2 hours of
light activity such as keeping watch). At the end of a long rest:

- The character recovers all HP and Focus (this costs EP as with a short rest,
  but the full recovery is automatic).
- The character recovers 3 EP naturally.

=== Resting Conditions

*Comfortable rest* requires adequate shelter (inn, building, or camping kit in
fair weather). A comfortable rest provides full short or long rest benefits.

*Rough rest* occurs without adequate shelter — sleeping on bare ground, in
extreme weather without protection, or in a hostile environment. A rough rest
provides only the benefits of a short rest, regardless of duration.

*Blessed ground* — certain locations saturated with ambient magical energy
(leyline nexuses, ancient temples, sacred groves) provide additional benefits.
When resting on blessed ground, a character recovers 1 additional EP. The GM
determines which locations qualify.

== Death and Revival

=== The Deathless

Player characters in Ashen are Deathless --- immortal beings whose essence
persists beyond the destruction of their physical form. For a Deathless
character, death is not the end, but it carries real and significant costs.

=== Revival with EP

When a Deathless character dies, they may spend 5 EP to revive on the spot.
If they choose to do so, they return to life at the start of the next round
with 1 HP at the location where they fell. A character who revives this way is
Dazed for 1 round as they reorient.

Revival powers such as _Breath of Resurrection_ bypass this EP cost entirely,
allowing allies to bring back fallen comrades without the dead character spending
their own EP. This is the primary value of resurrection powers.

=== Soul Anchors

Every Deathless character has a *soul anchor* --- a location their essence is
bound to. A character can bind to a new soul anchor by resting at that location
and performing a brief binding ritual (10 minutes, no check required). Each
character can have only one active soul anchor at a time. By default, a
character's soul anchor is the last settlement where they completed a long rest.

If a Deathless character dies and has no EP remaining (or chooses not to spend
EP), their essence travels to their soul anchor, where they slowly
reincorporate over the course of 3 to 7 days. While dead and reincorporating,
a character recovers only 1 EP per day (instead of the usual 3). Once they
accumulate enough EP to sustain a physical form (5 EP), they reincorporate at
the anchor with 1 HP and no Focus.

=== Mortal Death

Non-Deathless creatures (mortal NPCs, animals, most enemies) die permanently
when reduced to 0 HP. The _Resurrection Rite_ (a Tier 5 ritual) is the only
known means of restoring a mortal creature to life.

=== Effects That Prevent Revival

Certain powers and effects can delay or prevent revival. A creature affected by
an effect that "prevents revival" cannot spend EP to revive and does not begin
reincorporating until the effect ends. The _Noble Eightfold Blade_ and _World
Serpent's Embrace_ are examples of such effects.

= Airship Combat

_Airship combat rules are in development and will be included in a future version
of the rulebook. For the playtest, the GM may adjudicate airship encounters
using the standard combat rules adapted to the scale of airship engagements._

= Setting

== List of Factions

#table(
  columns: 4,
  align: center,

  [*Name*], [*Pin*], [*Stated Purpose*], [*Aligned Deities*],
  [Black Guard],
  [A fortress gate superimposed on a balance],
  [Maintenance and policing of the Black Bazaar],
  [???],

  [Children of the Flame],
  [An eternal flame],
  [Maintaining and expanding the Clears],
  [The Sun Life-Giver],

  [Dragon Guard],
  [A shield bearing the silhouette of a dragon’s head],
  [Restoring a world fit for dragons],
  [Vrtra Dragon-Father],

  [Dragon Slayers, Most Fraternal and Knightly Order of],
  [A dragon impaled upon a spear],
  [laying monsters and making the world safe for humans],
  [The Crown Lawgiver],

  [Heirs of the Night],
  [A sword with bat wings],
  [Make the world a paradise for creatures of the night],
  [The Moon Who-Reflects-In-Blood],

  [Keepers of the Door],
  [Two keys crossed over a gate],
  [Discovering and safeguarding secrets],
  [Once-Was Way-Knower],

  [Lantern, Order of the],
  [A stylized lantern],
  [Escaping the trap of Purgatory],
  [The Watchman],

  [Listeners, The],
  [A dream-catcher with antlers],
  [Restoring the boar-mother and the primal spirits],
  [The Boar-Mother],

  [Mortefactors, Most Ancient and Noble Order of],
  [A crossed scythe and bird wing under a human skull],
  [Studying the curse of the undying and helping those afflicted by it],
  [The Ferryman],

  [Never-Still, The],
  [A hand holding a heart],
  [Restoring the vitality of the faerie realm],
  [The Lion-Head, Might-Be Queen of Summer],

  [Patients, Vatic Order of],
  [A hand with the index and middle finger extended, thumb, ring and pinky
    folded, and an eye in the middle of the palm],
  [Cultivating the art of clairvoyance],
  [The Glory Resplendent, Might-Be Fateweaver],

  [Perfectors, The],
  [A bridge build of gears],
  [Fashioning an orderly, mechanical world],
  [Third],

  [Silent Crow, Brotherhood of the],
  [The skull of a crow],
  [Restoring the cycle of death and rebirth],
  [The Queen of Silence],

  [Waiting Fangs, The],
  [A dagger piercing the skull of a snake],
  [Self-defence],
  [???],

  [Witnesses of the End],
  [An hourglass],
  [Complete the ending of the world],
  [She who waits Beyond],

  [Free Agents], [A sword crossed with a feather], [–-], [--],
)




