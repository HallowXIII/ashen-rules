#import "declarations.typ": power-description

= Magic and Powers

Apart from their wits, their skill and their weapons, Ashen characters also have
at their disposal mystical abilities to defend against a hostile world. Whether
they are magical spells, esoteric martial disciplines or psychic manipulations,
collectively these abilities are referred to as Powers.

== Reading Powers

Powers come in many different types, and the effects they can manifest are
accordingly diverse. To keep the complexity manageable, Power entries are
formatted in a structured way.

=== Header

Every power starts with a header that lists the power's name, type and rank, as
well as any keywords the power has.

=== Flavor Text

The next line in the power describes what the power does from the perspective of
the game world.

=== Prerequisites

The first entry in the power block proper describes what conditions a character
must fulfill to be able to invoke the power. For example, a power might require
a specific type of weapon

=== Range

This entry describes what the power affects and at what range it does so. Ranges
are expressed in the form [target] [within [range][; [special]]], where _target_
is either a number of valid targets and their description or an area, _range_
expresses the distance from the user that the power can be manifested in (if
any) and _special_ expresses any special modifiers to the range.

Targets can be creatures, allies, enemies or objects. If all kinds of entities
can be targeted, the power will simply refer to _targets_.

Area targets are referred to as _bursts_, _cones_ or _lines_. See the section
_area targets_ for more details.

Special modifiers mostly apply when the target is an area, but the power does
not affect everything inside the area indiscriminately. For example, a healing
spell may have a range line of "Burst 2 within 12; all allies in burst",
indicating that only allies within its area target are affected.

=== Difficulty

Most powers require that the user pass a particular characteristic check to
cause the power to take effect. For example, arcane spells require an Arcane
check to cast. Such powers will have the relevant ability and the check
difficulty noted on this line. Some powers cannot fail: for such powers, the
difficulty line reads _unerring_. Yet other powers inherently require a check as
part of resolving their effect; for example, martial powers that cause the user
to make a weapon attack. Such powers may lack a difficulty line altogether.

=== Cost

Most powers also have a focus cost that a character must spend to use the power.
Focus costs can be expressed in one of two ways: a power that depends on a
weapon or catalyst to use will have its cost expressed in _increments_,
referring to the base cost of using a power with that weapon or catalyst. Powers
that do not require any implement to use, such as command powers, will instead
have a fixed cost in focus points. A character who wishes to use a power that
has a focus cost must have enough focus to use the power. The focus cost is paid
upon resolution of the effect; that is, a power that has a difficulty does not
consume focus until after the relevant characteristic check has been passed.

Some powers create permanent effects that last as long as the power is kept
alive. These powers will have a _sustain_ cost listed after their main cost,
denominated in the same unit as the main cost. For example, a power reading
_Cost: 2 Increments; sustain 1_ would cost 2 increments of focus to use and 1
increment of focus per round thereafter to sustain.

=== Action Points

This line indicates how many AP a power takes to use. If a power has a sustain
cost, it may also require AP to sustain. In this case, the AP cost to sustain
the power will be listed after the main cost.

=== Resistance

This line indicates whether the target(s) can make a check to resist the effects
of the power, listing the characteristic to check against as well as the check
difficulty. This line only appears on powers that damage or hinder their
targets.

=== Effect

These lines describe the actual effect of powers. For interpreting effects, see
_damage_ and _status conditions_.

==== On hit

Powers that require an attack roll to take effect or that can be resisted will
have their main effect listed in an "on hit" block.

==== Miss

Some powers have effects even if they missed or were resisted by their target.
Such effects will be listed under the "miss" block for the power, if any.

==== Catalyst

Some magical powers have effects that vary based on the weight category of the
catalyst used to cast them. Such powers will include a line indicating the
effect variation.

== Types of Powers

=== Arcane Powers

Arcane Powers are also known as _Spells_. In order to use an Arcane power, a
character must have a catalyst equipped. A spell's effects and focus cost depend
on the catalyst equipped. Spells that have non-damaging effects usually become
more or less powerful depending on the weight class of the catalyst equipped,
with heavier catalysts being able to cast more powerful spells.

Spellcasting is an intricately formulaic affair, and due to the required
accuracy in the motions and incantations it is necessary to refresh one's
knowledge periodically. However, unlike most other kinds of power, the very
formulaic nature of spells means that for a trained practitioner, learning (or
relearning) to use a spell can be done in comparatively very little time, even
starting from only a written description. For this reason, a character may learn
an arbitrary amount of spells, but they can only equip a certain number of them
at a time, depending on the Arcane advances they have unlocked.

=== Psychic Powers

Where arcane powers represent an almost scientific approach to the working of
magic, supernatural might distilled into repeatable and distributable formulas
accessible to any one with the required training, psychic powers are a much
older and more primal way of using magical power. It is said that psychic magic
is as close as mortals may get to understanding the power wielded by the gods
when they still walked the earth.

Psychic powers may be *augmented*, trading a greater difficulty to manifest the
power for greater effects. This comes at a risk, as psychic powers manipulate
reality itself; if a practitioner loses control over their magic, the
consequences can be dire indeed.

Psychic powers require a great deal of practice and study to master, and thus
require XP to be spent for each power learned.

=== Divine Powers

Divine powers are also known as _Prayers_. In order to use a prayer, a character
must have a Reliquary equipped. A prayer's effects and focus cost depend on the
reliquary equipped.

Unlike spells, characters normally do not permanently learn new prayers.
Instead, the divine power contained within a reliquary temporarily gives them
access to a list of prayers specific to that reliquary as long as the reliquary
remains equipped.

Prayers are organized by _domain_, which represent an area of the world that a
given deity has dominion over. Domains typically encompass one prayer per tier,
but this may be more or fewer depending on the domain.

Divine powers may have a _tap_ effect, which increases the strength of the
power, but consumes favor (see _reliquaries_ for an explanation of favor).

=== Martial Powers

Martial powers, also known as _Exploits_, are special techniques and disciplines
practiced by warriors and fighters. Unlike spells, exploits do not require a
catalyst; most require only a weapon to use. Exploits are learned permanently
and remain available for as long as the character meets their prerequisites.

=== Command Powers

Command powers represent the use of authority and force of will over other
creatures. They include abilities to direct summoned creatures, rally allies,
and break the morale of enemies.

=== Marksmanship Powers

Marksmanship powers, also known as _Marksmanship Exploits_, are ranged combat
techniques practiced by sharpshooters, gunslingers, and archers. Like martial
exploits, they do not require a catalyst; they require a ranged weapon to use.

== Spell Lists

=== Arcane

==== Tier 1

#power-description(
  "Flamethrower",
  "Arcane Spell",
  1,
  "2",
  "All creatures and objects within the cone take 100% Thermal damage. All flammable objects within the area catch fire. All targets struck take ongoing 3/T Thermal damage (save ends).",
  keywords: "Fire",
  range: "Cone 10",
  difficulty: "2",
  cost: "1 Increment",
  resistance: "Yes (Dodge vs Arcane Check)",
)

#power-description(
  "Lightning Bolt",
  "Arcane Spell",
  1,
  "2",
  "On hit: 100% electric damage vs MArm, and the target is stunned for one round.",
  keywords: "Lightning",
  flavor: "You raise your catalyst, and with a deafening peal of thunder, a bolt of lightning erupts from it to smite your enemies.",
  range: "Line 10",
  difficulty: "3",
  cost: "1 Increment",
  resistance: "Yes (Stamina 3)",
)

