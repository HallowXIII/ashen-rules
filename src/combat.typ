#import "declarations.typ": *

= Combat

#flavor([
  Zalahaiči ūyir čama mai yih kazna ayavurohu kawav ova zā. \
  #linebreak()
  All the treasure in the world is not worth the glory of a single battle.
])

--- Elth, Twin Swords of the Midnight Gates \
#linebreak()

Sometimes, characters’ conflicts cannot be resolved in a way other than coming
to blows. These situations are handled by the combat rules.

== How combat works

When characters find themselves in combat, they enter into *structured time* \-
because the action being described usually happens over the course of just a few
seconds, it is important to track the time in detail. To do so, each combat
scene is modeled as a cyclical sequence of rounds.

=== The order of combat

Combat is structured time (see _Structured Time_ in the Core Rules chapter). Each combat scene is divided into rounds, and the order of turns within each round is determined by initiative. For the core rules on rounds, initiative ticks, and action points, refer to that section.

=== Surprise

A combat begins when the first hostile action is taken or declared.

If a combat begins and some participants are not aware of their opponents, they
are surprised. A surprised combatant is *exposed* until they take their first
turn.

If this happens, the aware combatants may act in a special surprise round before
the combat proper begins. During the surprise round, only aware combatants may
act; surprised combatants skip their turns.

==== Extreme Initiative and Surprise

A combatant that achieves Extreme Initiative takes their first turn during the
surprise round. If this happens, they may treat all other combatants as surprised
during their first turn, even if they would not otherwise be surprised.

A combatant that already has surprise and rolls an initiative higher than 99
also receives this benefit, in effect obtaining two surprise turns.

=== The Grid

Combat in Ashen takes place on a square grid. Each square represents a 1-meter
by 1-meter area. Miniatures, tokens, or other markers are used to track the
positions of creatures and objects on the grid.

==== Creature Size

A creature's size determines how many squares it occupies. A creature of Size X
occupies a space of X by X squares. Most player characters are Size 1. Larger
creatures --- such as a warhorse (Size 2) or a dragon (Size 3) --- occupy
correspondingly larger spaces.

==== Facing

Creatures do not have a facing. A creature can see and act in all directions
equally unless an effect specifically limits its field of vision.

=== Movement

During combat, creatures move across the grid by spending movement from their
Movement Speed. A creature's Movement Speed determines how many squares it can
traverse with a single move action.

==== Orthogonal and Diagonal Movement

Moving one square in a cardinal direction (north, south, east, or west) costs 1
square of movement. Moving one square diagonally costs 1.5 squares of movement,
rounded down. In practice, this means that every second diagonal step in a
single move costs 2 squares of movement instead of 1. The count of diagonal
steps resets at the start of each move action.

#note[
  _Example:_ A character with Movement Speed 5 takes a move action. They step
  diagonally (1 square spent), then diagonally again (2 squares spent --- the
  second diagonal costs 2), then move north (1 square spent), then diagonally
  (1 square spent). They have spent 5 squares total and their move ends.
]

==== Difficult and Treacherous Terrain

Some squares contain terrain that impedes movement.

- *Difficult terrain* costs 2 squares of movement per square entered. A creature
  cannot charge through difficult terrain.
- *Treacherous terrain* costs 2 squares of movement per square entered, as
  difficult terrain. Additionally, a creature moving through treacherous terrain
  must make an Acrobatics or Athletics check (difficulty 3) each round of
  movement or fall prone.

These costs stack with diagonal movement costs. A diagonal step into difficult
terrain costs 3 squares of movement on an odd step and 4 on an even step.

==== Moving Through Other Creatures

You can move through a square occupied by an allied creature, but you cannot end
your turn in that square. Moving through an ally's space does not cost extra
movement.

You cannot move through a square occupied by a hostile creature unless you have
an ability that specifically allows it (such as the Vault advance). Creatures
may always move through the space of a creature at least 2 sizes larger or
smaller than them.

==== Occupied Squares

A creature cannot voluntarily end its movement in a square occupied by another
creature. If an effect forces a creature into an occupied square, the displaced
creature is shunted to the nearest unoccupied square of its choice.

==== Prone Movement

A prone creature can only crawl. Crawling uses the creature's land movement
speed at half its normal rate (rounded down). Standing up from prone costs 1 AP.

==== Movement Types

A creature may have several different movement types, each with its own speed.
When you take a move action, you choose one of your available movement types and
move up to that speed. You cannot mix movement types within a single move
action --- to switch from one type to another, you must take a separate move
action (at the usual escalating AP cost).

The following movement types exist:

- *Land* is the default movement type. All creatures have a land speed unless
  otherwise noted. A creature's Movement Speed refers to its land speed unless
  a different type is specified.
- *Climb* allows a creature to scale vertical surfaces without making skill
  checks. A creature with a climb speed can move along walls and ceilings at
  that speed.
- *Swim* allows a creature to move through water without making skill checks. A
  creature with a swim speed can move freely in any direction while submerged.
- *Fly* allows a creature to move through the air. A flying creature can gain
  and lose altitude freely during its movement.
- *Burrow* allows a creature to tunnel through earth and loose rock. A burrowing
  creature cannot normally pass through solid stone unless its description says
  otherwise.
- *Teleport* allows a creature to instantaneously relocate. Teleport movement
  does not provoke opportunity attacks, ignores difficult and treacherous
  terrain, and is not blocked by obstacles or creatures --- but requires line of
  sight to the destination unless otherwise specified.

A creature without a climb or swim speed can still attempt to climb or swim by
making skill checks (see _Acrobatics_ and _Athletics_), using its land speed at
half rate. A creature without a fly speed cannot fly.

===== Elevation and Vertical Distance

When moving vertically --- whether climbing, flying, swimming, or otherwise ---
each meter of elevation costs 1 square of movement, just as horizontal distance
does. Diagonal movement in three dimensions follows the same rounding rules as
on a flat grid.

#note[
  _Example:_ A swimming creature with Swim Speed 8 wants to dive diagonally:
  4 meters forward and 4 meters down. The diagonal distance is approximately 6
  meters, so the movement costs 6 squares of its swim speed.
]

==== Forced Movement

Some powers and effects push, pull, or slide creatures involuntarily. Forced
movement follows these rules:

- *Push* moves the target in a straight line directly away from the source of
  the effect.
- *Pull* moves the target in a straight line directly toward the source of the
  effect.
- *Slide* moves the target in any direction.

Forced movement is measured in squares. It does not consume the moved creature's
movement speed, and it does not require the moved creature to spend AP. Forced
movement *does* provoke opportunity attacks.

Forced movement cannot move a creature through solid obstacles. If a creature is
pushed or pulled into an obstacle, it stops in the last unoccupied square before
the obstacle.

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

==== Triggering Reactions

Each reaction specifies a *trigger* — the event that allows you to use it. Reactions may trigger during different phases of an attack or action:

- *Target selection* — triggers when you are chosen as a target (e.g., Fire Overwatch triggers when you are targeted by a charge).
- *Resolution* — triggers when the attack hits or misses (e.g., certain defensive abilities trigger on being hit).
- *Damage* — triggers when you would take damage or be affected (e.g., Dive triggers when you would be damaged by an area effect).

You may only use a reaction whose trigger matches the current phase.

==== Reaction Chains

A reaction can trigger further reactions from other creatures, forming a chain. However, a creature whose action started the chain cannot also react to something within it. In other words, each creature may only appear once in a reaction chain — either as the original actor or as a reactor, never both.

For example: you move away from an enemy, provoking an opportunity attack. You cannot parry the opportunity attack, because your action started the chain. But if an ally uses an attack and an enemy uses a reaction to interfere, you _can_ yourself use another reaction in response to that reaction — your action did not start the chain.

#note[
  _Example:_ Kael and his ally Ârwân are fighting a dangerous Psychic. Kael attacks the psychic with him sword. In response, the psychic invokes _Twist of Fate_ as a reaction to make him miss. Ârwân, who is himself a psychic, counterspells the _Twist of Fate_, and Kael's attack lands normally.
]


==== Interrupts and Responses

Reactions come in two types:

- *Interrupt* — the reaction resolves _before_ the triggering action completes. If the interrupt removes the conditions that made the triggering action possible (for example, moving out of range), the triggering action is wasted without effect.
- *Response* — the reaction resolves immediately, but does not inherently stop the triggering action. The triggering action continues after the response resolves, unless the response's outcome makes it impossible (for example, a creature killed by an opportunity attack does not continue moving).

A reaction's type is noted in its description. If a reaction does not specify, it is a response.

==== Universal Reactions

Every character automatically has access to the following reactions.

===== Counterspell

When another creature within 20 squares uses a magic power of a type that you
can currently cast (for example, an Arcane spell while you are wielding an
Arcane catalyst), you can counterspell as an interrupt. To counterspell, roll the
same check as the one used to cast the spell; if you score an equal number or
more successes than the original caster, their spell fizzles without effect.

===== Dive

When you would be damaged by an area attack or magical effect, you can attempt to dive out of the affected area (response). Count the minimum number of squares you would need to move to exit the area. If that distance is more than 3 squares, you cannot Dive. Otherwise, roll your Dodge characteristic against a difficulty of 3 per square you must cross. If you succeed, you move to the nearest unoccupied square outside the area and are unaffected by the attack. This movement does not provoke opportunity attacks.

===== Fire Overwatch

If you are wielding a ranged weapon and are targeted for a charge, you can make a strike against the charging enemy (interrupt). If the strike kills or stuns the charger, the charge ends immediately.

===== Opportunity Attack

When you are wielding a melee weapon, and another creature takes a move action
that passes through your weapon reach and does not end next to you, you can
immediately make a strike against it (response).

== Strikes and Attack Powers

When a character attacks in combat, the basic unit is the *strike*. A strike is a single attack roll against a target: roll your attack characteristic (Martial for melee or thrown weapons, Marksmanship for ranged weapons) and count successes. If your successes equal or exceed the target’s Evasion, the strike hits and you roll damage.

An *attack power* is any power that includes one or more strikes as part of its effect. Whether an attack power scores multiple hits depends on the power itself.

Some effects allow a creature to "make a strike" rather than use an attack power. A strike always produces at most one hit, regardless of excess successes.

Every character has access to the following attack power:

#power-description(
  "Basic Attack",
  "Innate",
  0,
  2,
  [Make a strike against a target within your weapon’s range. For every [hit rate] successes scored above the target’s Evasion, this attack scores one additional hit. Each hit deals the weapon’s damage separately.],
  keywords: ("Attack", "Martial", "Weapon")
)

