#import "../formatting/declarations.typ": *

#chap-header([], "Quickstart", "Start playing before reading everything")

Ashen is a large ruleset, and you are not expected to memorize it before the
first session. This quickstart gives you the shape of play: what the characters
are, how checks work, how a first character is assembled, and how a basic fight
is resolved. The chapters that follow are the full rules reference.

Read this section first if you are new to the game. When a rule here is short
or incomplete, the later chapter named in the text is authoritative.

== What Ashen is About

In Ashen, the player characters are *Deathless*: immortal veterans of the Last
War, cursed to return from death until the purpose binding them to the world is
fulfilled. They travel through an age of ruins, Fog, broken gods, old machines,
and powers that survived the end of the world.

Death matters, but it is not usually the end of a character. A Deathless who
falls can spend Essence to return, or reincorporate later at their soul anchor.
The real stakes of play are what happens while the party is delayed, depleted,
or forced to retreat: enemies complete rituals, settlements fall, allies die,
treasure is taken, clocks advance, and opportunities close.

Ashen therefore rewards characters who are good at doing hard things under
pressure. Combat matters. Equipment matters. Time matters. The party is not
trying merely to survive; they are trying to accomplish something before the
world moves on without them.

#attention[
  ===== Core assumption
  A failed mission should usually change the situation, not end the campaign.
  The party may return from death, but not from lost time, lost allies, spent
  Essence, broken equipment, or a rival who reached the prize first.
]

== The Basic Conversation

Most of the game is a conversation between the GM and the players.

+ The GM describes the situation: what the characters see, what is happening,
  and what seems immediately possible.
+ The players say what their characters do.
+ If the result is obvious, it happens.
+ If both success and failure are plausible and meaningful, the GM calls for a
  check.
+ The check resolves the immediate uncertainty, and the situation changes.

The important phrase is *or else*. A check should have a consequence attached
to failure.

#note[
  *Example:* "Make an Athletics check or else you lose your grip and fall."
  "Make an Influence check or else the official becomes suspicious." If there is
  no "or else", there is usually no reason to roll.
]

== Checks and Ashen Dice

When you make a check, you roll a pool of six-sided dice. The number of dice is
usually equal to the relevant skill or characteristic rating.

Ashen dice are counted as follows:

#pftab(
  "Reading Ashen Dice",
  columns: (1fr, 2fr),
  align: (center, left),
  [Die result],
  [Contribution],
  [1],
  [-1 success],
  [2-3],
  [0 successes],
  [4-5],
  [1 success],
  [6],
  [2 successes],
)

Add the successes together. If the total is equal to or higher than the
difficulty, the check succeeds. If it is lower, the check fails. If the final
total is zero or negative, the check is a *critical failure*.

Bonuses and penalties usually change the number of dice you roll. A +2d bonus
adds two dice to the pool. A -2d penalty removes two dice from the pool. If
penalties reduce the pool to zero dice, the check fails automatically.

#note[
  *Example:* Lira has Marksmanship 6. She fires at a distant target for a -2d
  range penalty, so she rolls 4 dice. If she also took aim or received a bonus
  that gave +2d, she would roll 6 dice instead.
]

== Your Character at a Glance

The Introduction section _Reading Your Character Sheet_ explains what every
attribute, characteristic, skill, derived statistic, and resource does. You do
not need all of that detail before the first session.

For quick play, make sure you can find these numbers:

- your main attack rating, usually Martial, Marksmanship, Arcane, Psychic, or
  Command;
- your most important skills, especially Awareness or Investigate, one social
  skill, and any specialist skill your concept needs;
- your HP, FP, EP, AP, Evasion, Armor, Ward, Movement Speed, Bulk, and Charge;
- the weapon, armor, catalyst, reliquary, or power entries you expect to use.

== Making a First Character

The full character rules begin in the Characters chapter. For a first
character, follow this shorter path.

=== 1. Choose a concept

Pick what your character is good at. Ashen is flexible, but a character who
spreads every resource evenly will feel weak. Choose one primary role and one
secondary role.

Good first concepts include:

- Frontline fighter: survives pressure and holds enemies in place.
- Skirmisher: moves quickly, avoids retaliation, and attacks exposed targets.
- Marksman: fights at range and cares about positioning and cover.
- Arcane caster: prepares spells and uses a catalyst to shape magical effects.
- Psychic character: learns powers permanently and risks dangerous backlash.
- Divine/command character: uses a reliquary, authority, and support powers.