#power-description(
  "Frost Bolt",
  "Arcane Spell",
  1,
  "2",
  "On hit: 100% Cold damage. The target is Slowed (5) for 1 round.",
  keywords: "Cold",
  range: "one creature within 15",
  difficulty: "2",
  cost: "1 Increment",
  resistance: "Yes (Stamina 3)",
)

#power-description(
  "Corrosive Spray",
  "Arcane Spell",
  1,
  "2",
  "On hit: 100% Acid damage. The target's Armor value is reduced by 1 until the end of the encounter (stacks up to 3 times).",
  keywords: "Acid",
  range: "Cone 5",
  difficulty: "3",
  cost: "1 Increment",
  resistance: "Yes (Dodge 3)",
)

==== Tier 2

#power-description(
  "Fireball",
  "Arcane Spell",
  2,
  "2",
  "On hit: All creatures and objects within the burst take 200% Thermal damage. Flammable objects within the target area catch fire; all creatures take ongoing 5/T Thermal damage (save ends).",
  keywords: "Fire",
  flavor: "With a wave of your hand, a brilliant sphere of energy erupts from your catalyst, streaking towards your target before detonating with a dull roar.",
  range: "Burst 3 within 30",
  difficulty: "4",
  cost: "2 Increments",
  resistance: "Yes (Dodge 4)",
)

#power-description(
  "Shatterblast",
  "Arcane Spell",
  2,
  "2",
  "On hit: 200% Force damage. Objects and constructs take double damage. If the target is wearing armor, they must pass a resistance check or their armor's value is permanently reduced by 2 (until repaired).",
  keywords: "Force",
  range: "one creature or object within 20",
  difficulty: "4",
  cost: "2 Increments",
  resistance: "Yes (Stamina 5; armor damage only)",
)

#power-description(
  "Venomcloud",
  "Arcane Spell",
  2,
  "2; sustain 1",
  "On hit: All creatures in the area take 100% Acid damage and are Poisoned (save ends). The cloud persists as a zone of light obscurement as long as you sustain it; creatures that enter or start their turn in the zone take 100% Acid damage.",
  keywords: "Acid, Zone",
  range: "Burst 2 within 20",
  difficulty: "4",
  cost: "2 Increments; sustain 1",
  resistance: "Yes (Stamina 4)",
)

==== Tier 3

#power-description(
  "Fulmination",
  "Arcane Spell",
  3,
  "3",
  "On hit: 200% electric damage, and the target is stunned for one round.",
  keywords: "Lightning",
  flavor: "For a split second, hair stands on end and the air crackles with anticipation before a terrifying burst of electrical energy discharges from your catalyst, sending bolts of brilliant blue plasma tearing into every foe unfortunate enough to stand close to you.",
  range: "Close Burst 5; all enemies within burst",
  difficulty: "6",
  cost: "3 Increments",
  resistance: "Yes (Stamina 6)",
  miss: "Half damage and the target is dazed instead.",
)

#power-description(
  "Ice Storm",
  "Arcane Spell",
  3,
  "3",
  "All targets within the range take 200% cold damage and must make a D6 Stamina resist. On failure, they are stunned for one round; afterwards, they are dazed and slowed (5) (save ends).",
  keywords: "Ice, Wind",
  flavor: "Temperatures start to drop precipitously as a whirlwind picks up. The storm lasts only a few seconds, leaving everything covered in a sheet of glistening ice.",
  range: "Burst 5 within 20",
  difficulty: "8",
  cost: "3 Increments",
  resistance: "Yes (Stamina 6)",
)

==== Tier 4

#power-description(
  "Solar Flare",
  "Arcane Spell",
  4,
  "3",
  "All creatures and objects within the line take 300% Thermal damage. Additionally, all targets must make a D9 Stamina resist; on failure, they lose 3/T armor/hardness. Flammable objects and living targets reduced to 0 Health by this power turn to ash.",
  keywords: "Fire",
  flavor: "You stretch out your hand and cast a wave of blazing plasma, bathing all before you in the fury of a burning star.",
  range: "Line 15",
  difficulty: "8",
  cost: "3 Increments",
  resistance: "Yes",
)

#power-description(
  "Vitriolic Deluge",
  "Arcane Spell",
  4,
  "3",
  "A torrent of caustic liquid pours over the area. All creatures in the area take 200% Acid damage. Their armor and Hardness are permanently reduced by 3 (until repaired). On each subsequent turn for 3 rounds, affected creatures take ongoing 100% Acid damage (save ends the ongoing damage, but not the armor reduction).",
  keywords: "Acid",
  range: "Burst 3 within 20",
  difficulty: "8",
  cost: "3 Increments",
  resistance: "Yes (Dodge 8)",
  miss: "Half initial damage, ongoing 50% Acid for 1 round, no armor reduction.",
)

==== Tier 5

#power-description(
  "Chain Lightning",
  "Spell",
  5,
  "3 AP",
  "A bolt of electricity arcs from the primary target to up to three additional targets, each of which must be within 5 squares of the previous target. Make a separate attack roll against each target. Each target struck takes 200% electric damage. A target that fails their resistance check is stunned for 1 round.",
  keywords: "Arcane, Electric",
  difficulty: "9",
  cost: "3 Increments",
  range: "one creature within 20; chains to up to 3 additional creatures within 5 of the previous target",
  resistance: "Stamina 8",
  miss: "Half damage, no stun.",
)

#power-description(
  "Petrification",
  "Spell",
  5,
  "3 AP",
  "You attempt to turn the target to stone. On a failed resistance check, the target is Stilled and Slowed (5) (save ends both). If the target fails three saving throws against this effect before succeeding one, they are permanently petrified (turned to stone and unconscious) until freed by a Tier 4+ ritual.",
  keywords: "Arcane, Transmutation",
  difficulty: "10",
  cost: "3 Increments",
  range: "one creature within 15",
  resistance: "D8 Stamina",
  miss: "The target is Slowed (5) for 1 round.",
)

#power-description(
  "Wall of Force",
  "Spell",
  5,
  "3 AP; sustain 1 AP",
  "You create an impassable wall of translucent force up to 10 squares long and 5 squares high. The wall blocks all movement, projectiles, and line of effect for spells. The wall has HP equal to 300% of your catalyst's damage and Hardness 10. It lasts as long as you sustain it or until destroyed.",
  keywords: "Arcane, Force",
  difficulty: "9",
  cost: "3 Increments; sustain 1",
  range: "Wall 10 within 20",
)

#power-description(
  "Inferno",
  "Spell",
  5,
  "3 AP; sustain 1 AP",
  "You create a zone of roaring flame. Any creature that enters the zone or starts its turn there takes 200% Thermal damage and is Burning (save ends). The zone provides total concealment and lasts as long as you sustain it.",
  keywords: "Arcane, Thermal, Zone",
  difficulty: "10",
  cost: "4 Increments; sustain 1",
  range: "Burst 3 within 20",
  resistance: "Dodge 8 (halves damage, negates Burning)",
)

==== Tier 6