#note[
  _Example:_ Kael attacks a Warboar (Evasion 5) with a dagger (hit rate 2). He rolls his Martial characteristic and scores 8 successes. The first hit lands because he met the Evasion of 5. He has 3 excess successes; at a hit rate of 2, that’s 1 additional hit (3 ÷ 2 = 1, rounded down). Kael hits twice and rolls damage for each hit separately.
]

== Resolving an Attack

When you use an attack power or make a strike, follow these steps:

+ *Choose a target.* Select a target within your weapon's range. You must have line of sight to the target unless the power states otherwise.

+ *Roll the attack.* Roll your attack characteristic --- Martial for melee and thrown weapons, Marksmanship for ranged weapons. Apply any bonuses and penalties from powers, conditions, concealment, and other effects to determine your final dice pool.

+ *Determine if you hit.* Compare your total successes to the target's Evasion. If your successes equal or exceed the target's Evasion, the attack hits. If not, it misses. If the target has cover, a hit triggers a cover save before proceeding --- if the save succeeds, the attack misses.

+ *Determine the number of hits.* If the attack power scores multiple hits (such as Basic Attack), divide the excess successes by the weapon's hit rate, rounding down. Add 1 for the initial hit. A strike or an attack power that does not specify multiple hits always scores exactly one hit.

+ *Roll damage.* Roll the weapon's damage once for each hit. Each hit deals damage independently.

+ *Apply defenses.* For each hit, reduce the damage by the target's defenses (see _Damage_ below). The attacker's weapon Penetration reduces the target's effective Armor for that attack. Damage cannot be reduced below zero.

+ *Apply damage.* Subtract the remaining damage from the target's Hit Points.

#note[
  _Example:_ Kael charges a Warboar (Evasion 5, Armor 4) with a longsword (damage 9+D8, Penetration 2, hit rate 3). Charging grants him \+4d to his Martial characteristic of 7, so he rolls 11 dice and scores 9 successes. The attack hits (9 ≥ 5). He has 4 excess successes at hit rate 3: that's 1 additional hit, for 2 hits total. He rolls 9+D8 twice, getting 14 and 12. The Warboar's effective Armor is 4 − 2 Pen = 2, so the hits deal 12 and 10 damage respectively.
]

== Damage

When a character or creature takes damage, that damage has a *type* and a *source*. The type determines what kind of energy or force is involved; the source determines whether the damage is mundane or magical in origin. Together, these determine which defenses apply.

=== Damage Types

- *Ablative:* Damage inflicted by weapons or effects that strip material from the target in layers, from sand-blasters to disintegration rays.
- *Chemical:* Damage inflicted by strong acids, poisons, and other corrosive or toxic substances.
- *Cold:* Damage caused by freezing effects, whether from Ice magic, cold-gas cannons, or environmental exposure.
- *Impact:* Blunt force damage. Clubs, falling rocks, concussive blasts, and magical force effects all deal Impact damage.
- *Lightning:* Damage dealt by electricity, whether natural, technological, or magical. _Lightning damage bypasses Armor._
- *Psychic:* Damage dealt by effects that attack the mind or soul. Almost all sources of Psychic damage are magical. _Psychic damage bypasses Armor._
- *Radiant:* Damage dealt by ionizing radiation. X-rays, radioactive materials, and similar sources cause Radiant damage. _Radiant damage bypasses Armor._
- *Rending:* Cutting, tearing, and piercing damage. Blades, bullets, claws, and shrapnel all deal Rending damage. This is the most common damage type for conventional weapons.
- *Thermal:* Damage inflicted by extreme heat. Fire, plasma weapons, and heat lasers all cause Thermal damage.
- *Untyped:* Damage that has no elemental or physical classification. Flesh-warping magic, organ damage, and severe bleeding are typical sources. _Untyped damage bypasses Armor. It is not possible to have resistance to Untyped damage._

=== Defenses Against Damage

Two statistics protect against incoming damage: *Armor* and *Ward*.

*Armor* reduces damage from all sources unless the damage type specifically bypasses it (Lightning, Psychic, Radiant, and Untyped bypass Armor). Armor represents physical toughness --- worn protection, natural hide, or structural reinforcement. A weapon's *Penetration* value reduces the target's effective Armor against that weapon's attacks.

*Ward* reduces damage from *magical sources only*. If a spell, magical ability, or enchanted effect deals damage, Ward applies in addition to any other applicable defenses. A technological weapon that deals Thermal damage is reduced only by Armor; a fire spell that deals Thermal damage is reduced by both Armor and Ward. Some spells deal damage types that bypass Armor (such as Lightning or Psychic) --- in these cases, Ward is the only defense.

Spells and magical powers generally specify in their description whether Armor applies, to avoid ambiguity.

=== Resistances

A creature may have *resistance* to one or more specific damage types. Resistance provides a flat reduction to damage of that type, applied after Armor and Ward. For example, a creature with Cold Resistance 5 reduces all Cold damage it takes by 5, after any reduction from Armor or Ward.

Resistances can come from racial traits, magical effects, enchanted equipment, or other sources. A creature cannot have resistance to Untyped damage.

== Death and Revival <death-and-revival>

When a creature is reduced to 0 HP, they die. For a Deathless
character, death is a severe setback but not the end --- provided
their body remains intact.

=== Dying as a Deathless

At the start of your next turn after dying, you may choose to spend
5 EP to revive. If you do, on the first turn in the round after you 
died, you return to life at full HP, standing
in the square where you fell (or prone, if standing is not
possible), and you immediately take a full turn with your normal AP.
The regenerative surge is swift: a mangled corpse knits itself back
together in moments, rising ready for vengeance. Mortals who witness
this are often unnerved by the display.

You pay the 5 EP only if revival actually manifests. If an ally's
revival power or a _Revitalization Charge_ brings you back before
your turn comes around, you revive without spending any EP of your
own.

If you choose not to spend EP, cannot spend EP, or your body has
been destroyed (see _The Fallen Body_ below), your essence departs
for your soul anchor and you begin reincorporating there. See
#link(<death-and-reincorporation>)[_Death and Reincorporation_] in
the Exploration chapter.

#attention([Whether or not you choose to revive, both revival and
discorporation occur on your turn in the round after you died. If
your next turn after death is in the same round you died in, you
skip that turn.])

=== The Fallen Body

A dead Deathless leaves a body behind, which is a targetable object
in the square where they fell. Allies and enemies alike may interact
with it.

- *Healing has no effect.* HP-restoring effects do nothing to a
  corpse. Only revival effects --- such as _Breath of Resurrection_
  or a _Revitalization Charge_ --- can return a dead Deathless to
  life without them spending EP.
- *Ongoing effects on the character end on death.* Conditions,
  sustained spells, concentration effects, and auras originating
  from the dead character all cease. Effects emanating from worn or
  carried items, however, remain active.
- *The body can be dismembered.* A creature adjacent to the fallen
  body may take the *Dismember* action (2 AP) to mutilate it. Each
  use of this action delays the Deathless's next opportunity to
  spot-revive by 1 round. After the body has been dismembered three
  times, or if it is reduced to ash (for example by _Solar Flare_)
  or banished from the world (for example by _Banish_), the body is
  destroyed: the Deathless cannot spend EP to revive and must
  reincorporate at their soul anchor.

Dismembering a fallen Deathless is a valid tactic against hostile
immortals --- and an equally valid threat against your own party.

== Melee Attacks

A melee attack uses the *Martial* characteristic (STR + AGI). Melee weapons can target creatures within their reach — typically adjacent squares (reach 1), though some weapons have greater reach.

=== Melee Hit Rates

A melee weapon's hit rate is determined by its weight class:

- *Light* melee weapons (daggers, gauntlets): hit rate *2*
- *Medium* melee weapons (longswords, maces, spears): hit rate *3*
- *Heavy* melee weapons (greatswords, mauls, halberds): hit rate *4*

=== Thrown Weapons

Some melee weapons can be thrown, using the *Martial* characteristic at range. A thrown weapon follows the ranged attack rules for range and penalties, but uses Martial rather than Marksmanship. A thrown weapon always scores at most one hit, regardless of its melee hit rate.

== Ranged Attacks

A ranged attack uses the *Marksmanship* characteristic (DEX + PER). Ranged weapons have a listed range band that determines their effective range and the penalty for firing beyond it.

=== Range Bands

Each range band defines a *range increment* in squares:

#pftab(
  columns: (1fr, 1fr),
  "Range Bands",
  title: false,
  [*Range Band*], [*Increment*],
  [Short], [10 squares],
  [Medium], [20 squares],
  [Long], [40 squares],
  [Very Long], [80 squares],
)

A weapon can fire at targets within its first increment with no penalty. For each additional increment of distance beyond the first, the attacker takes a *-2d penalty* to the attack roll. If the penalty reduces the attacker's dice pool to zero, the shot automatically fails.

#note[
  _Example:_ Lira fires a rifle (Medium range, increment 20) at a target 55 squares away. The first 20 squares are free. The target is 35 squares beyond that — two additional increments (21–40 and 41–60). Lira takes a -4d penalty to her Marksmanship roll.
]

=== Fire Modes and Ranged Hit Rates

Ranged weapons have a *fire mode* that determines their hit rate:

- *Single shot (S):* The weapon fires one powerful shot. It scores at most *one hit* per attack, regardless of excess successes.
- *Semi-automatic (SA):* The weapon fires in controlled bursts. Hit rate is *3* (or *4* for heavy semi-automatic weapons).
- *Full automatic (FA):* The weapon fires a sustained stream. Hit rate is *2* for light and medium weapons, *3* for heavy weapons.

=== Heavy Ranged Weapons

Heavy ranged weapons (machine guns, cannons, sniper rifles) must be *braced* before they can be fired accurately. Firing a heavy weapon without bracing is called *hip-firing* and incurs a *-2d penalty* to the attack roll. A heavy weapon can be braced using the Brace action (1 AP).

=== Ammunition

Characters are assumed to carry sufficient standard ammunition for their weapons; tracking individual rounds is not required. The exception is weapons that fire specialized ammunition — such as rocket launchers or grenade launchers — where the ammunition itself determines the weapon's damage and effects. For these weapons, each shot consumes one unit of ammunition, and reloading costs *1 AP*.

== Misfires and Fumbles