=== 2. Choose a race

Your race gives traits, senses, vulnerabilities, and sometimes innate powers.
It does not change your attributes directly.

Read the race entry enough to know what changes at the table. For a first
character, pay special attention to whether the race changes survival,
movement, senses, equipment, Fog exposure, or spellcasting.

=== 3. Set attributes

All ten attributes begin at rank 1. Choose three attributes to raise to rank 2.
Pick attributes that support your main role.

#pftab(
  "Common Starting Priorities",
  columns: (2fr, 3fr, 4fr),
  align: (left, left, left),
  [Concept],
  [Raise first],
  [Why],
  [Frontline fighter],
  [Strength, Endurance, Agility],
  [Martial, Stamina, Speed, Dodge, and Grit],
  [Marksman],
  [Dexterity, Perception, Agility],
  [Marksmanship, Dodge, Speed, and useful physical skills],
  [Arcane caster],
  [Attunement, Intelligence, Will],
  [Arcane, Potential, Ritual, and Focus-heavy play],
  [Psychic character],
  [Sight, Will, Attunement],
  [Psychic, Potential, Eerie, and supernatural perception],
  [Divine/command character],
  [Presence, Will, Endurance],
  [Command, Grit, Stamina, favor checks, and support play],
)

=== 4. Spend skill points

You begin with 11 skill points. Learn a few trained skills and improve the
skills that match your concept.

Every character benefits from:

- one perception or investigation skill: usually Awareness or Investigate;
- one social skill: Influence, Deceive, or Impose;
- one physical skill: usually Athletics, Acrobatics, or Subterfuge;
- one specialist skill if your concept needs it: Ritual, Occultism, Alchemy,
  Electronics, Magitek, Piloting, Access, or Shop.

For a first character, learning 3-5 trained skills and raising one important
skill above rank 1 is usually enough.

=== 5. Spend XP on advances

You begin with 1000 XP. Spend it on advances that make your main role work, and
keep some XP unspent if you are unsure. Unspent XP carries forward.

For a first character, prefer clear Tier 1 choices:

- A melee fighter usually wants *Exploit (Tier 1)*, *Riposte*, *Press the
  Advantage*, *Vault*, *Fleet of Foot*, *Conditioning*, or a Martial/Stamina
  characteristic increase.
- A ranged fighter usually wants *Press the Advantage*, *Fleet of Foot*,
  *Vault*, a Marksmanship characteristic increase, or an equipment-focused plan.
- An arcane caster needs *Spell Memory I* and at least one spell to prepare.
  *Leyline Attunement* also supports catalyst-heavy play.
- A psychic character usually wants *Discipline (Tier 1)* or a psychic support
  advance such as *Telepathy*, *Quicken Magic*, or *Maximize Magic*.
- A divine caster needs an appropriate reliquary. Command advances and Command
  characteristic increases improve divine casting and favor-facing play.
- A summoner should look at *Warlock Acolyte* and the summoning powers.

Do not buy a power path without the equipment or implement needed to use it.
Arcane and psychic powers need catalysts. Divine prayers need reliquaries.
Weapon exploits need appropriate weapons.

=== 6. Buy equipment

You begin with #feathers 500. Buy enough to function in your first mission.

At minimum, choose:

- a weapon you can use effectively;
- armor that does not overload your Bulk capacity;
- a catalyst if you cast arcane or psychic powers;
- a reliquary if you cast divine prayers;
- basic gear and any tools your skills assume.

The Equipment chapter contains the full tables. For a first character, do not
try to optimize every line. Pick a Tier 1 kit that fits your role, note your
weapon damage and increment, record Armor and Ward, and check Bulk and Charge.

=== 7. Calculate the values you will use

Before play starts, make sure the following are written clearly on your sheet:

- HP: 10 plus HP from advances.
- FP: 10 plus FP from advances.
- EP: 10 plus 1 per 1000 cumulative XP; this is 11 at character creation.
- Movement Speed: 2 plus Speed rating.
- Evasion: half Dodge rating, rounded down, modified by armor.
- AP: usually 4 per turn.
- Bulk capacity: Stamina rating.
- Charge capacity: Potential rating.
- Armor and Ward: mostly from equipment.
- Main attack pool: Martial, Marksmanship, Arcane, Psychic, or Command,
  depending on what you do in combat.