#power-description(
  "Disintegration",
  "Spell",
  6,
  "3 AP",
  "A thin green ray strikes the target. On a hit, the target takes 300% Force damage, ignoring all armor and Hardness. If this damage reduces the target to 0 HP, they and all equipment they carry are reduced to fine dust. Objects and structures targeted by this spell take double damage.",
  keywords: "Arcane, Force",
  difficulty: "12",
  cost: "4 Increments",
  range: "one creature or object within 20",
  resistance: "D10 Stamina",
  miss: "100% Force damage, ignoring armor.",
)

#power-description(
  "Meteor Swarm",
  "Spell",
  6,
  "3 AP",
  "Four meteors slam into the battlefield. Each meteor targets a Burst 3 area and deals 200% Thermal damage. You may target the same or different areas; a creature caught in multiple blasts takes damage from each separately. Each impact leaves the area as difficult terrain covered in burning rubble (creatures starting their turn in the rubble take 100% Thermal ongoing damage).",
  keywords: "Arcane, Thermal",
  difficulty: "11",
  cost: "4 Increments",
  range: "four Burst 3 areas within 30",
  resistance: "Dodge 10",
  miss: "Half damage from each meteor, no ongoing.",
)

#power-description(
  "Absolute Zero",
  "Spell",
  6,
  "3 AP",
  "You drain all heat from the area, flash-freezing everything in place. All creatures in the area take 300% Cold damage. Creatures that fail their resistance check are Stunned for 1 round, then Stilled and Slowed (5) (save ends both). The area becomes difficult terrain covered in ice for the rest of the encounter. Creatures that start their turn in the ice must pass a D6 Stamina check or fall Prone.",
  keywords: "Arcane, Cold",
  difficulty: "11",
  cost: "4 Increments",
  range: "Close Burst 5",
  resistance: "D10 Stamina",
  miss: "Half damage, Slowed (5) for 1 round.",
)

=== Divine

==== Life Domain

#power-description(
  "Mend Wounds",
  "Prayer",
  1,
  "2 AP",
  "The target recovers HP equal to 100% of your catalyst's damage.",
  domain: "Life",
  keywords: "Divine",
  difficulty: "3",
  cost: "1 Increment",
  range: "one creature within 15",
  tap: "The recovery increases to 200%.",
)

#power-description(
  "Vigor of the Living",
  "Prayer",
  2,
  "2 AP",
  "The target gains temporary HP equal to 100% of your catalyst's damage. These temporary HP last until the end of the encounter.",
  domain: "Life",
  keywords: "Divine",
  difficulty: "4",
  cost: "2 Increments",
  range: "Close; one creature",
  tap: "The target also gains +2d to Endurance checks until the end of the encounter.",
)

#power-description(
  "Cleansing Light",
  "Prayer",
  3,
  "2 AP",
  "Remove one status condition from the target (Poisoned, Diseased, Bleeding, Burning, or Blinded). The target then recovers HP equal to 100% of your catalyst's damage.",
  domain: "Life",
  keywords: "Divine",
  difficulty: "7",
  cost: "2 Increments",
  range: "Short; one creature",
  tap: "You may remove up to two status conditions instead of one.",
)

#power-description(
  "Breath of Resurrection",
  "Prayer",
  4,
  "3 AP",
  "All dead allies in the burst are restored to life with 1 HP and their current Focus total; then all allies in the burst heal 200% of your catalyst's damage.",
  domain: "Life",
  keywords: "Divine",
  difficulty: "8",
  cost: "4 Increments + 2 EP",
  range: "Burst 3 centered on you; all allies",
  tap: "Dead allies revive with 50% HP and 100% Focus instead.",
)

#power-description(
  "Regeneration",
  "Prayer",
  5,
  "2 AP; sustain 1 AP",
  "At the start of each of the target's turns, they recover HP equal to 100% of your catalyst's damage.",
  domain: "Life",
  keywords: "Divine",
  difficulty: "9",
  cost: "3 Increments; sustain 1",
  range: "Close; one creature",
  tap: "The regeneration increases to 200%.",
)

#power-description(
  "Circle of Vitality",
  "Prayer",
  6,
  "3 AP",
  "All allies in the area immediately recover HP equal to 300% of your catalyst's damage. Additionally, all allies gain immunity to one status condition of your choice (chosen when you cast this prayer) for 3 rounds.",
  domain: "Life",
  keywords: "Divine",
  difficulty: "11",
  cost: "4 Increments",
  range: "Burst 4 centered on you; all allies in burst",
  tap: "Allies also gain temporary HP equal to 100% of your catalyst's damage and the immunity duration increases to 5 rounds.",
)

==== War Domain

#power-description(
  "Battle Cry",
  "Prayer",
  1,
  "2 AP",
  "One ally within range gains +2d on their next attack roll and +2 to their Movement Speed until the end of their next turn.",
  domain: "War",
  keywords: "Divine",
  difficulty: "3",
  cost: "1 Increment",
  range: "one ally within 10",
  tap: "The bonus increases to +3d on the attack roll.",
)

#power-description(
  "Smite the Faithless",
  "Prayer",
  2,
  "2 AP",
  "Your next weapon attack before the end of your turn deals an additional 100% damage as radiant. If the target is Undead or Fiend, the additional damage increases to 200%.",
  domain: "War",
  keywords: "Divine, Radiant",
  difficulty: "4",
  cost: "1 Increment",
  tap: "The attack also ignores the target's Hardness.",
)

#power-description(
  "Inspiring Charge",
  "Prayer",
  3,
  "2 AP",
  "You and up to three allies within range each gain +1 AP and +3 Movement Speed until the end of your next turn. Each affected creature may immediately shift 1 square.",
  domain: "War",
  keywords: "Divine",
  difficulty: "7",
  cost: "2 Increments",
  range: "Burst 3 centered on you; up to 3 allies",
  tap: "Affected allies also gain +2d on attack rolls until the end of their next turn.",
)

#power-description(
  "Divine Wrath",
  "Prayer",
  4,
  "3 AP",
  "You call down a pillar of radiant fury on the battlefield. All enemies in the area take 300% radiant damage. Enemies that fail their resistance check are also Dazed (save ends).",
  domain: "War",
  keywords: "Divine, Radiant",
  difficulty: "8",
  cost: "3 Increments",
  range: "Burst 3 within 20",
  resistance: "D8 Stamina",
  miss: "Half damage, no Dazed.",
)

#power-description(
  "Avatar of War",
  "Prayer",
  5,
  "3 AP; sustain 1 AP",
  "You or one ally within range becomes an avatar of divine battle for the duration. The avatar gains +1 AP, +3d on all attack rolls, and their weapon attacks deal an additional 100% radiant damage. While the avatar is active, enemies within 3 squares of the avatar take a -2d penalty on attack rolls.",
  domain: "War",
  keywords: "Divine, Radiant",
  difficulty: "10",
  cost: "3 Increments; sustain 1",
  range: "one creature within 10",
  tap: "The avatar also gains Resistance 5 to all damage types for the duration.",
)

#power-description(
  "Divine Storm of Blades",
  "Prayer",
  6,
  "3 AP",
  "Spectral weapons rain from the sky across the battlefield. All enemies in the area take 300% radiant damage. Each enemy hit must pass a resistance check or be Stunned for 1 round, then Exposed (save ends). Allies in the area are unaffected and recover HP equal to 100% of your catalyst's damage.",
  domain: "War",
  keywords: "Divine, Radiant",
  difficulty: "11",
  cost: "4 Increments",
  range: "Burst 5 within 20",
  resistance: "D10 Stamina",
  miss: "Half damage, Exposed for 1 round.",
)