When an attack roll results in a *critical failure* (zero or negative total successes), the weapon has malfunctioned or the wielder has made a serious error. The consequences depend on whether the attack was ranged or melee.

=== Misfires (Ranged)

A critical failure on a ranged attack roll is a *misfire*. The weapon jams, misfires, or overheats. The attack fails automatically, and the weapon cannot be used again until the wielder spends *1 AP* to clear the malfunction (unjam the mechanism, vent heat, cycle the action).

Weapons with the *Reliable* keyword are resistant to misfires. A Reliable weapon only misfires if the total successes are *-2 or worse* (rather than 0 or below). On a result of exactly 0 or -1, the attack simply misses.

Weapons with the *Overload* keyword are prone to dangerous malfunctions. When an Overload weapon misfires, it does not merely jam --- the containment fails or the mechanism detonates. The wielder takes damage equal to *200% of the weapon's base damage* (reduced by Armor and Ward as normal), and the weapon is *disabled* until it receives a field repair (1 minute outside of combat, or a Shop check at difficulty equal to the weapon's tier during combat as a 3 AP action).

Weapons with the *Unreliable* keyword must roll a save on *every attack they make*; if the save dice come up 0, the weapon misfires regardless of the original attack roll. Unreliable and Reliable cancel each other out.

=== Fumbles (Melee)

A critical failure on a melee attack roll is a *fumble*. The wielder overextends, loses their grip, or strikes something they didn't intend to. The attack fails automatically, and the wielder suffers one of the following consequences (GM's choice or roll D6):

+ *Overextended:* The wielder is off-balance. They suffer -2d on all checks until the start of their next turn.
+ *Dropped weapon:* The weapon is knocked from the wielder's hand and lands in an adjacent square. Retrieving it requires a minor action (or a free action for Sidearm weapons).
+ *Opening:* The wielder has left themselves exposed. The target may immediately make a free strike against the wielder as a response (if the target is able to attack).
+ *Self-inflicted:* The weapon strikes the wielder or a nearby ally. The wielder (or an adjacent ally, if any) takes damage equal to the weapon's base damage, reduced by their own defenses.
+ *Weapon stress:* The weapon absorbs the force of the mishandled blow. It gains the *Dulling* negative keyword until the end of the encounter.
+ *Stumble:* The wielder stumbles into an adjacent square of the GM's choice. If that square is occupied by an enemy, the wielder provokes a free strike.

== Dual Wielding <dual-wielding>

A character wielding a one-handed weapon in each hand can attack with both
as part of a single Attack action (2 AP). The character makes a separate
attack roll for each weapon, resolving them independently: different targets,
different damage, and different weapon effects.

Dual wielding is not without cost. Fighting with two weapons divides the
wielder's attention and coordination:

- *Off-hand penalty:* The attack with the off-hand weapon (the wielder's
  choice of which weapon is the off-hand) suffers a *--2d penalty*. If the
  off-hand weapon is *Medium*, this penalty increases to *--3d*. Heavy
  weapons cannot be used in the off-hand.
- *Reduced hit rate:* While dual wielding, the hit rate of *both* weapons
  increases by 1 (e.g., a Light weapon's hit rate rises from 2 to 3, a
  Medium weapon's from 3 to 4). This reflects the difficulty of landing
  precise follow-up strikes while managing two weapons.

The primary value of dual wielding lies not in raw damage output but in
*versatility*: wielding a longsword alongside a parry dagger gives you
offensive reach and a strong defensive maneuver; pairing a force sword with
a burning blade lets you stack debuffs; carrying a pistol in one hand and a
melee weapon in the other lets you engage at any range. Characters who dual
wield for the tactical flexibility will find it rewarding; characters
looking for a simple damage increase will find the penalties eat into their
gains.

=== Attack Powers while Dual Wielding

Any attack power with *Weapon* range --- not just the Basic Attack --- can
be used with both weapons. The wielder makes a separate attack roll and
damage roll for each weapon, applying the off-hand penalty and hit rate
increase as normal. If the power has a damage multiplier (e.g., 200%
damage), the multiplier applies to both weapons' damage rolls.

However, *secondary effects* --- conditions, debuffs, forced movement, or
any effect beyond raw damage --- apply only once, even if both weapons hit.
The wielder chooses which weapon's hit triggers the secondary effect. This
prevents dual wielding from doubling the impact of powerful riders while
still rewarding the extra damage output.

=== Restrictions

- Both weapons must be one-handed (1 Hands value).
- A character cannot dual wield while also wielding a catalyst, shield, or
  reliquary --- there are only two hands to go around.
- Dual wielding applies only to the Attack action and attack powers that
  specify *Weapon* range. It does not grant extra uses of spells or
  non-weapon powers.
- Powers with the *Dual Wield* keyword are designed for dual wielding and
  override the off-hand penalty and hit rate increase with their own
  effects, as described in their power text.

=== Dual Wielding with Ranged Weapons

A character may dual wield ranged weapons (such as two pistols). The same
rules apply: the off-hand weapon suffers --2d (--3d if Medium), and both
weapons' hit rates increase by 1. Each weapon consumes its own ammunition
or charge normally, if any.

== Area Targets

Many powers and some weapons affect an area rather than a single target. An area is defined by its shape and size. All creatures and objects within the area are affected unless the power specifies otherwise (e.g., "all enemies in burst" excludes allies).

=== Shapes

==== Burst

A burst is a circular area centered on a point. A *Burst N* affects every square that is within N squares of movement from the origin square, using the standard movement rules (including the diagonal movement rounding rule). For example, a Burst 1 affects the 4 orthogonally adjacent squares; a Burst 2 also reaches the diagonal neighbors and the squares two steps away orthogonally.

A burst's range line reads *Burst N within R*, meaning the center point can be placed on any square within R squares of the caster. A *Close Burst N* is centered on the caster's own square and has no separate range.

==== Cone

A cone originates from the caster and expands outward. A *Cone N* extends N squares from the caster and widens by 1 square for every 2 squares of length (rounded down). The caster chooses the direction of the cone when using the power. The cone's width at its origin is 1 square.

==== Line

A line originates from the caster and extends in a straight path. A *Line N* is N squares long and 1 square wide. The caster chooses the direction.

==== Wall

A wall is a contiguous line of squares placed within range. A *Wall N* consists of up to N squares arranged in any connected shape (each square must share a side with at least one other square in the wall). Walls are typically 1 square wide and block movement and line of sight unless the power states otherwise.

=== Resolving Area Attacks

Area attacks do not roll against individual targets' Evasion. Instead, the caster rolls their characteristic check against the power's difficulty. If the check succeeds, the power takes effect on every valid target in the area. Targets may then resist individually if the power grants a resistance check (typically Dodge against a set difficulty, or Dodge opposed by the caster's check result).

A creature that succeeds on its resistance check against an area attack either negates the effect entirely or reduces it, as specified by the power. The Dive reaction can also be used to escape an area attack entirely.

Area attacks never score multiple hits. Each affected target takes the power's listed damage once.

=== Cover

Terrain, structures, and even other creatures can provide cover when they stand between an attacker and its target.

To determine whether a target has cover, draw a straight line from any corner of the attacker's square to any corner of the target's square (or squares, for a large creature). If at least one such line passes through an obstacle that could grant cover, the target has cover. Whether that cover is light or heavy depends on the nature of the obstacle.

If all lines pass through the cover, and it is an obstacle that would grant heavy cover, such as a wall, then the cover is total.

- *Light cover* — roughly half of the target is obscured (e.g., a low wall, a tree trunk, or an ally standing in the way). When a hit is scored against a target in light cover, the target makes a cover save before the hit is applied. A cover save is a saving throw (roll 3 dice; 2 or more successes passes). If the save succeeds, the attack misses.
- *Heavy cover* — roughly two-thirds of the target is obscured (e.g., firing through an arrow slit, or a creature peeking around a corner). Heavy cover works like light cover, but the cover save requires only 1 success instead of 2.
- *Total cover* — the target is entirely obscured; there is no line of effect. A creature behind total cover cannot be targeted or affected by attacks at all.

Cover applies the same way regardless of whether the attack is single-target or an area effect.

=== Line of Effect

An area power must have *line of effect* from its origin point to each target — an unobstructed path that is not blocked by total cover. A creature behind total cover within an area is unaffected. Creatures behind light or heavy cover are affected but may benefit from their cover save as normal.

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

*Attack* \
*Combat Maneuver* \
*Dash* \
*Dismember* \
*Use Item*

==== Standard Actions (3 AP)

*Charge*

==== Standard Actions (Special)

*Move* \
*Use Skill* \
*Use Power* \
*Cast Spell*

==== Reactions

*Combat Maneuver (Reactive)* \
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

You can brace a heavy weapon or a large shield to stabilize or plant it.
For a *heavy weapon*, bracing means propping it against a stable surface or
taking a more stable firing position. Once braced, you remain braced until
you move. While braced, you can fire the weapon without the hip-fire
penalty. For a *large shield* (one with the Brace property), bracing means
planting the shield and taking cover behind it. Until you move, take an
action other than Command or Brace, or are knocked prone, you benefit from
*light cover*.

===== Command

You issue an order to a summoned or dominated creature. The creature
carries out your instruction to the best of its ability on its next turn,
using its full AP pool. Mindless summoned creatures *require* a Command
each round to act at all; willful summons and dominated creatures act
autonomously but can be given specific orders with this action. See
#link(<summoning>)[_Summoning and Binding_] for full rules.

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

==== Standard Actions

===== Attack

You use an attack power. The default attack power available to every character is the Basic Attack described above. Other attack powers granted by advances or other abilities may be used instead.

===== Stand Up

If you are prone, you can stand up as a standard action.

===== Dash

You break into a sprint, moving up to double your movement speed. Unlike a
normal move action, a Dash must be in a straight line. Movement during a Dash
provokes opportunity attacks as normal.

===== Dismember

You mutilate the corpse of a fallen Deathless in an adjacent square,
delaying their spot-revival. See #link(<death-and-revival>)[_Death and
Revival_] for the full rules.

==== Full Actions

===== Charge

To take a charge, declare a target you can see. You must move toward that target
in a straight line, moving up to twice your speed and ending your charge
directly adjacent to your target. At the end of the charge, you can use a melee attack power. You gain a \+4d power bonus to your Martial characteristic when you make attack rolls during a charge.

== Combat Maneuvers

In the chaos of battle, a skilled combatant can attempt far more than simply
striking to wound. Hooking an enemy's leg to bring them down, knocking a weapon
from their hand, targeting a specific weak point, throwing sand in their eyes,
deflecting a killing blow with the flat of a blade --- these are all *combat
maneuvers*. A combat maneuver is any attempt to achieve a specific tactical
effect beyond dealing normal damage, whether on your own turn or in reaction to
an enemy's action.

=== Performing a Maneuver

To perform a combat maneuver on your turn, spend *2 AP* and declare what you are
attempting _before_ you roll. You then make your attack roll (Martial for melee,
Marksmanship for ranged) with a *penalty* determined by the GM based on the
ambition and difficulty of what you are attempting. If the attack hits, the
maneuver takes effect. The more successes you score above the target's Evasion,
the more dramatic the result.

A combat maneuver that involves striking the target with a weapon --- such as a
called shot or a hamstringing slash --- deals damage as a single-hit strike,
regardless of excess successes (excess successes improve the maneuver's effect,
not the number of hits). A maneuver that does not involve actually striking the
target --- such as a grapple, a shove, or throwing sand in someone's eyes ---
does not deal damage at all.

If the attack misses, the maneuver fails regardless of how good the idea was.

The GM sets the penalty and adjudicates the outcome based on two considerations:

+ *How difficult is the maneuver?* A shove against a creature your own size might
  warrant \-1d. Severing a specific tentacle might be \-3d. Shooting a small
  object out of someone's hand at long range might be \-5d or more. The
  creature's size relative to yours, the precision required, and the
  plausibility of the attempt all factor in.

+ *How well did it work?* A maneuver that barely hits (0 excess successes)
  produces a minimal version of the desired effect. Each additional excess
  success makes the result more dramatic. A barely-successful disarm might knock
  the weapon loose at the target's feet; a dramatically successful one sends it
  flying out of reach or shatters it entirely.

The GM may also require the target to make a resistance check (typically Stamina
or Dodge) against maneuvers that impose ongoing effects, just as with any other
combat effect.

=== Reactive Maneuvers

A combat maneuver can also be performed as a *reaction*. When an enemy takes an
action that you could plausibly interfere with --- a charge you could try to
trip, a strike you could try to parry, a grapple you could try to twist out of
--- you may declare a reactive maneuver. This uses your reaction for the round.

A reactive maneuver is an *interrupt*: it resolves before the triggering action
completes. Make an opposed check --- typically your Martial against the
attacker's Martial, though the GM may call for other characteristics depending
on the nature of the maneuver (Athletics for brute-force resistance, Dodge for
evasive maneuvers). If you succeed, the maneuver takes effect; the degree of
success determines how completely you shut down the triggering action.

Unlike an offensive maneuver, a reactive maneuver does not deal damage --- you
are interrupting, not attacking.

#note[
  _Example:_ An Ashwalker charges Kael. Kael declares a reactive maneuver: he
  braces his spear low and attempts to trip the charger as she closes. The GM
  calls for opposed Martial. Kael rolls 7 successes against the Ashwalker's 5.
  The trip succeeds --- the Ashwalker stumbles and falls Prone at Kael's feet,
  and her charge ends without an attack. Had Kael only barely succeeded, the GM
  might rule that the charge still carries her into melee but she arrives
  off-balance, losing her charge bonus.
]