Finally, decide why your Deathless keeps moving. Survival is not enough. Give
the character a goal, regret, mystery, debt, faction tie, rival, or keepsake
that can pull them into danger.

== Combat in One Page

Combat uses structured time. Each participant takes turns in initiative order.
On your turn, you usually have 4 AP to spend.

=== Starting combat

When combat begins, roll initiative by rolling a number of d6 equal to your
Initiative rating and adding the pips together. Higher initiative acts first.

If one side is unaware of the other, the aware combatants may act in a surprise
round. Surprised combatants are exposed until they take their first turn.

=== Spending AP

Common actions include:

#pftab(
  "Common Combat Actions",
  columns: (1fr, 2fr),
  align: (center, left),
  [AP],
  [Examples],
  [1],
  [Brace, Disengage, Draw/Stash, Drop Prone, Stand Up, Take Aim],
  [2],
  [Attack, Dash, Use Item, Combat Maneuver],
  [3],
  [Charge],
  [Varies],
  [Move, Use Skill, Use Power],
)

Your first Move action in a turn costs 1 AP, your second costs 2 AP, and so on.
A normal Move lets you move up to your Movement Speed. A Dash costs 2 AP and
moves up to double your Movement Speed in a straight line.

=== Making an attack

Most attacks follow this sequence:

+ Choose a target in range.
+ Roll Martial for melee or thrown attacks, Marksmanship for ranged attacks, or
  the characteristic named by the power.
+ If your successes equal or exceed the target's Evasion, you hit.
+ If the attack can score multiple hits, compare excess successes to the
  weapon's hit rate.
+ Roll damage for each hit.
+ Reduce damage by Armor, Ward, Penetration, and resistances as appropriate.
+ Subtract the remaining damage from HP.

A basic attack costs 2 AP. A charge costs 3 AP, moves you toward a target, and
grants +4d to the melee attack made at the end of the charge.

=== Reactions

Every character has one reaction per round unless a rule grants more. Common
reactions include Opportunity Attack, Dive, Counterspell, and Fire Overwatch.

Reactions happen in response to triggers. If a reaction is an interrupt, it can
resolve before the triggering action finishes. If it is a response, it resolves
without necessarily stopping the original action.

=== Damage and death

When you reach 0 HP, you die. A Deathless can spend 5 EP to revive on their
next turn if their body remains intact. If they do not or cannot revive on the
spot, their essence returns to their soul anchor and they reincorporate later.

Enemies can delay or prevent spot-revival by destroying or mutilating the
fallen body. Death is survivable, but it costs time, Essence, position, and
possibly the mission.

== The First Session

For a first session, keep the scope narrow.

- Give the party a clear objective.
- Put a visible clock on the situation.
- Include one social or investigative scene, one pressured movement or
  exploration scene, and one combat.
- Let players use the quickstart and their character sheets during play.
- Look up detailed rules only when the answer changes the situation.

The best first adventure is not a tour of every subsystem. It is a mission
where the players learn the basic rhythm: choose an approach, spend resources,
take risks, suffer consequences, and keep moving.

== Where to Read Next

After the quickstart, use the rest of the book as follows:

- Read *Introduction* for the full core mechanic, time structure, critical
  failures, intermissions, and common terms.
- Read *Characters* when building or advancing a character.
- Read *Skills* when a non-combat action needs clear difficulty or procedure.
- Read *Advances* when spending XP.
- Read *Magic and Powers* when choosing or resolving spells, prayers, psychic
  powers, exploits, and command powers.
- Read *Equipment* when buying, maintaining, modifying, or comparing gear.
- Read *Combat* when running tactical fights, maneuvers, conditions, summoning,
  or vehicles.
- Read *Exploration* when travel, Fog, disease, rest, economy, or soul anchors
  matter.
- Read *Setting* when you need the world, factions, gods, geography, and
  history.
- Read *GM Guide* when preparing adventures, rewards, creatures, campaigns, and
  rules adjustments.

You can begin play after this section. The rest of the rulebook is there when
the quick answer is no longer enough.