==== Nature Domain

#power-description(
  "Entangling Growth",
  "Prayer",
  1,
  "2 AP",
  "Grasping vines and roots erupt in the target area. The area becomes difficult terrain for the rest of the encounter. Each creature in the area when it appears must pass a resistance check or be Slowed (5) for 1 round.",
  domain: "Nature",
  keywords: "Divine",
  difficulty: "3",
  cost: "1 Increment",
  range: "Burst 2 within 15",
  resistance: "D3 Stamina",
  tap: "Creatures that fail are also Immobilized until the end of their next turn.",
)

#power-description(
  "Barkskin",
  "Prayer",
  2,
  "2 AP",
  "The target's skin hardens to the resilience of oak. The target gains +3 Armor and +2 Hardness until the end of the encounter. This bonus does not stack with worn armor.",
  domain: "Nature",
  keywords: "Divine",
  difficulty: "4",
  cost: "2 Increments",
  range: "one creature within 10",
  tap: "The target also gains Resistance 3 to Thermal and Cold damage.",
)

#power-description(
  "Call Lightning",
  "Prayer",
  3,
  "2 AP; sustain 1 AP",
  "You summon a storm cloud in the area. When you cast this prayer and at the start of each of your subsequent turns while you sustain it, a bolt of lightning strikes a creature of your choice within the area, dealing 200% electric damage.",
  domain: "Nature",
  keywords: "Divine, Electric",
  difficulty: "7",
  cost: "2 Increments; sustain 1",
  range: "Burst 5 within 20; one creature in area per turn",
  resistance: "D6 Stamina",
  miss: "Half damage.",
  tap: "You may target two creatures per bolt instead of one.",
)

#power-description(
  "Wrath of the Wild",
  "Prayer",
  4,
  "3 AP",
  "The terrain itself turns hostile. All enemies in the area take 200% damage as thorns, roots, and stone erupt beneath them. The area becomes heavily obscured difficult terrain for 3 rounds. Enemies that start their turn in the area take 100% ongoing damage.",
  domain: "Nature",
  keywords: "Divine",
  difficulty: "8",
  cost: "3 Increments",
  range: "Burst 4 within 20",
  resistance: "Dodge 8",
  miss: "Half damage, ongoing damage still applies.",
)

#power-description(
  "Verdant Resurrection",
  "Prayer",
  5,
  "3 AP",
  "You encase a dead ally in a cocoon of living wood that rapidly restores their body. The target revives with HP equal to 300% of your catalyst's damage and 100% Focus. Additionally, the cocoon removes all status conditions from the target upon revival. The cocoon takes 1 round to open — the target cannot act until the start of their next turn.",
  domain: "Nature",
  keywords: "Divine",
  difficulty: "10",
  cost: "3 Increments + 3 EP",
  range: "one dead ally within 10",
  tap: "The target revives with full HP and all status conditions removed from all allies within 3 squares.",
)

#power-description(
  "Primeval Cataclysm",
  "Prayer",
  6,
  "3 AP",
  "You unleash the full fury of the natural world. The terrain in the area is permanently transformed: trees erupt from stone, chasms split open, and rivers divert. All enemies in the area take 300% damage and must pass a resistance check or be Prone and Immobilized (save ends both). The transformed terrain is difficult terrain permanently and provides cover to your allies but not to your enemies.",
  domain: "Nature",
  keywords: "Divine",
  difficulty: "12",
  cost: "4 Increments",
  range: "Burst 5 within 20",
  resistance: "D10 Stamina",
  miss: "Half damage, Prone for 1 round.",
)

==== Protection Domain

#power-description(
  "Shield of Faith",
  "Prayer",
  1,
  "2 AP",
  "The target gains +2 Evasion and +2 to all resistance checks until the end of the encounter.",
  domain: "Protection",
  keywords: "Divine",
  difficulty: "3",
  cost: "1 Increment",
  range: "one creature within 10",
  tap: "The bonuses increase to +3.",
)

#power-description(
  "Warding Bond",
  "Prayer",
  2,
  "2 AP",
  "You create a divine link between yourself and the target. While the bond persists, the target gains Resistance 5 to all damage types, but you take damage equal to the amount resisted. The bond lasts until the end of the encounter or until you dismiss it (free action).",
  domain: "Protection",
  keywords: "Divine",
  difficulty: "4",
  cost: "2 Increments",
  range: "one ally within 10",
  tap: "You take only half of the redirected damage.",
)

#power-description(
  "Dispelling Wave",
  "Prayer",
  3,
  "2 AP",
  "A wave of divine energy washes over the area, stripping away magical effects. Each ongoing spell, power, or magical effect in the area is immediately ended if its tier is equal to or less than 3. For effects of tier 4 or higher, make a Command check against the effect's original difficulty; on success, the effect is dispelled.",
  domain: "Protection",
  keywords: "Divine",
  difficulty: "7",
  cost: "2 Increments",
  range: "Burst 3 within 15",
  tap: "Automatically dispels effects up to tier 4 instead of 3.",
)

#power-description(
  "Aegis of the Faithful",
  "Prayer",
  4,
  "3 AP; sustain 1 AP",
  "A dome of golden light surrounds you and your allies. All allies within the area gain Resistance 10 to all damage types. Projectiles and ranged spell attacks that cross the barrier take a -3d penalty to hit. The aegis lasts as long as you sustain it, but you cannot move while sustaining.",
  domain: "Protection",
  keywords: "Divine",
  difficulty: "8",
  cost: "3 Increments; sustain 1",
  range: "Close Burst 3 centered on you",
  tap: "You may move at half speed while sustaining the aegis.",
)

#power-description(
  "Inviolable Sanctuary",
  "Prayer",
  5,
  "3 AP",
  "You designate one creature within range. For 3 rounds, that creature cannot be targeted by attacks or harmful effects. The creature cannot attack or use offensive powers while the sanctuary is active; if they do, the sanctuary ends immediately. At the end of the duration, the creature recovers HP equal to 200% of your catalyst's damage.",
  domain: "Protection",
  keywords: "Divine",
  difficulty: "10",
  cost: "3 Increments",
  range: "one creature within 10",
  tap: "The sanctuary duration increases to 5 rounds and the healing increases to 300%.",
)

#power-description(
  "Divine Bulwark",
  "Prayer",
  6,
  "3 AP",
  "You invoke the full protective power of your deity. For 3 rounds, all allies within the area gain immunity to two status conditions of your choice, Resistance 10 to all damage types, and +3 Evasion. The first time each ally would be reduced to 0 HP during this effect, they are instead reduced to 1 HP. When the effect ends, all allies recover HP equal to 100% of your catalyst's damage.",
  domain: "Protection",
  keywords: "Divine",
  difficulty: "12",
  cost: "4 Increments",
  range: "Burst 5 centered on you; all allies in burst",
  tap: "The duration increases to 5 rounds and allies recover 200% instead.",
)

==== Poison Domain

#power-description(
  "Venomous Touch",
  "Prayer",
  1,
  "2 AP",
  "You channel a potent toxin through your hand or weapon. Your next melee attack or touch before the end of your turn deals an additional 100% of your catalyst's damage as Poison damage. If the target takes damage, it must pass a resistance check or become Poisoned (save ends).",
  domain: "Poison",
  keywords: "Divine, Poison",
  difficulty: "3",
  cost: "1 Increment",
  resistance: "D3 Stamina",
  tap: "The target also takes ongoing 3/T Poison damage (save ends) regardless of whether the Poisoned save succeeds.",
)