=== Common Types of Maneuver

There is no fixed list of maneuvers a character can attempt. Any
situation-appropriate tactic is valid, and creative thinking should be
encouraged. The following categories are provided as *guidance* to help the GM
calibrate penalties and outcomes. They are examples, not an exhaustive set.

==== Precision Attacks

A precision attack targets a specific object, body part, or weak point. The
attacker must declare exactly what they are targeting: "I aim for the hand
holding the staff," "I shoot the chain holding the chandelier," "I try to sever
the grasping tentacle."

The penalty depends on the size and accessibility of the target. Hitting a
creature's weapon arm might be \-2d; hitting a specific finger, an eye, or a
small held object might be \-4d or \-5d. Hitting a tiny or partially concealed
target at range is harder still.

On a successful hit, the targeted thing takes damage and suffers appropriate
consequences. A hand struck hard enough might drop what it holds. A tentacle
dealt enough damage might be severed. A rope, a hinge, or a mirror can simply
be destroyed if the damage suffices.

The degree of success matters. A barely-successful called shot to the hand deals
damage but might not force the target to drop anything. A called shot that
exceeds the target's Evasion by 3 or more could cripple the limb or destroy the
held object outright.

#note[
  _Example:_ Lira is fighting an Ashen Priest who is channelling a ritual through
  a glass focus. She declares a precision attack against the focus (\-4d, a small
  object held in one hand) and rolls her Marksmanship. She hits with 2 excess
  successes. The GM rules that the focus shatters and the ritual collapses.
]

==== Forced Movement

Shoves, tackles, bull rushes, shield bashes, and any attempt to bodily move
another creature by force. The penalty is based on relative size: no penalty
against a creature your own size, \-2d per size category larger. Forced movement
maneuvers are typically resisted by the target's Athletics or Stamina.

On success, the target is pushed a number of squares based on the margin of
success --- 1 square on a bare success, plus 1 for every 2 additional excess
successes. Exceptional results might knock the target Prone as well, or send
them through an obstacle. Context matters: shoving someone toward a cliff edge,
into a fire, or through a railing all have natural consequences.

==== Disabling Attacks

Any maneuver that aims to impair a creature's ability to fight without
necessarily dealing lethal damage: disarming a weapon, blinding with a handful
of grit, hamstringing to reduce mobility, fouling a mechanism, or tangling an
arm. The penalty is based on how debilitating the intended effect is and how
protected the target is against it.

On success, the target suffers an appropriate condition or penalty.
A disarm might cause the target to drop a weapon; a blinding attack might impose
penalties to attack rolls for a round. On a dramatic success, the effect is more
severe or longer-lasting: the weapon is flung out of reach, the target is fully
Blinded for several rounds, or the hamstrung leg reduces their movement speed
for the rest of the encounter.

Creatures that lack the targeted feature are immune to the corresponding
maneuver --- you cannot blind an ooze or disarm a creature that fights with
natural weapons (though you might be able to damage those natural weapons with a
precision attack).

==== Trips and Takedowns

Leg sweeps, hooking a kneecap, tackling an opponent to the ground, knocking
someone off-balance. These maneuvers work both offensively and as reactions
against charges and other movement.

The penalty depends on the target's stability: no penalty against a
normally-balanced humanoid, \-2d against a quadruped or a creature bracing
itself, more against very large or many-legged creatures. The target typically
resists with Athletics or Martial (defender's choice).

On success, the target is knocked Prone. On a dramatic success (3 or more excess
successes), the target might also be Dazed or Stunned briefly from the impact,
or be thrown rather than merely tripped.

As a reactive maneuver, a trip is particularly effective against charges: if the
trip succeeds, the charge ends immediately and the charger falls Prone.

==== Defensive Maneuvers

Parries, deflections, and interpositions --- any attempt to use combat skill to
negate or reduce an incoming attack. These are almost always reactive maneuvers.

When you are hit by an attack while wielding a weapon, you may attempt to parry
as a reactive maneuver. Make an opposed Martial check against the attacker. On
success, the hit is negated. On a dramatic success, you deflect the blow so
decisively that the attacker is momentarily off-balance, granting you advantage
on your next action against them.

Weapons with the *Parry +Nd* keyword grant their bonus dice on defensive
maneuver checks. A character fighting with a weapon in each hand, or with a
weapon and a shield, is naturally better positioned for defensive maneuvers ---
the GM may reduce the difficulty or grant bonus dice as appropriate.

#note[
  _Example:_ Kael is struck by a Fleshforged's massive claw. He declares a
  defensive maneuver, attempting to parry with his longsword. The GM calls for
  opposed Martial. The Fleshforged rolled 8 successes on its attack; Kael rolls
  6 on his parry attempt. He fails --- the claw smashes through his guard and the
  hit applies normally. Had he been wielding his parry dagger in his off-hand, the
  additional \+4d from its Parry keyword might have made the difference.
]

==== Grappling

Seizing and restraining an opponent. To initiate a grapple, you must have at
least one free hand and be adjacent to the target. Make an opposed Athletics
check against the target's Athletics or Martial (defender's choice).

On success, the target is *Restrained*. However, grappling is a commitment: you
cannot move or use weapons while maintaining a grapple, and you must spend 1 AP
on each of your subsequent turns to maintain it. If you do not, the grapple
ends. The grappled creature may spend 1 AP on its turn to attempt an opposed
Athletics check to break free.

On a dramatic success, you establish such a dominant hold that the target's
attempts to escape are made at \-2d.

A creature more than one size category larger than you cannot be grappled unless
you have an ability that specifically allows it. A creature two or more sizes
smaller can be grappled automatically without a check.

=== Maneuvers and Advances

Combat maneuvers represent what any competent fighter can attempt through skill,
strength, and daring. *Powers* and *advances* represent superhuman feats that go
beyond what a maneuver can achieve. An advance might reduce or remove the
penalty for a particular type of maneuver, grant bonus dice, or add guaranteed
effects on success. A Power like _Called Shot: Vitals_ does not merely let you
aim for a weak point --- it guarantees devastating results that no ordinary
fighter could reliably produce.

When a character has both a maneuver and a Power that could apply to the same
situation, the player chooses which to use. The maneuver is always available but
uncertain; the Power is reliable but costs a power slot and may have
prerequisites.

== Saving Throws

Many effects and status conditions last until the affected creature "saves" against them. A saving throw is a simple roll made at the end of the affected creature's turn: roll 3 dice. If 2 or more dice show successes, the saving throw passes and the effect ends. If fewer than 2 successes are rolled, the effect persists until the creature's next turn, when they may try again.

Cover saves use the same mechanic but with a different success threshold depending on the type of cover (see Cover).

Note that a saving throw is not the same as a *resistance check*. A resistance check uses a specific characteristic (such as Stamina or Potential) against a difficulty set by the power. Resistance checks are made when the effect is first applied, to determine whether it takes hold at all. Saving throws are made afterward, at the end of each turn, to end an ongoing effect.

== Status Conditions

Battles are fought with vicious means, and in the course of a fight, characters
can not only suffer damage, but may be afflicted with status conditions as well.
A list of them follows:

=== Blinded

A blinded character cannot see. While they are blinded, they lose their
perception bonus to their Evasion and make all attack rolls at a \-4 penalty.

