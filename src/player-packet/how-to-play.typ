#import "../formatting/declarations.typ": *

#chap-header([], "How to Play", "The whole game in a few pages")

The following pages detail everything you need to play. Of course, many small
rules have been left out of this overview. If anything is unclear at the table,
feel free to ask the GM.

== What you need to play

To play, you'll need your character sheet, your wits about you,
some scratch paper, a pen, and a collection of dice. 
Ashen principally uses normal six-sided dice, abbreviated "d6" or "d".
For certain features of the game, like damage calculation, other dice with sides
from 4 to 12 are used. It is recommended that each player have 10 six-sided dice
and one d4, d8, d10 and d12 each.

== The Basic Conversation

Like every other Tabletop RPG, the core of gameplay is nothing more than a
conversation. The game unfolds as follows:

+ The GM describes the situation.
+ You say what your character does.
+ If the outcome is obvious, it just happens.
+ If success and failure are both plausible *and both interesting*, you roll.

Then repeat.

== Checks and Ashen Dice

When the outcome of a character's action is in doubt, the GM will call to
make a *check*. When this happens, the GM will also announce what skill
or characteristic you will need to check against. On your character sheet,
find the *rating* for that statistic --- the right-most number for each skill or characteristic --- and roll as many six-sided dice as that number.

Then count the results. Each side of each die is worth a certain number of
*successes*:

#pftab(
  "Reading Ashen Dice",
  columns: (1fr, 2fr),
  align: (center, left),
  [Die result],
  [Contribution],
  [1],
  [--1 success],
  [2--3],
  [no successes],
  [4--5],
  [1 success],
  [6],
  [2 successes],
)

Add it up. Meet or beat the *difficulty* and you succeed. Come in under it and
you fail. Land on zero or below and you have scored a *critical failure* ---
something has actively gone wrong, not merely not-worked.

Difficulty 3 is a real task competently attempted. Difficulty 5 is hard.
Difficulty 7 is something you should have prepared for.

#note[
  *Example:* Your Awareness rating is 5, so you roll 5d to notice a tripwire.
  You get 6, 4, 3, 2, 1. That is 2 + 1 + 0 + 0 -- 1 = *2 successes*. Against
  difficulty 2 you spot it. Against difficulty 3 you do not.
]

=== Bonuses and penalties

Bonuses and penalties change *how many dice you pick up*. A +2d bonus means
two extra dice. A --2d penalty means two fewer. If penalties would take you to zero dice, you simply fail; there is nothing to roll.

Bonuses and penalties may be *situational* or *innate*. Innate bonuses are listed
on your character sheet; situational ones are communicated to you by the GM.

#note[
  *Example:* a human with the *Pistoleer* advance fires their pistol at an enemy
  in a cramped basement. They fire at close range, so their advance gives them
  an *innate bonus* of two dice; but it is dark in the basement, so the GM rules
  that they also take a -2d *situational penalty* to the attack. The end result 
  is that both cancel out and the character just rolls their Marksmanship as normal.
]

== Reading Your Sheet

Your sheet is filled in already. These are the boxes you will actually touch:

#pftab(
  "The Numbers You Need",
  columns: (1fr, 3fr),
  align: (left, left),
  [*Box*],
  [*What it does*],
  [HP],
  [Hit points. At 0 you die (see below).],
  [FP],
  [Focus. Fuel for powers, spells, and special attacks.],
  [EP],
  [Essence. Spend 5 to get back up after dying.],
  [AP],
  [Action points --- 4 per turn.],
  [Evasion],
  [How many successes an attacker needs to hit you.],
  [Armor],
  [Subtracted from incoming physical damage.],
  [Ward],
  [Subtracted from incoming magical damage.],
  [Move],
  [Squares you cross with one Move action.],
  [Ratings],
  [Your dice pools. Bigger is better; roll that many d6.],
)

Everything else on the sheet is reference material for a longer campaign. Ignore
it today.

== Combat

Unless you are exceptionally clever, it is likely you will find yourself in combat at some point during the adventure. Combat uses a slightly more granular resolution system than normal play: each combatant gets one turn per round; each turn you get *4 AP* to spend.

=== Rolling initiative

To determine your place in the turn order, roll a number of d6 equal to your *Initiative rating* when combat starts. Unlike all other such rolls, here you
add the *pips* --- the actual numbers on the dice, not successes. Highest goes first.

=== Spending AP

#pftab(
  "Common Actions",
  columns: (1fr, 3fr),
  align: (center, left),
  [AP],
  [What you can do],
  [1],
  [Take Aim, Brace, Disengage, Draw or stash an item, Stand up],
  [2],
  [*Attack*, Dash, Use an item, Combat maneuver, most powers],
  [3],
  [Charge (move at a target, then attack with +4d)],
  [Varies],
  [Move, use a skill, use a power],
)

Your *first* Move each turn costs 1 AP. Your second costs 2, your third costs 3.
Walking back and forth is expensive; commit to a direction.

=== Making an attack

+ Pick a target in range.
+ Roll *Martial* for melee, *Marksmanship* for ranged, or whatever the power
  tells you.
+ Successes equal to or greater than the target's *Evasion* means you hit.
+ Roll the weapon's damage.
+ Subtract the target's Armor (physical) or Ward (magical). *Penetration* on
  your weapon cancels that much Armor.
+ What is left comes off their HP.

=== Reactions

You get *one reaction per round*, for free, out of turn. The common ones:

- *Opportunity Attack* --- someone leaves your reach, you hit them.
- *Dive* --- drop prone to reduce incoming ranged damage.
- *Fire Overwatch* --- shoot someone entering an area you are covering.

Reactions are the main reason moving past enemies is dangerous.

=== Damage, and dying

At 0 HP you die. On your next turn you may spend *5 EP (Essence Points)*
to get straight back up, provided your body is still in one piece. 
If you cannot or will not, your essence goes home to your soul anchor 
and you are out of the fight

Enemies that understand what you are will try to wreck the corpse to stop the
first option. This is the polite way the setting tells you that positioning
matters.

=== Powers

Some characters have *powers*: supernatural abilities they can use in combat
in lieu of a more mundane action. Powers cost *Focus*, or *FP* for short. 

#attention[
  Most powers cost *increments* rather than a flat number. One increment costs
  the FP listed on your implement --- your profile spells out exactly how many
  times you can use each of your powers today. It is usually two or three.
]

#colbreak()

=== Resting and Recovery

If you've been in a fight, you are likely to be injured, or have spent all your
Focus. If you were a mortal man (or woman), this would likely require weeks
of resting and recovery to heal --- but you are Deathless. You may spend EP to
activate your immortal body's prodigious healing ability. With one EP spent,
you may recover up to half your Health or your entire Focus.

While this ability is much faster than a mortal's natural healing, it does still
require a bit of time. You need around half an hour of rest to use this ability,
so you cannot do it while you're still fighting.

#note[
  Many more detailed rules are deliberately left out of this primer, but 
  that is what a learn-to-play adventure is about. Describe what you want, and
  let the GM translate.
]