#power-description(
  "Miasma",
  "Prayer",
  2,
  "2 AP; sustain 1 AP",
  "You exhale a cloud of noxious fumes that fills the area. The zone provides light obscurement. Any creature that enters or starts its turn in the zone takes 100% Poison damage and must pass a resistance check or be Poisoned and Weakened (-2d on attack rolls) for 1 round. The zone lasts as long as you sustain it.",
  domain: "Poison",
  keywords: "Divine, Poison, Zone",
  difficulty: "4",
  cost: "2 Increments; sustain 1",
  range: "Burst 2 within 15",
  resistance: "D4 Stamina",
  tap: "The zone also imposes a -2 penalty to saving throws against Poisoned while creatures remain within it.",
)

#power-description(
  "Wither",
  "Prayer",
  3,
  "2 AP",
  "You curse the target with a wasting toxin that saps their vitality. The target takes 200% Poison damage. On a failed resistance check, the target is Diseased (save ends): while Diseased, all healing received by the target is halved, and the target takes ongoing 5/T Poison damage at the start of each of its turns.",
  domain: "Poison",
  keywords: "Divine, Poison, Disease",
  difficulty: "7",
  cost: "2 Increments",
  range: "one creature within 10",
  resistance: "D6 Stamina",
  miss: "Half damage, Poisoned for 1 round.",
  tap: "The Disease also reduces the target's Stamina by 2 for the duration.",
)

#power-description(
  "Plague Bearer",
  "Prayer",
  4,
  "3 AP",
  "You infect a target with a virulent plague that spreads to nearby enemies. The primary target takes 200% Poison damage and is automatically Diseased (save ends). At the end of each of the primary target's turns, all enemies within 2 squares of it must pass a resistance check or also become Diseased. The disease spreads in this manner up to 3 times. Diseased creatures have their healing halved and take ongoing 5/T Poison damage.",
  domain: "Poison",
  keywords: "Divine, Poison, Disease",
  difficulty: "8",
  cost: "3 Increments",
  range: "one creature within 10",
  resistance: "D7 Stamina (spread only; primary target auto-fails)",
  miss: "Half damage, Poisoned (save ends) instead of Diseased.",
  tap: "The spreading radius increases to 3 squares and the maximum number of spreads increases to 5.",
)

#power-description(
  "Necrotic Venom",
  "Prayer",
  5,
  "3 AP",
  "You inject a target with a toxin that attacks the boundary between life and death. The target takes 300% Poison damage, ignoring Ward. On a failed resistance check, the target cannot be healed by any means (save ends). While this effect persists, any damage the target takes also reduces its maximum HP by the same amount. Maximum HP lost this way is restored when the effect ends.",
  domain: "Poison",
  keywords: "Divine, Poison, Necrotic",
  difficulty: "10",
  cost: "3 Increments",
  range: "one creature within 10",
  resistance: "D9 Stamina",
  miss: "Half damage, healing halved for 1 round.",
  tap: "The target's maximum HP reduction persists for 24 hours after the anti-healing effect ends.",
)

#power-description(
  "World Serpent's Embrace",
  "Prayer",
  6,
  "3 AP",
  "You call upon the World Serpent to devour your enemies' vitality. All enemies in the area take 300% Poison damage and are Diseased and Poisoned (save ends both). Diseased creatures have their healing halved and take ongoing 100% Poison damage per turn. For each enemy affected, one ally of your choice within the area recovers HP equal to 100% of your catalyst's damage. Enemies reduced to 0 HP by this prayer cannot be resurrected for 1 week.",
  domain: "Poison",
  keywords: "Divine, Poison, Disease, Necrotic",
  difficulty: "12",
  cost: "4 Increments",
  range: "Burst 4 within 20; all enemies in burst",
  resistance: "D10 Stamina",
  miss: "Half damage, Poisoned for 1 round.",
  tap: "Allies in the area also gain immunity to Poison and Disease for 3 rounds.",
)


=== Psychic

==== Tier 1

#power-description(
  "Twist of Fate",
  "Psychic Power",
  1,
  "2",
  "On the target's next roll, you may modify the result by +1 or -1. Augment 2: You may use this power as a reaction.",
  keywords: "Fate, Reaction",
  range: "1 within 12",
  difficulty: "5",
  cost: "1 Increment",
)

#power-description(
  "Slow",
  "Psychic Power",
  1,
  "2",
  "The target must make a D4 Potential save. On failure: the target loses 1 AP while the spell lasts. They also gain a -2 penalty to their Movement Speed and a -10 penalty to their Initiative value. This effect cannot decrease Movement Speed below 2 or Initiative below 0. Augment 1: The duration changes to save ends. Augment 2: The resist difficulty is increased to D7.",
  keywords: "Time",
  range: "1 creature within 12",
  difficulty: "4",
  cost: "1 Increment",
)

#power-description(
  "Piercing Silence",
  "Psychic Power",
  1,
  "2",
  "The target area becomes a zone of magical silence. While the spell is active, no-one within the zone may cast a spell or manifest a power. It is possible to brute-force the silence; a casting check over a difficulty of 8 will break this spell.",
  range: "Burst 3 within 10",
  difficulty: "5",
  cost: "2 Increments",
)

==== Tier 2

#power-description(
  "Reversal of Fortune",
  "Psychic Power",
  2,
  "2",
  "On the target's next roll, all 6s count as 1 success. Augment 2: You may use this power as a reaction.",
  keywords: "Fate",
  range: "1 within 12",
  difficulty: "6",
  cost: "2 Increments",
  resistance: "Yes (Potential 5)",
)

#power-description(
  "Haste",
  "Psychic Power",
  2,
  "2",
  "The target gains 1 additional AP while the spell lasts. They also gain a +2 bonus to their Movement Speed and a +10 bonus to their Initiative value. Duration: 2 rounds. Augment 2: The duration increases to 2+1d3 rounds. Augment 2: The bonuses to speed and initiative increase to +3 and +15, respectively.",
  keywords: "Time",
  range: "1 creature within 10",
  difficulty: "5",
  cost: "2 Increments",
)

#power-description(
  "Banish",
  "Psychic Power",
  2,
  "2",
  "The target must make a D4 Stamina save. On failure, it is banished to the Void and dies instantly. Augment 2: The resist difficulty increases to 6.",
  keywords: "Void, Death",
  range: "1 within 12",
  difficulty: "6",
  cost: "2 Increments",
  resistance: "Yes (Stamina 4)",
)

==== Tier 3

#power-description(
  "Cursed Fate",
  "Psychic Power",
  3,
  "2",
  "For the duration of the effect, all 1s count as -2 successes, rather than -1. Duration: save ends. Augment 2: Saving against this effect requires 3 successes.",
  keywords: "Fate, Curse",
  range: "1 within 12",
  difficulty: "7",
  cost: "2 Increments",
  resistance: "Yes (Potential 6)",
)