=== Disoriented

A disoriented character does not know their position relative to their
surroundings. Every time a disoriented character attempts to move, they must
roll a scatter die. On a 10, they go in the direction of their choosing;
otherwise, they move in the direction of the scatter die.

=== Stunned

A stunned character cannot take any actions. While Stunned, a creature is also
Exposed.

=== Vulnerable

Attacks against a vulnerable creature deal their maximum damage.

=== Dazed

A dazed creature loses 1 AP and has their evasion halved.

=== Exposed

An exposed creature cannot take reactions and their dodge rating becomes 0\.

=== Panicked

A panicked creature is in thrall to its fight or flight reflex. On its turn, it
must use all its AP either to attack the object of its fear (it may use powers
to do so) or to run away from it; it cannot do both or take any other actions.

=== Staggered

A staggered creature is both vulnerable and exposed.

=== Shred (x)

A shredded creature loses x armor. Unless otherwise specified, this effect lasts
indefinitely (or at least until repaired).

=== Disrupt (x)

A disrupted creature loses x ward.

=== Slowed (x)

A slowed creature’s movement speed is reduced by x.

=== Still

A still creature cannot expend focus. Any ability that would require focus
cannot be used.

=== Prone

A prone creature has +1 Evasion against ranged attacks but -1 Evasion against
melee attacks. A prone creature can only crawl, reducing its movement speed to
half. Standing up from prone requires the Stand Up action (2 AP).

=== Immobilized

An immobilized creature cannot move by any means, including teleportation. It
can still take all other actions normally.

=== Restrained

A restrained creature cannot move, takes a -2 penalty to Evasion, and makes all
attack rolls at -2d.

=== Frightened (of X)

A frightened creature takes a -2d penalty on attack rolls and cannot willingly
move closer to the source of its fear.

=== Weakened

A weakened creature makes all attack rolls at -2d.

=== Dominated

A dominated creature acts under the controller's direction on the controller's
turn. It can only take basic actions (move, basic attack). At the end of each of
the dominated creature's turns, it may attempt a saving throw to end the effect.

=== Exhausted

An exhausted creature takes a -2d penalty on all checks and has its movement
speed halved.

=== Poisoned

A poisoned creature is suffering from a toxin. The specific effects of being
Poisoned (ongoing damage, penalties, etc.) are defined by the power or effect
that inflicted the condition. Poisoned can be removed by the Cleansing Light
prayer, the Antidote recipe, or other effects that specifically remove the
Poisoned condition.

=== Diseased

A diseased creature is afflicted by a magical or mundane illness. The specific
effects of the Disease are defined by the power that inflicted it. Unless
otherwise specified, healing received by a Diseased creature is halved. Disease
can be removed by the Cleansing Light prayer or other effects that specifically
remove Disease.

=== Bleeding

A bleeding creature has an open wound that continues to deal damage. The
specific ongoing damage is defined by the power that inflicted the condition.
Bleeding can be removed by any healing effect, by the Cleansing Light prayer, or
by an Alchemy check (difficulty set by the GM).

=== Burning

A burning creature is on fire. The specific ongoing Thermal damage is defined by
the power or effect that caused the condition. A burning creature or an adjacent
ally can spend 1 AP to attempt to extinguish the flames (saving throw). Burning
can also be removed by full immersion in water or similar effects.

== Summoning and Binding <summoning>

Some powers and rituals allow a character to bring creatures onto the
battlefield --- whether conjured from raw magical energy, raised from the
dead, or called from another plane. These summoned creatures are a
powerful tool, but they come at a steep cost to the summoner's own
effectiveness.

=== Summoned Creature Basics

A summoned creature is a separate entity on the battlefield. It has its own
stat block, its own initiative count, its own pool of AP and Focus, and it
takes its own turn. It is, for all intents and purposes, another combatant.

This is what makes summoning so potent --- and what makes it so expensive.
A summoning power that places a functional combatant on the field is worth
far more than a power that deals damage once, so the cost must reflect
that.

A summoned creature uses the stat block specified by the power or ritual
that created it. The GM guide provides guidelines for building summon stat
blocks appropriate to each tier. As a general rule, a combat summon called
by a power of tier N has a stat block roughly equivalent to a creature of
tier N--1.

When a summoned creature is reduced to 0 HP, it is destroyed (or
banished, dispersed, etc. as appropriate to its nature). The summoning
effect ends and the summoner no longer pays sustain costs. Summoned
creatures cannot be revived, healed by EP, or resurrected --- they are
expendable by nature.

=== Mindless and Willful Summons

Summoned creatures fall into two categories based on their nature, and the
distinction fundamentally changes how they behave in combat.

==== Mindless Summons

Conjured elementals, animated constructs, and similar entities with no will
of their own are *mindless*. They are perfectly obedient but entirely
inert: a mindless summon does nothing on its turn unless the summoner
issues a *Command* (1 AP) during the summoner's own turn. When commanded,
the creature carries out the instruction to the best of its ability on its
next turn, using its full AP pool.

Without a Command, a mindless summon holds its position and takes no
actions. It does not dodge, does not attack creatures that strike it, and
does not move out of hazards. It is a tool, not an ally.

Mindless summons do not roll initiative. When the summoner uses the Command
action, the creature acts immediately after the summoner's turn ends,
using its full AP pool to carry out the instruction. If the summoner does
not Command the creature, it does not act that round.

The total cost to the summoner each round is therefore: *sustain cost*
(typically 1 AP + Focus) *plus* the *Command action* (1 AP). A summoner
with 4 AP who sustains a mindless creature and commands it has only 2 AP
remaining for their own actions. This is a heavy price, and the summoned
creature's contribution must be worth it.

Mindless summons are safe. They never rebel, never misinterpret orders, and
never act against the summoner's interests. Their limitation is that they
require constant direction.

==== Willful Summons

Undead, fiends, spirits, and other entities with their own minds and
desires are *willful*. A willful summon does not need to be Commanded ---
it acts autonomously on its turn, pursuing the summoner's goals as it
understands them. This makes willful summons cheaper in AP: the summoner
pays only the *sustain cost*, not the Command, leaving more AP for their
own actions.

The price is risk. When a willful creature is first summoned, the summoner
must win a *binding check*: an opposed check of the summoner's Command
characteristic against the creature's Potential. This check is made
immediately when the summoning power resolves.

- *Success:* The creature is bound and acts in the summoner's interest for
  the duration of the effect. It interprets the summoner's intent
  reasonably and fights effectively, though it may not employ optimal
  tactics unless specifically directed (the summoner can still use the
  Command action to issue specific orders if desired).
- *Failure:* The creature is not bound. It appears, but it is not under the
  summoner's control. What happens next depends on the creature's nature
  and disposition: a lesser spirit may simply dissipate; a fiend may turn
  hostile; a powerful undead may attack the summoner outright. The
  summoner's power and sustain cost are wasted, and they now have an angry
  entity on the field.
- *Dramatic failure (zero successes):* As failure, but the creature is
  enraged or empowered by the botched binding. The GM should make the
  consequences memorable.

A willful summon that is bound may still attempt to break free if the
summoner is incapacitated, stunned, or otherwise unable to maintain
concentration. If the summoner drops to 0 HP or is rendered unconscious,
the creature immediately makes a Potential check against the summoner's
Command. On success, it breaks free and acts according to its own nature.

=== Combat Summoning

Combat summoning is performed through *summoning powers* --- spells and
prayers with the *Summon* keyword. These powers follow the standard
sustained power rules:

- *Initial cost:* The power's listed AP and Focus cost. Summoning powers
  are expensive: typically 3 AP and 2--3 increments of Focus to cast,
  reflecting the immense magical effort of pulling a creature into
  existence or across planes.
- *Sustain cost:* Paid each round to maintain the summon. Typically 1 AP
  and 1 increment of Focus. If the summoner cannot or chooses not to pay
  the sustain cost, the creature immediately vanishes.
- *Duration:* As long as the summoner sustains the power, or until the
  creature is destroyed.

A summoner can sustain only *one* summoning power at a time, unless an
advance or other effect specifically allows more. Sustaining a summoning
power follows the same rules as sustaining any other power: the summoner
cannot sustain two different sustained effects simultaneously without a
specific ability that permits it.

The summoned creature appears in an unoccupied space within the power's
range at the end of the summoner's turn. Willful summons roll initiative
normally and act on their own turn starting the following round. Mindless
summons do not roll initiative --- they act immediately after the
summoner's turn when Commanded.

=== Ritual Summoning and Binding

Not all summoning happens in the heat of battle. Rituals can call and bind
creatures over longer durations, producing servants, guardians, and allies
that persist without the constant drain of a sustained power.

Ritual summoning follows the standard ritual rules (see the Skills chapter)
with the following additions:

- *Binding duration:* The ritual specifies how long the binding lasts:
  hours, days, or in rare cases permanently. The summoner does not pay a
  sustain cost during this time --- the binding holds on its own.
- *Binding check:* Willful creatures summoned by ritual still require a
  binding check, made as part of the ritual's casting check. The ritual
  may specify a higher or lower difficulty for this check depending on the
  creature's power. A Circle of Binding (if prepared in advance) grants
  advantage on this check.
- *Breaking free:* A willful creature bound by ritual may attempt to break
  free periodically. The ritual specifies how often (typically once per
  day, or when the summoner is asleep or vulnerable). Each attempt is an
  opposed check of the creature's Potential against the summoner's Command.
  If the creature succeeds, it is free and may act according to its nature.
- *Mindless creatures* bound by ritual simply persist for the binding
  duration. They follow the last standing order they were given and do not
  require Command actions outside of combat. In combat, the normal Command
  rules apply.

Ritual summoning is how a sorcerer acquires a permanent elemental
guardian, how a necromancer raises a retinue of undead, or how a warlock
bargains with a fiend for long-term service. The upfront cost in time,
materials, and risk replaces the round-by-round sustain cost of combat
summoning.

=== The Summoner's Dilemma

Summoning is deliberately designed as a tradeoff, not an upgrade. A
character who summons a mindless creature in combat is spending roughly
half their AP each round on sustain and commands, plus a significant
ongoing Focus cost. They are trading their own effectiveness for an
additional body on the field. This is powerful when the summoner needs to
be in two places at once, hold a chokepoint, or absorb hits --- but a
character who simply wants to deal the most damage will usually be better
served by spending those AP and Focus on their own attacks and powers.

