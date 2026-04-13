#import "declarations.typ": *

= Combat

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