#power-description(
  "Mass Slow",
  "Psychic Power",
  3,
  "2",
  "The target(s) must make a D6 Potential save. On failure: the target loses 1 AP while the spell lasts. They also gain a -2 penalty to their Movement Speed and a -10 penalty to their Initiative value. This effect cannot decrease Movement Speed below 2 or Initiative below 0. Duration: 2 rounds. Augment 1: The duration changes to save ends. Augment 2: The resist difficulty is increased to D9.",
  keywords: "Time",
  range: "Burst 3 within 16",
  difficulty: "7",
  cost: "2 Increments",
)

==== Tier 4

#power-description(
  "Mass Haste",
  "Psychic Power",
  4,
  "3",
  "The target(s) gain 1 additional AP while the spell lasts. They also gain a +2 bonus to their Movement Speed and a +10 bonus to their Initiative value. Duration: 2 rounds. Augment 2: The duration increases to 2+1d3 rounds. Augment 2: The bonuses to speed and initiative increase to +3 and +15, respectively.",
  keywords: "Time",
  range: "Burst 3 within 16",
  difficulty: "8",
  cost: "3 Increments",
)

#power-description(
  "Implosion",
  "Psychic Power",
  4,
  "3",
  "All targets within the burst must make a D8 Stamina resist; on failure, they are moved up to 5 m toward the center of the burst. Secondary: All targets within 3 m of the center take 200% Untyped damage. Any target in the center square of the burst takes 300% Untyped damage. Tertiary: Any target in the center of the burst must make a D6 Stamina resist or be banished to the Void (death effect). Augment 3: The range increases to Burst 12 within 36. Augment 2: The resist difficulty for the banishment effect increases to D8.",
  keywords: "Void",
  flavor: "A tiny portal to the void opens where the caster directs it to, sucking in the surrounding air as it expands briefly before it collapses in on itself, blinking out of existence.",
  range: "Burst 10 within 30",
  difficulty: "7",
  cost: "2 Increments",
  resistance: "Yes (Stamina 8)",
)

#power-description(
  "Gravity Well",
  "Psychic Power",
  4,
  "3",
  "You create an intense gravitational singularity. All creatures in the area are pulled 3 squares toward the center. Creatures in the center square take 300% Force damage; creatures elsewhere in the area take 200% Force damage. Creatures that fail their resistance check are Prone and Slowed (5) (save ends). Augment 2: The pull increases to 5 squares and the area increases to Burst 6.",
  keywords: "Space",
  range: "Burst 4 within 20",
  difficulty: "8",
  cost: "3 Increments",
  resistance: "Yes (Stamina 8)",
  miss: "Half damage, Slowed (5) for 1 round.",
)

==== Tier 5

#power-description(
  "Cursed Fate, Mass",
  "Psychic Power",
  5,
  "3",
  "For the duration of the effect, all 1s count as -2 successes, rather than -1. Duration: save ends. Augment 2: Saving against this effect requires 3 successes.",
  keywords: "Fate, Curse",
  range: "Burst 5 within 20; all enemies in burst",
  difficulty: "10",
  cost: "3 Increments",
  resistance: "Yes (Potential 8)",
)

#power-description(
  "Wounds from Nowhere",
  "Psychic Power",
  5,
  "2",
  "The target must make a D8 Potential save; on failure, it takes 300% damage, ignoring armor. On success: it takes 100% damage. Whether the check fails or succeeds, the Void Blade cannot be used until the end of your next turn after you attempt to manifest this power, when it returns to your hand.",
  keywords: "Void",
  prerequisites: "You must be wielding the Void Blade",
  range: "1 within 15",
  difficulty: "7",
  cost: "2 Increments",
  resistance: "No (Ward applies)",
)

==== Tier 6

#power-description(
  "Time Stop",
  "Power",
  6,
  "3 AP",
  "You freeze the flow of time for all creatures except yourself. You immediately take 2 additional turns. During these turns, you may move and take actions as normal, but you cannot deal damage to or directly target any other creature. Any area effect you create during the stopped time takes effect when time resumes. If you directly attack or target a creature, the spell ends immediately.",
  keywords: "Psychic, Temporal",
  difficulty: "12",
  cost: "4 Increments",
)

#power-description(
  "Mass Banishment",
  "Power",
  6,
  "3 AP",
  "You rip open the boundary between planes, pulling all enemies in the area toward oblivion. Each target that fails their resistance check is banished to a void between worlds for 1 round, then returns to an unoccupied space of your choice within the area. Banished creatures are removed from play during this time. Creatures that fail by 5 or more successes are permanently banished.",
  keywords: "Psychic, Void",
  difficulty: "11",
  cost: "4 Increments",
  range: "Burst 5 within 20",
  resistance: "D10 Potential",
  miss: "The target is Dazed for 1 round.",
)

#power-description(
  "Rewrite Fate",
  "Power",
  6,
  "3 AP",
  "You seize the threads of destiny and rewrite them. Choose one: (1) force all enemies in the area to reroll every die roll and take the worse result for 3 rounds (save ends); or (2) grant all allies in the area the ability to reroll every die roll and take the better result for 2 rounds. This effect cannot be dispelled by non-Psychic means.",
  keywords: "Psychic, Fate",
  difficulty: "12",
  cost: "4 Increments",
  range: "Burst 5 within 20",
  resistance: "D10 Potential (option 1 only)",
)

=== Martial Exploits

==== Tier 1

#power-description(
  "Lotus Art: Impenetrable",
  "Exploit",
  1,
  "1; sustain 1",
  "While in Impenetrable stance, you gain a +2 bonus to your Evasion.",
  keywords: "Lotus Art, Stance",
  flavor: "\"The true sage does not seek to counter strength with strength, but redirects it. The blade runs off him like water off a lotus leaf.\"",
  cost: "--",
)

#power-description(
  "Measured Strike",
  "Exploit",
  1,
  "2 AP",
  "You make a careful, controlled attack. The attack deals 100% damage and you gain +2 Evasion until the start of your next turn.",
  keywords: "Weapon",
  difficulty: "+1",
  range: "Weapon",
)

#power-description(
  "Guardian Stance",
  "Exploit",
  1,
  "1; sustain 1",
  "While in Guardian stance, enemies that move out of a square adjacent to you provoke an opportunity attack from you, even if they use Disengage. You may make one such attack per round.",
  keywords: "Stance",
  cost: "--",
)

==== Tier 2

#power-description(
  "Lotus Art: Pure Land Burial",
  "Exploit",
  2,
  "2",
  "On hit: the target takes 200% damage. Secondary: The target must make a D6 Potential resist. On failure: the target loses 5 EP, if applicable. A target killed by this power must make a D8 Potential resist each round it is dead; on failure, it cannot revive or be revived that turn. This power does not prevent discorporation.",
  keywords: "Lotus Art",
  flavor: "Every soul yearns to return to the soil of the Pure Land from which it was born. This blade will show it the way.",
  range: "Weapon",
  difficulty: "+2",
  cost: "1 Increment",
)

#power-description(
  "Keep Your Distance",
  "Exploit",
  2,
  "Reaction",
  "When a creature moves into your weapon reach, as a reaction: you may make an attack against it. On hit: it takes 100% damage and you push it up to one square away from you. This interrupts its movement.",
  keywords: "Reaction, Immediate Interrupt",
  prerequisites: "You are wielding a reach weapon",
  difficulty: "+2",
  cost: "1 Increment",
)