Willful summons are more AP-efficient but carry real risk. A failed binding
check can turn a costly power into a disaster. Characters who specialize in
summoning --- through advances that reduce sustain costs, improve binding
checks, or allow multiple summons --- can tip this balance, but
specialization is itself a cost.

== Vehicle Combat <vehicle-combat>

Ashen features two scales of vehicle combat. *Tactical vehicles* ---
#link(<skimmers>)[skimmers], armored transports, and other craft small
enough to share a battlefield with infantry --- use the standard combat
grid. *Capital vessels* --- #link(<airships>)[airships] and other craft
measured in tens or hundreds of meters --- use a separate strategic scale
with its own movement and targeting rules. For background on how these
vehicles work, see #link(<skimmers>)[_Skimmers_] and
#link(<airships>)[_Airships_] in the Setting chapter. Both scales share a
common stat block format and damage model.

=== Vehicle Statistics

Every vehicle has the following statistics:

- *Hull Points (Hull):* The vehicle's structural integrity. When Hull
  reaches 0, the vehicle is destroyed.
- *Armor:* Physical damage reduction, as for creatures.
- *Ward:* Magical damage reduction, as for creatures.
- *Speed:* How fast the vehicle moves, measured in squares (tactical) or
  bands (strategic).
- *Maneuverability:* A category that describes how responsive the vehicle
  is, which determines what maneuvers it can perform and modifies Piloting
  checks:
  - *Agile (+2):* Small, responsive craft --- interceptors, racing
    skimmers, light scout ships. Can perform all maneuvers, including
    Evasive Action and shake-off attempts.
  - *Standard (0):* Most vehicles --- military skimmers, transports,
    frigates, and mid-sized airships. Can perform all maneuvers.
  - *Heavy (--2):* Large or cumbersome vessels --- armored transports,
    heavy gunships, and most capital warships. Cannot perform Evasive
    Action. Can attempt shake-off, but at +2 difficulty.
  - *Sluggish (--4):* The largest vessels --- dreadnoughts, bulk haulers,
    and anything over roughly 200 meters. Cannot perform Evasive Action
    or shake-off maneuvers at all. These vessels rely on armor, point
    defense, and escort craft for protection.
- *Size:* The vehicle's size category, as for creatures. Tactical vehicles
  are typically Size 2--4; capital vessels are Size 5 or larger.
- *Crew:* The number of crew stations the vehicle supports and the minimum
  crew needed to operate it.
- *Weapons:* The vehicle's mounted armaments, listed with their own damage,
  range, and fire mode statistics.

=== Scale Conversion

Tactical vehicles and characters share the same damage scale. A skimmer
with 40 Hull is destroyed by the same amount of punishment that would kill a
creature with 40 HP.

Capital vessels operate at *strategic scale*, where one point of Hull
damage is equivalent to *10 points of tactical damage*. A capital vessel
with 80 Hull would take 800 points of tactical-scale damage to destroy ---
an absurd amount of personal firepower, but a manageable number at
strategic scale where ship weapons deal 10--30 damage per salvo.

When converting between scales:

- *Strategic → tactical:* Multiply by 10. A ship weapon dealing 15 Hull
  damage at strategic scale deals 150 HP damage to a person-sized target.
  This is invariably lethal and should be treated as such --- characters
  caught in a ship-weapon strike do not roll saves; they find cover or they
  die.
- *Tactical → strategic:* Divide by 10 (round down, minimum 0). A
  shoulder-fired anti-vehicle rocket dealing 25 tactical damage deals 2
  Hull damage to a capital vessel. Personal weapons that deal less than 10
  tactical damage per hit deal 0 Hull damage and cannot harm a capital
  vessel at all.

=== Damage Thresholds

Vehicles do not suffer status conditions. Instead, they degrade through
damage thresholds. When a vehicle's Hull drops below a threshold, it
suffers the listed consequence. These apply at both scales.

- *75% Hull --- Damaged:* One system is knocked offline (GM chooses: a
  weapon, the engines, sensors, or shields). A Shop check
  (difficulty 4) and 1 stretch of work can restore the system temporarily.
- *50% Hull --- Heavily Damaged:* The vehicle's Speed is halved (round
  down). All crew checks suffer --2 dice. A second system goes offline.
- *25% Hull --- Critical:* A third system goes offline. The vehicle is on
  fire, venting atmosphere, or otherwise in immediate danger. At the start
  of each round, the vehicle takes additional Hull damage equal to 5% of
  its maximum Hull (round up) unless a crew member spends their turn on
  damage control (Shop check, difficulty 6, to stop the bleed for
  one round).
- *0% Hull --- Destroyed:* The vehicle is wrecked. How it dies depends on
  the damage it sustained. A ground vehicle grinds to a halt or detonates
  its fuel supply. For capital vessels, check which systems were knocked
  offline during the fight:
  - If the damage is mostly *external* (hull breaches, engines, helm,
    sensors), the vessel loses lift and begins to fall. The crew has 3--5
    rounds to evacuate before impact.
  - If the damage is mostly *internal* (magazine, shields, drive on a
    Mist-reactor vessel), the reactor containment fails. The vessel
    explodes catastrophically, dealing Hull damage equal to half its
    maximum Hull to everything within Close range and killing everyone
    still aboard.
  - If the damage is *mixed*, the GM chooses or rolls: on a 1--3 the
    vessel falls; on a 4--6 the reactor goes.

When a system goes offline, roll on the appropriate table. If the result
has already been knocked offline, take the next entry down the table
(wrapping to the top if necessary).

#pftab(
  "Tactical Vehicle System Damage (D6)",
  columns: (1fr, 3fr),
  align: (center, left),
  stroke: 0.5pt,

  [*Roll*], [*System Disabled*],
  [1], [*Weapons:* One mounted weapon (chosen randomly) cannot fire.],
  [2], [*Drive:* Speed halved (stacks with the Heavily Damaged penalty). If already halved, the vehicle is immobilized.],
  [3], [*Steering:* Piloting checks suffer --4 dice. The vehicle cannot turn more than 45 degrees per Drive action.],
  [4], [*Sensors:* Gunners suffer --2 dice to all attacks. The vehicle cannot detect threats beyond visual range.],
  [5], [*Armor Breach:* The vehicle's Armor is reduced by a quarter (round down). Crew lose the benefit of cover from one facing (GM determines which).],
  [6], [*Cargo:* Passenger compartment or cargo hold is compromised. Passengers take 2D8 damage from shrapnel and debris; loose cargo is destroyed or scattered.],
)

#pftab(
  "Capital Vessel System Damage (D8)",
  columns: (1fr, 3fr),
  align: (center, left),
  stroke: 0.5pt,

  [*Roll*], [*System Disabled*],
  [1], [*Main Battery:* One main weapon system cannot fire until repaired.],
  [2], [*Point Defense:* Point-defense weapons go offline. The vessel cannot intercept missiles or engage tactical-scale targets.],
  [3], [*Engines:* Speed reduced by 1 band per round (minimum 0). If already at 0, the vessel is adrift.],
  [4], [*Helm:* Navigation controls unresponsive. The vessel cannot maneuver --- no Evasive Action, Present Broadside, or Ramming Speed until repaired. The vessel drifts in its current direction.],
  [5], [*Shields:* Ward generators fail. The vessel's Ward drops to 0.],
  [6], [*Sensors:* Long-range detection is lost. All attacks beyond Close range suffer an additional +2 difficulty. The vessel cannot detect threats at Extreme range.],
  [7], [*Hull Breach:* Compartments near the impact are open to the elements. Crew in the affected section take 2D10 damage and must make an Athletics check (difficulty 4) or be swept out. In a Fog zone, the breach floods the section with Fog --- treat as Moderate Fog exposure.],
  [8], [*Magazine:* Ammunition stores or power conduits are hit. An internal explosion deals Hull damage equal to 10% of the vessel's maximum Hull. If the magazine has already been hit, the second hit deals 25%.],
)

=== Crew Stations

A vehicle's crew operate from *stations*. Each station allows one character
to contribute to the vehicle's performance during their turn. A character
occupying a station uses their own skills and characteristics to make
checks, modified by the vehicle's statistics.

The standard stations are:

- *Helm:* The pilot. Controls movement and maneuvers. Uses the *Piloting*
  skill for all checks. Only one character can occupy the helm.
- *Weapons:* A gunner. Fires one of the vehicle's mounted weapons. Uses
  *Marksmanship* as normal, but the weapon's profile replaces the gunner's
  personal weapon. A vehicle may have multiple weapon stations.
- *Engineering:* The mechanic. Repairs damage, boosts systems, and manages
  emergencies. Uses the *Shop* or *Magitek* skill (whichever is more
  appropriate to the system being worked on). An engineer can spend their turn
  (4 AP) to attempt a repair: on a success, restore Hull equal to the
  check's margin of success, or bring one offline system back for 1d6
  rounds.
- *Command:* The officer. Coordinates the crew. Uses the *Command*
  characteristic. On a successful Command check (difficulty 3), choose one
  crew member: that crew member gains +2 dice on their next check this
  round. A vehicle can only benefit from one Command action per round.

A character at a station can still use powers and abilities that do not
require movement or a free hand, but they cannot leave their station and
act in the same turn. Leaving a station costs 1 AP.

=== Vehicle Armaments <vehicle-armaments>

Vehicles mount weapons, shields, and other systems in much the same way
characters equip gear. Two constraints govern what a vehicle can carry:

- *Weight (Wt):* The physical mass and volume of mounted systems. A
  vehicle's *Weight capacity* represents how much hardware its frame can
  structurally support. Analogous to a character's Bulk capacity.
- *Reactor Draw (RD):* The power demand of active systems --- weapons that
  need charging, shield generators, sensors, and similar equipment. A
  vehicle's *Reactor capacity* represents how much energy its power plant
  can supply simultaneously. Analogous to a character's Charge capacity.
  Unpowered items (solid-slug guns, unenchanted armor plating) have
  Reactor Draw 0.

Every mountable system lists a Weight and Reactor Draw value. The total
Weight and Reactor Draw of all mounted systems must not exceed the
vehicle's capacities. Exceeding Weight is physically impossible --- the
frame cannot support it. Exceeding Reactor capacity causes *brownouts*: at
the start of each round, the crew must choose which powered systems to shut
down until total Draw is within capacity. Unpowered weapons cannot fire;
unpowered shield generators provide no Ward.

Swapping mounted systems requires a workshop and a Shop check. For
tactical vehicles, a refit takes one stretch of downtime per system
changed. For capital vessels, refitting a single weapon system takes a day;
a full refit takes a week or more.

==== Tactical Vehicle Weapons

Tactical vehicle weapons are mounted on skimmers, APCs, walkers, and
similar craft. They use the same damage scale as personal weapons but are
significantly more powerful --- a single burst from a turret autocannon
hits harder than anything a soldier can carry. All tactical vehicle weapons
have the *Mounted* keyword: they cannot be removed and wielded by hand, and
they can only be fired from a weapon station.

Weapons are categorized by their *mount type*, which determines fire arc
and the gunner's exposure:

- *Pintle:* A light weapon on a flexible mount, operated by a gunner who
  is partially exposed. Pintle weapons have a *turret* fire arc (360
  degrees) but the gunner has only *partial cover*. Cheap, light, and
  ubiquitous --- most skimmers carry at least one.
- *Fixed:* A weapon bolted to the hull, aimed by steering the vehicle
  itself. Fixed weapons have a *front* fire arc only. They are lighter
  than equivalent turret weapons, making them popular on fast craft that
  can point their nose at the target.
- *Turret:* A weapon in an enclosed rotating housing with a full *turret*
  fire arc. The heaviest and most flexible mount type; the gunner has
  *total cover*. Only vehicles with sufficient Weight capacity mount
  turrets.

#pftab(
  "Tactical Vehicle Weapons",
  columns: (3fr, 1fr, 2fr, 1fr, 1fr, 1fr, 1fr, 2fr, 1fr, 2fr),
  breakable: true,
  [*Name*], [*Tier*], [*Damage*], [*Pen*], [*Wt*], [*RD*], [*FM*], [*Range*], [*Mount*], [*Special*],
  [Pintle Machine Gun], [1], [12+D10], [0], [1], [0], [FA 3], [M], [Pintle], [],
  [Fixed Autocannon], [2], [20+D12], [4], [2], [0], [SA 3], [L], [Fixed], [Anti-Vehicle],
  [Mist Repeater], [2], [18+D10], [10], [2], [1], [S], [M], [Fixed], [],
  [Turret Autocannon], [2], [20+D12], [4], [3], [0], [SA 3], [L], [Turret], [Anti-Vehicle],
  [Missile Pod], [3], [30+2D10], [0], [2], [1], [S], [VL], [Fixed], [Anti-Vehicle, Explosive],
  [Heavy Mist Lance], [3], [28+2D8], [14], [3], [2], [S], [L], [Fixed], [Anti-Vehicle],
  [Battle Cannon], [3], [35+2D10], [6], [4], [1], [S], [L], [Turret], [Anti-Vehicle, Explosive],
  [Plasma Turret], [4], [30+2D12], [16], [4], [3], [S], [M], [Turret], [Anti-Vehicle, Burning],
)

