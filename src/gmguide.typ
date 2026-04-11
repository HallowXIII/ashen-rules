= GM Guide

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

#table(
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