#power-description(
  "Piercing Thrust",
  "Exploit",
  2,
  "2",
  "You lunge forward, thrusting your weapon at a weak point in the enemy's armor. On hit: the target suffers 200% damage. The attack's Pen value is equal to the damage roll.",
  keywords: "Piercing",
  prerequisites: "You are wielding a weapon that deals piercing damage",
  range: "Weapon + 1",
  difficulty: "+3",
  cost: "2 Increments",
)

==== Tier 3

#power-description(
  "Lotus Art: Pearl Scissor",
  "Exploit",
  3,
  "2",
  "All targets on the line are hit once by each wielded weapon, halving armor. Secondary: The target must make a D8 Potential save; on failure: it is stilled (save ends).",
  keywords: "Lotus Art, Dual Wield",
  flavor: "The honed blade cuts the line of the soul.",
  prerequisites: "You must be wielding two bladed weapons",
  range: "Line, Movement Range",
  difficulty: "5",
  cost: "2 Increments",
  resistance: "Yes (Dodge 6)",
)

#power-description(
  "Crashing Wave",
  "Exploit",
  3,
  "3",
  "On hit: the target takes 200% damage and must make a D6 Stamina resist; on failure: the target is vaulted into the air, pushing it up to 3 squares. Secondary: You may make a secondary attack against the target at the same difficulty; on hit: the target takes 100% damage ignoring armor, is knocked prone, and must make a D6 Stamina resist; on failure: the target is stunned for one round.",
  keywords: "Spear",
  prerequisites: "You are wielding a polearm",
  range: "Weapon",
  difficulty: "+3",
  cost: "2 Increments",
  resistance: "Yes (Stamina 6)",
)

==== Tier 4

#power-description(
  "Lotus Art: Thousand Petal",
  "Exploit",
  4,
  "3",
  "On hit: the target takes 100% damage, halving armor. The target must also make a D7 Potential save; on failure: it loses 2 EP.",
  keywords: "Lotus Art, Dual Wield",
  flavor: "When the creator made the universe, it is said that he first made a lotus flower of a thousand petals, and when he scattered the petals, from each one there blossomed a world.",
  prerequisites: "You must be wielding two bladed weapons",
  range: "Close Burst 5",
  difficulty: "7",
  cost: "2 Increments",
  resistance: "Yes (Dive; Dodge 8)",
)

#power-description(
  "Sundering Blow",
  "Exploit",
  4,
  "3 AP",
  "You strike with such force that you damage the target's equipment. The target takes 300% damage. If the target fails their resistance check, one piece of their worn armor or wielded shield permanently loses 3 Armor value (until repaired). This reduction stacks with multiple uses.",
  keywords: "Weapon",
  difficulty: "+4",
  cost: "2 Increments",
  range: "Weapon",
  resistance: "D7 Stamina (equipment damage only; HP damage always applies on hit)",
)

#power-description(
  "Whirlwind Strike",
  "Exploit",
  4,
  "3 AP",
  "You spin in a devastating arc, striking all nearby enemies. Each enemy in range takes 200% damage. Enemies that fail their resistance check are also pushed 2 squares away from you.",
  keywords: "Weapon",
  difficulty: "7",
  cost: "2 Increments",
  range: "Close Burst 2; all enemies",
  resistance: "D7 Stamina (push only; damage always applies on hit)",
)

==== Tier 5

#power-description(
  "Lotus Art: Noble Eightfold Blade",
  "Exploit",
  5,
  "3",
  "When you perform this exploit, you may make four attacks against the same or different targets. The difficulty of the first attack is equal to the target's evasion, increasing by 2 on each subsequent attack, up to +6 on the fourth. Each attack deals 100% damage at half armor. Secondary: After performing all attacks, targets hit must make a D9 Potential check. On failure, they suffer the following effects depending on how many times they were hit (these effects stack): 1 hit: the target is stilled. 2 hits: the target loses 5 EP. 3 hits: the target is exposed. 4 hits: the target dies instantly and loses 5 more EP.",
  keywords: "Lotus Art, Dual Wield",
  flavor: "\"The master said: there are eight worlds in creation. To truly kill your enemy, you must cut him down in each of them.\"",
  prerequisites: "You must be wielding two bladed weapons",
  range: "Weapon",
  difficulty: "Special",
  cost: "3 Increments",
  resistance: "Yes (Potential 9)",
)

#power-description(
  "Deathblow",
  "Exploit",
  5,
  "3 AP",
  "You deliver a single, devastating strike aimed to kill. The target takes 300% damage. If this reduces the target to half HP or below, they must pass a resistance check or be reduced to 0 HP. This exploit can only be used once per encounter.",
  keywords: "Weapon",
  difficulty: "+4",
  cost: "3 Increments",
  range: "Weapon",
  resistance: "D9 Stamina (instant-kill effect only)",
)

==== Tier 6

#power-description(
  "Forest of Corpses",
  "Unique Power",
  6,
  "3",
  "Every creature targeted by this power must take a Dive reaction to avoid the stake (Dodge DC equal to this power's attack roll). On failure, it takes 300% piercing damage and is immobilized; in addition, it must make a D8 Stamina check or be stunned for one round. On each of the target's turns, it must make a D6 Athletics check to vault off the stake or take 100% damage and remain immobilized. Special: If you fail the attack roll to invoke this power, Kazykly becomes stuck in the ground. Pulling it back out is a 1 AP action and requires a successful D7 Martial check.",
  keywords: "Weapon",
  flavor: "You thrust Kazykly deep into the earth. For a second, everything is still before sharpened stakes of solid shadow erupt beneath your enemies.",
  prerequisites: "You must be wielding Kazykly",
  range: "Close Burst 10",
  difficulty: "7",
  cost: "3 Increments",
  resistance: "Yes (Stamina 8)",
)

=== Command Powers

==== Tier 1

#power-description(
  "Rally",
  "Command",
  1,
  "2 AP",
  "One ally within range immediately gains +2d on their next attack roll or saving throw (their choice). If the ally is suffering from a fear effect, they may immediately make a saving throw against it with +2d.",
  keywords: "Command, Morale",
  difficulty: "3",
  cost: "1 Increment",
  range: "one ally within 10",
)

#power-description(
  "Compel Obedience",
  "Command",
  1,
  "2 AP",
  "You issue a forceful command to a summoned or dominated creature. The target must immediately use its next turn to perform one specific action of your choice (move, attack a target, or use a specific power). If the creature is not under your control, it may resist.",
  keywords: "Command",
  difficulty: "3",
  cost: "1 Increment",
  range: "one creature within 10",
  resistance: "D3 Potential (only if not already under your control)",
)

==== Tier 2

#power-description(
  "Coordinated Strike",
  "Command",
  2,
  "2 AP",
  "You direct two allies to strike in unison. Each ally within range may immediately make a basic attack as a free action against a target of your choice. If both allies hit the same target, that target is Dazed until the end of its next turn.",
  keywords: "Command, Tactical",
  difficulty: "5",
  cost: "2 Increments",
  range: "two allies within 10",
)

#power-description(
  "Terrifying Shout",
  "Command",
  2,
  "2 AP",
  "You unleash a shout that breaks the morale of your enemies. All enemies in the area that fail their resistance check are Frightened of you (save ends). Frightened creatures take a -2d penalty on attack rolls and cannot willingly move closer to you.",
  keywords: "Command, Morale, Fear",
  difficulty: "5",
  cost: "2 Increments",
  range: "Close Burst 3",
  resistance: "D5 Potential",
)