==== Shield Generators

A *shield generator* projects an arcane ward field around the vehicle,
providing its Ward value. A vehicle without a shield generator has Ward 0.
Shield generators are powered systems --- they consume Reactor capacity and
can be knocked offline like any other system.

When a single attack deals damage that exceeds twice the vehicle's current
Ward (before Ward reduces the damage), the generator is *overloaded*: it
shuts down and the vehicle's Ward drops to 0 until a crew member restores
it. Restoring an overloaded generator requires an action at the Engineering
station (1 AP, Shop check difficulty 4). Capital vessel shield arrays use
the same overload rule at strategic scale.

#pftab(
  "Shield Generators",
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 3fr),
  breakable: true,
  [*Name*], [*Tier*], [*Ward*], [*Wt*], [*RD*], [*Notes*],
  [Light Shield Projector], [1], [4], [1], [1], [Tactical scale. Common on civilian skimmers.],
  [Combat Shield Generator], [2], [8], [2], [2], [Tactical scale. Standard military issue.],
  [Heavy Shield Generator], [3], [14], [3], [3], [Tactical scale. Heavy skimmers and APCs.],
  [Ship Shield Array], [3], [5], [6], [4], [Strategic scale. Small to medium vessels.],
  [Capital Shield Array], [4], [8], [8], [6], [Strategic scale. Large warships.],
  [Dreadnought Shield Array], [5], [12], [12], [8], [Strategic scale. Only the largest vessels.],
)

== Tactical Vehicles

Tactical vehicles --- skimmers, armored cars, walkers, and similar craft
--- operate on the standard combat grid alongside characters.

=== Vehicles on the Grid

A tactical vehicle occupies a space determined by its Size, just like a
creature. A Size 2 skimmer occupies a 2×2 space; a Size 3 APC occupies
3×3. The vehicle's facing matters: it has a front, rear, and two flanks.
Mounted weapons have a *fire arc* (front, rear, left, right, or turret)
that determines which directions they can target.

=== Vehicle Movement

A vehicle moves during the pilot's turn. The pilot spends AP to move the
vehicle, just as a character spends AP to move themselves:

- *Drive (1 AP):* Move the vehicle up to its Speed in squares. The vehicle
  must move in the direction it is facing; it cannot strafe.
- *Turn (0 AP):* As part of a Drive action, the pilot may turn the vehicle
  up to 90 degrees at any point during the movement. Turning more than 90
  degrees in a single Drive action requires a Piloting check (difficulty
  3). Failure means the vehicle skids: it completes the turn but moves 1d3
  squares in its original direction of travel.
- *Reverse (1 AP):* Move the vehicle up to half its Speed directly
  backward.
- *Ram (1 AP):* The pilot drives the vehicle into a creature or another
  vehicle. See _Ramming_ below.

==== Piloting Checks

The pilot makes Piloting checks to perform difficult maneuvers: sharp
turns, navigating obstacles, avoiding hazards, or maintaining control after
taking damage. When a vehicle drops below a damage threshold, the pilot
must immediately make a Piloting check (difficulty 3, or 5 for Critical) or
the vehicle spins out, ending its movement immediately and becoming
*exposed* until the pilot's next turn.

=== Passengers

Characters inside or on a vehicle who are not at a crew station are
*passengers*. Passengers may act normally on their turns --- firing personal
weapons, using powers, and so on --- but with the following restrictions:

- *Unstable platform:* Ranged attacks made from a moving vehicle suffer --2
  dice. This penalty is negated if the vehicle did not move this round.
- *Limited arcs:* A passenger can only target enemies they can see from
  their position on the vehicle. The GM adjudicates line of sight based on
  the vehicle's shape and the passenger's location.
- *Embarking and disembarking:* Boarding a vehicle or leaving it costs 2 AP
  and provokes opportunity attacks if the character is adjacent to a
  hostile creature.

=== Targeting Vehicles

Attacks against tactical vehicles follow the normal attack rules with the
following modifications:

- *No Evasion:* Vehicles do not have Evasion. Any attack that can reach the
  vehicle hits automatically unless the pilot uses a reaction (see
  _Evasive Maneuvers_ below).
- *Cover:* Crew and passengers inside an enclosed vehicle have *total
  cover* from attacks originating outside the vehicle. Crew and passengers
  on an open vehicle (such as an open-topped skimmer) have *partial cover*
  (+3 difficulty to target them directly).
- *Targeting crew directly:* An attacker may choose to target a specific
  crew member instead of the vehicle, but only if that crew member is
  visible. The attack targets the crew member's defenses, not the
  vehicle's, but must overcome any cover the vehicle provides.

==== Evasive Maneuvers

Once per round, when the vehicle is targeted by an attack, the pilot may
spend 1 AP as a reaction to attempt evasive maneuvers. The pilot makes a
Piloting check; each success adds +1 to the difficulty of the incoming
attack. The vehicle moves 1 square in a direction of the pilot's choice as
part of this reaction.

=== Anti-Vehicle Weapons

Most personal weapons are ineffective against armored vehicles. Only
weapons with the *Anti-Vehicle* keyword or that deal *Explosive* damage
can damage tactical vehicles at full effect. Other personal weapons have
their damage halved (after armor) against vehicles.

Powers that deal damage can affect vehicles normally, as magical force
does not care about hull plating. However, conditions that target a
creature's mind (Dominated, Stunned, Dazed) have no effect on a vehicle
--- target the pilot instead.

=== Ramming

A vehicle that moves into a creature or another vehicle can ram it. The
pilot makes a Piloting check against difficulty 3 (or the target pilot's
Piloting check, if ramming another vehicle). On a hit:

- *Ramming a creature:* The creature takes damage equal to the vehicle's
  Armor value plus the number of squares the vehicle moved this action.
  This damage is reduced by the creature's armor as normal. The creature is
  also knocked prone and pushed to the nearest unoccupied square.
- *Ramming a vehicle:* Both vehicles take damage equal to the other
  vehicle's Armor value, plus the combined number of squares both vehicles
  moved this round. Both pilots must make Piloting checks (difficulty 4) or
  spin out.

A vehicle that rams a creature or object more than two Sizes smaller than
itself does not stop or take damage.

== Capital Vessel Combat

Capital vessels --- airships, dreadnoughts, and similar craft --- are too
large for the tactical grid. Capital vessel combat uses range bands and
crew actions at strategic scale.

=== The Strategic Scale

At strategic scale, distances are measured in *range bands* rather than
squares:

- *Contact* (boarding range, under 100m): Ships can board each other.
  Personal weapons can target the opposing hull. Ramming is possible.
- *Close* (100--500m): Light weapons and point-defense fire. Small craft
  can cross this gap in one round.
- *Medium* (500m--2km): Standard engagement range. Main batteries and
  missile weapons are effective.
- *Long* (2--5km): Heavy weapons and long-range ordnance only. Most fights
  begin here.
- *Extreme* (5km+): Beyond effective weapons range. Detection, pursuit, and
  retreat happen here.

Moving one range band costs 1 point of the vessel's Speed. A vessel with
Speed 3 can close three bands in a single round.

=== Rounds at Strategic Scale

Capital vessel combat uses the same round structure as tactical combat. Each
crew member acts on their own initiative, taking actions at their station.
The vessel itself does not have a turn --- its actions are the sum of its
crew's contributions.

A round of strategic combat represents roughly the same amount of time as a
round of tactical combat: a few seconds of frantic activity. The difference
is purely one of scale, not of time.

=== Ship Weapons

Ship weapons use the same stat format as personal weapons (damage, range,
fire mode, penetration) but at strategic scale. A ship weapon dealing
20 Hull damage is equivalent to 200 points of tactical damage --- enough
to obliterate anything smaller than a vehicle.