==== Tier 3

#power-description(
  "Hold the Line",
  "Command",
  3,
  "2 AP",
  "You command your allies to form a defensive formation. Up to four allies within range gain +3 Evasion and +2d on resistance checks until the end of your next turn. While this effect is active, enemies that move through or out of a square adjacent to an affected ally provoke an opportunity attack.",
  keywords: "Command, Tactical",
  difficulty: "7",
  cost: "2 Increments",
  range: "Burst 3 centered on you; up to 4 allies",
)

#power-description(
  "Break Will",
  "Command",
  3,
  "2 AP",
  "You shatter an enemy's resolve with sheer authority. The target that fails their resistance check is Dominated (save ends). While Dominated, the target acts on your turn under your control, but can only take basic actions (move, basic attack). At the end of each of its turns, the target may attempt a saving throw.",
  keywords: "Command, Domination",
  difficulty: "7",
  cost: "3 Increments",
  range: "one creature within 10",
  resistance: "D7 Potential",
  miss: "The target is Dazed for 1 round.",
)

==== Tier 4

#power-description(
  "Overwhelming Presence",
  "Command",
  4,
  "3 AP",
  "Your authority is absolute. All enemies in the area must pass a resistance check or be Stunned for 1 round, then Frightened of you (save ends). Allies in the area are immune to fear effects and gain +2d on all checks for 2 rounds.",
  keywords: "Command, Morale, Fear",
  difficulty: "8",
  cost: "3 Increments",
  range: "Close Burst 5",
  resistance: "D8 Potential",
  miss: "Frightened for 1 round (no Stun).",
)

==== Tier 5

#power-description(
  "Grand Tactician",
  "Command",
  5,
  "3 AP",
  "You orchestrate a devastating coordinated assault. Up to five allies within range each immediately take a standard action of their choice as a free action. Each ally that attacks gains +3d on their attack roll. An ally may not be targeted by this power more than once per encounter.",
  keywords: "Command, Tactical",
  difficulty: "10",
  cost: "3 Increments",
  range: "Burst 5 centered on you; up to 5 allies",
)

==== Tier 6

#power-description(
  "Absolute Authority",
  "Command",
  6,
  "3 AP",
  "Your word becomes law on the battlefield. Choose one: (1) All enemies in the area are Dominated for 1 round (no save). During this round, dominated enemies cannot use powers above Tier 2 and must use their movement to move to a location you designate. (2) All allies in the area gain +1 AP, +3d on all attack rolls, and immunity to all status conditions for 2 rounds.",
  keywords: "Command, Domination, Morale",
  difficulty: "12",
  cost: "4 Increments",
  range: "Burst 5 centered on you",
  resistance: "D10 Potential (option 1 only)",
  miss: "Dazed for 1 round (option 1 only).",
)

=== Marksmanship Exploits

==== Tier 1

#power-description(
  "Steady Shot",
  "Exploit",
  1,
  "2 AP",
  "You take careful aim and fire. Make a ranged attack with +2d. If you have not moved this turn, the attack deals an additional 50% damage.",
  keywords: "Weapon, Ranged",
  difficulty: "+2",
  range: "Weapon range",
)

==== Tier 2

#power-description(
  "Pinning Shot",
  "Exploit",
  2,
  "2 AP",
  "Your shot pins the target in place. On a hit, the target takes 100% damage and is Immobilized (save ends). If the target is adjacent to a wall or solid surface, they are also Restrained (save ends) instead.",
  keywords: "Weapon, Ranged",
  difficulty: "+3",
  cost: "1 Increment",
  range: "Weapon range; one creature",
  resistance: "D5 Stamina (negates Immobilized/Restrained, damage still applies)",
)

#power-description(
  "Trick Shot",
  "Exploit",
  2,
  "2 AP",
  "You ricochet a shot off a surface to strike a target behind cover. This attack ignores cover and concealment. The target takes 200% damage.",
  keywords: "Weapon, Ranged",
  difficulty: "+3",
  cost: "1 Increment",
  range: "Weapon range; one creature",
)

==== Tier 3

#power-description(
  "Suppressing Fire",
  "Exploit",
  3,
  "3 AP; sustain 1 AP",
  "You lay down a hail of fire across an area. The zone becomes hazardous: any enemy that enters the zone or starts its turn there must pass a resistance check or take 100% damage and be Prone. Enemies in the zone take a -3d penalty on attack rolls. The zone lasts as long as you sustain it; you cannot move while sustaining.",
  keywords: "Weapon, Ranged, Zone",
  difficulty: "6",
  cost: "2 Increments; sustain 1",
  range: "Burst 3 within weapon range",
  resistance: "Dodge 6",
)

#power-description(
  "Called Shot: Vitals",
  "Exploit",
  3,
  "2 AP",
  "You aim for a critical point. On a hit, the target takes 200% damage and is Bleeding (save ends). If this attack scores 3 or more hits above the target's Evasion, the target is also Stunned for 1 round.",
  keywords: "Weapon, Ranged",
  difficulty: "+3",
  cost: "2 Increments",
  range: "Weapon range; one creature",
)

==== Tier 4

#power-description(
  "Killzone",
  "Exploit",
  4,
  "3 AP; sustain 1 AP",
  "You designate a Burst 3 area within weapon range as a killzone. Enemies that enter the zone or start their turn there provoke a free ranged attack from you that deals 200% damage. You may make one such attack per enemy per turn. You cannot move while sustaining the killzone.",
  keywords: "Weapon, Ranged, Zone",
  difficulty: "7",
  cost: "3 Increments; sustain 1",
  range: "Burst 3 within weapon range",
)

#power-description(
  "Headshot",
  "Exploit",
  4,
  "3 AP",
  "You take a single, devastatingly precise shot. The target takes 300% damage. If the target fails their resistance check, they are also Dazed (save ends) as the impact rattles them.",
  keywords: "Weapon, Ranged",
  difficulty: "+4",
  cost: "2 Increments",
  range: "Weapon range; one creature",
  resistance: "D8 Stamina (Dazed only; damage always applies on hit)",
  prerequisites: "Must not have moved this turn",
)

==== Tier 5

#power-description(
  "Death from Afar",
  "Exploit",
  5,
  "3 AP",
  "You fire a single shot with lethal precision. The attack's range is doubled. The target takes 300% damage, ignoring Hardness. If this reduces the target to half HP or below, they must pass a resistance check or be reduced to 0 HP instead.",
  keywords: "Weapon, Ranged",
  difficulty: "+4",
  cost: "3 Increments",
  range: "Double weapon range; one creature",
  resistance: "D9 Stamina (instant-kill effect only)",
  prerequisites: "Must not have moved this turn",
)

==== Tier 6

#power-description(
  "Bullet Hell",
  "Exploit",
  6,
  "3 AP",
  "You unleash a storm of projectiles across the battlefield. Make a ranged attack against every enemy in the area. Each target hit takes 200% damage. Targets that fail their resistance check are also Prone and Dazed (save ends both). The area becomes difficult terrain littered with spent ammunition.",
  keywords: "Weapon, Ranged",
  difficulty: "8",
  cost: "4 Increments",
  range: "Cone 15 or Line 20",
  resistance: "D9 Stamina",
  miss: "Half damage, Prone for 1 round.",
  prerequisites: "You are wielding an automatic weapon."
)