The size of a vessel determines what it can mount. A small scout ship's
main guns are the same caliber that a dreadnought relegates to point
defense. The categories below describe weapons by role; a given vessel will
only mount weapons appropriate to its size and Reactor capacity.

==== Point Defense

Rapid-fire light weapons --- rotary autocannons, flak batteries, light
mist guns --- designed to engage fast, small targets at close range.
Point-defense weapons deal damage at *tactical scale*, not strategic. On
the smallest capital vessels (scouts and interceptors, roughly thirty
meters long), these _are_ the main guns; on larger vessels they serve a
purely defensive role, shooting down incoming missiles and strafing
boarding craft.

==== Gun Batteries

Direct-fire weapons that form the main armament of small-to-medium vessels
and the secondary armament of anything larger. Light mist guns, railgun
turrets, and plasma projectors fall into this category. Gun batteries
engage at Close to Medium range and deal moderate Hull damage. A frigate's
broadside of mist guns is enough to cripple another frigate; against a
dreadnought, the same guns can only chip away at the hull.

==== Main Batteries

The heaviest direct-fire weapons a vessel carries. On a frigate this might
be a pair of mist lances; on a dreadnought it is an array of exawatt mist
lances that can empty the sky for miles in front of the ship. Main
batteries engage at Medium to Long range and represent the vessel's primary
killing power in a direct engagement.

==== Missiles

Self-propelled guided munitions whose size, range, and destructive power
scale dramatically with the vessel that launches them. Small ships carry
*rocket pods* little different from ground-launched anti-vehicle missiles.
Medium vessels mount *tactical missiles*: guided munitions with shaped
warheads, effective at Medium to Long range. The largest warships carry
*cruise missiles* and *aeroballistic missiles* --- half-ton warheads on
self-guided airframes that can strike targets at distances of dozens to
hundreds of kilometers, far beyond normal engagement range. These strategic
munitions are typically fired during the approach phase before ships close
to engagement range; once battle is joined, the ship relies on its
batteries.

All missiles have a *magazine* value: the number of shots carried. Once a
magazine is empty, the weapon cannot fire until rearmed at a port or supply
vessel. Weapons with the *Guided* keyword can be fired at targets beyond
line of sight if another source (a spotter, allied vessel, or sensor lock)
provides targeting data.

==== Ship Weapon Stats

Ship weapons have a *minimum range band* and a *maximum range band*. A
weapon listed as "Md--Lg" can fire at targets in the Medium or Long bands
but not at Close or Contact range. Point-defense weapons cover Contact and
Close; gun batteries typically cover Close to Medium; main batteries cover
Medium and Long; heavy ordnance covers Long and Extreme.

A gunner at a weapon station fires a ship weapon using their Marksmanship
check against a base difficulty of *3* (modified by range, conditions, and
target maneuvers). On a hit, the weapon deals its listed Hull damage,
reduced by the target's Armor.

#pftab(
  "Ship Weapons (Strategic Scale Unless Noted)",
  columns: (3fr, 1fr, 2fr, 1fr, 1fr, 1fr, 2fr, 1fr, 3fr),
  breakable: true,
  [*Name*], [*Tier*], [*Damage*], [*Pen*], [*Wt*], [*RD*], [*Range*], [*FM*], [*Special*],
  [Rotary Autocannon], [1], [15+2D10 \*], [2], [1], [1], [Ct--Cl], [FA 3], [Point Defense],
  [Flak Battery], [2], [12+2D8 \*], [0], [2], [1], [Ct--Cl], [S], [Point Defense, Burst 3],
  [Light Mist Gun Battery], [2], [8+D6], [3], [3], [2], [Cl--Md], [SA 3], [],
  [Railgun Turret], [3], [12+D8], [6], [4], [3], [Cl--Md], [S], [],
  [Mist Lance Battery], [3], [15+D10], [8], [6], [5], [Md--Lg], [S], [],
  [Exawatt Mist Lance Array], [5], [20+3D10], [14], [10], [8], [Md--Lg], [S], [],
  [Rocket Pod], [1], [10+D10], [8], [1], [0], [Cl--Md], [S], [Magazine 6],
  [Tactical Missile Rack], [3], [18+D10], [10], [4], [2], [Md--Lg], [S], [Magazine 8, Guided],
  [Cruise Missile Silo], [4], [25+2D10], [12], [6], [3], [Lg--Ex], [S], [Magazine 4, Guided, Long-Range],
  [Aeroballistic Missile], [5], [35+2D12], [16], [10], [6], [Ex], [S], [Magazine 2, Guided, Long-Range],
)

_\* Point-defense weapons deal damage at tactical scale, not strategic._

==== Range Modifiers

- *Close:* No modifier.
- *Medium:* No modifier.
- *Long:* +2 difficulty.
- *Extreme:* +4 difficulty. Only weapons with the Long-Range keyword can
  fire at Extreme range.

=== Ship Maneuvers

The helm officer moves the ship and performs maneuvers. On their turn, the
pilot may:

- *Ahead (1 AP):* Move the vessel up to its Speed in range bands toward or
  away from a target.
- *Evasive Action (2 AP):* _Agile, Standard, or Heavy only._ Until the
  pilot's next turn, all attacks against this vessel suffer +2 difficulty.
  The vessel cannot fire main batteries while performing evasive action
  (point-defense weapons are unaffected). Requires a Piloting check
  (difficulty 3, modified by the vessel's Maneuverability). On failure,
  the +2 difficulty is only +1.
- *Ramming Speed (2 AP):* Commit to a ram. The vessel moves its full Speed
  toward the target. If it reaches Contact range, both vessels take Hull
  damage equal to the other's Armor. Both pilots make Piloting checks
  (difficulty 5); failure means the ramming vessel's own damage is doubled.
  Ramming is a desperate act --- the attacker always takes damage.
- *Present Broadside (1 AP):* Position the vessel to bring maximum
  firepower to bear. Until the pilot's next turn, all gunners on this
  vessel gain +2 dice to their attacks against a single designated target.

=== Boarding Actions

Generally speaking, airships fight at long ranges by throwing missiles
at each other, or firing batteries of suitably destructive direct-fire
weaponry, like hypervelocity railguns or mist lances, whose short range and
lack of terminal guidance is made up for in their ability to cripple or 
destroy an enemy ship in a single hit. In such a climate, attempting to
board a hostile craft may seem equal parts pointless and suicidal.
However, Deathless involved in air-to-air fighting will often find themselves
contemplating such actions --- for them, falling several miles or having 
an all-too-close encounter with point defence cannons is unpleasant, but not
the end; and furthermore, given the scarcity of airships, capturing one is
usually much preferable to destroying it.


Airships move in three dimensions at hundreds of kilometers per hour.
Pulling alongside and lashing hulls together, as in naval tradition, is
not practical. Boarding a capital vessel requires a *forced insertion*:
the boarding party must cross the gap between vessels under their own
power and breach the target's hull.

Common insertion methods include:

- *Fast attack craft:* A small tactical vehicle (an interceptor ship, a shuttle, or
  even a drop pod) closes to Contact range with the target and delivers the
  boarding party to the hull. The pilot makes a Piloting check (difficulty
  4) to match speed and dock or crash-land on the target's deck. On
  failure, the craft overshoots --- the boarding party must wait one round
  and try again.
- *Teleportation:* A character with access to a teleportation power or
  ritual can transport the boarding party directly onto the target vessel.
  The caster must be able to perceive the target (visually or through
  sensors) and the vessel must be within the power's range. The target
  vessel's Ward applies as additional difficulty to the teleportation
  check, at the GM's discretion.
- *Jump:* Characters with flight, jump packs, or sufficient magical
  mobility can cross the gap individually. This requires the vessels to be
  at Contact range. Each character must make an Athletics or Acrobatics
  check (difficulty 4) to land safely; failure means a bad landing
  (prone, 2D10 damage from impact) or a miss entirely (the character is
  now falling and must save themselves).

Once the boarding party is on the target vessel, combat transitions to the
tactical grid. Represent the interior of the target vessel as a series of
rooms and corridors. The boarding party must fight through defenders to
reach critical stations --- the helm, the engine room, the magazine.

While boarding is in progress, the vessel being boarded continues to move and
may take fire from other combatants.

A vessel with Agile, Standard, or Heavy maneuverability that is being
boarded can attempt to *shake off* boarders while they remain on the
outside of the ship. Sluggish vessels are simply too ponderous --- they
must rely on point defense and their own security teams. The helm officer
makes a Piloting check (difficulty 4, modified by Maneuverability) and
performs a violent maneuver --- a barrel roll, a sudden dive, or a hard
burn. Every creature on the vessel's exterior (including boarders who have
not yet breached the hull) must make an Athletics check (difficulty 5) or
be thrown clear. Boarders who have already entered the vessel's interior
are unaffected, but all creatures aboard (including the vessel's own crew)
suffer the effects of the unstable platform penalty (--2 dice) for the
remainder of the round.

=== Point Defense

Capital vessels may mount *point-defense* weapons: rapid-fire light guns
designed to engage small, fast targets. Point-defense weapons can target
tactical-scale vehicles and characters at Close and Contact range. Their
damage is dealt at tactical scale, not strategic scale --- they are
anti-fighter and anti-boarding weapons, not ship-killers.

A gunner at a point-defense station can also use a reaction (1 AP) to
attempt to intercept incoming missiles or rockets. The gunner makes a
Marksmanship check against the missile's attack roll; on success, the
missile is destroyed before it hits.

=== Capital Vessel Damage

Capital vessels use the same damage threshold system described under
_Damage Thresholds_, with the following additions:

- When a system is knocked offline, the GM should choose a system that
  creates immediate tactical consequences: losing the main battery forces
  the crew to rely on point defense; losing engines leaves the vessel
  adrift; losing helm control means no maneuvers until it is repaired.
- At *Critical* threshold, the vessel may begin to lose altitude (if an
  airship) or take on fog contamination (if the hull is breached in a Fog
  zone). The GM should describe the deterioration vividly --- groaning
  hull plates, alarms, listing decks --- to convey urgency.
- A capital vessel at 0 Hull does not explode instantly. It is mortally
  wounded and will go down within minutes, but the crew has time to
  evacuate, perform last-ditch repairs, or make a final stand. The GM
  should give the crew 3--5 rounds to act before the vessel is truly lost.
