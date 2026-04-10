#import "declarations.typ": feathers, item-description, pftab, power-description
= Equipment

== Equipment States

Items a character possesses can be in one of three states:

- *Carried:* The item is stowed in a pack, bag, or otherwise on the character's person, but is not ready for immediate use. Retrieving a carried item to equip or wield it takes significant effort (typically a full action). Carried items contribute to a character's encumbrance but do not count against their Bulk or Charge capacity (see _Bulk and Charge_ below).

- *Equipped:* The item is worn on the body or stored in a readily accessible location (a belt, holster, or sheath). Armor must be equipped to provide its benefits. Equipped items can be drawn to be wielded as a minor action (see _Draw/Stash_ in the Combat chapter). Equipped items count against a character's Bulk and Charge capacity.

- *Wielded:* The item is actively held in hand and ready to use. A character can wield items in as many hands as they have free (typically two). Weapons must be wielded to attack with them; catalysts and reliquaries must be wielded to channel powers through them. Some items — notably light catalysts such as pendants, circlets, and tiaras — can be wielded without occupying a hand, as they are worn on the body in a way that allows the user to channel through them. Wielded items count against a character's Bulk and Charge capacity.

== Types of Equipment

=== Weapons

Weapons are divided into *melee weapons* and *ranged weapons*. Each weapon has a *weight class* (Light, Medium, or Heavy) that affects its damage, bulk, and handling characteristics.

*Light* weapons are small and quick. They have low bulk and can often be drawn as a free action. Light melee weapons include daggers, short swords, and gauntlets. Light ranged weapons include pistols and holdout guns.

*Medium* weapons represent the standard arms of a professional soldier. They balance damage and handling well. Medium melee weapons include longswords, maces, and spears. Medium ranged weapons include rifles and carbines.

*Heavy* weapons are large, powerful, and unwieldy. They deal the most damage but have the highest bulk and often require two hands. Heavy melee weapons include greatswords, mauls, and halberds. Heavy ranged weapons include machine guns, cannons, and sniper rifles. Heavy ranged weapons must be *braced* before they can be fired accurately; firing without bracing is called *hip-firing* and incurs a -2d penalty to the attack roll.

==== Weapon Stats

- *Damage:* The base damage dealt on a successful hit, expressed as a flat value plus a die roll (e.g., 9+D8).
- *Penetration (Pen):* How much of the target's Armor value this weapon ignores.
- *Bulk:* The physical weight and size of the weapon.
- *Hands:* The number of hands required to wield the weapon (1 or 2).
- *Range:* For ranged weapons, the effective range in squares. For melee weapons, this is typically "Melee" (adjacent squares) unless the weapon has reach.
- *Fire Mode (FM):* For ranged weapons only. Determines the weapon's hit rate (see _Ranged Attacks_ in the Combat chapter). S = single shot (one hit maximum), SA = semi-automatic (hit rate 3, or 4 for heavy weapons), FA = full automatic (hit rate 2 for light/medium, 3 for heavy). Melee weapons use "—".
- *Special:* Any keywords or unique properties the weapon has.

==== Weapon Keywords

- *Assault:* Hip-fire penalty is halved (-1d instead of -2d).
- *Burning:* Target catches fire on hit (ongoing Thermal damage, save ends).
- *Explosive:* The weapon has a blast radius affecting adjacent squares.
- *Overload:* The weapon risks overheating or malfunction on certain rolls.
- *Parry +Nd:* Grants +N bonus dice on parry checks while wielded.
- *Poisonous (N):* Target must pass a D(N) Stamina check or become Poisoned.
- *Powered:* Requires a power source or charge to function.
- *Rapid Fire:* When the target is within half the weapon's range, attack rolls gain +2 automatic successes.
- *Reliable:* Reduced chance of malfunction.
- *Sidearm:* Can be drawn or stowed as a free action once per turn, even while wielding a two-handed weapon.

=== Armor

Armor protects the wearer from physical and magical damage. Like weapons, armor comes in weight classes: Light, Medium, and Heavy.

*Light armor* offers modest physical protection but does not hinder the wearer's mobility. Light armor typically grants a positive Evasion bonus. Robes, combat suits, and cloaks fall into this category.

*Medium armor* balances protection and mobility. Medium armor typically has no Evasion penalty. Combat plates, reinforced suits, and construct frames fall into this category.

*Heavy armor* offers the greatest protection but significantly reduces mobility. Heavy armor imposes an Evasion penalty. Power armor, battle plates, and siege frames fall into this category.

==== Armor Stats

- *Armor:* Physical damage reduction. Incoming physical damage is reduced by this value.
- *Ward:* Magical damage reduction. Incoming magical damage is reduced by this value.
- *Evasion:* Bonus or penalty to the wearer's Evasion score.
- *Bulk:* Physical weight and encumbrance.
- *Charge:* Magical encumbrance (see _Bulk and Charge_ below).
- *Profile:* The armor's physical form factor, which determines how it layers with other armor (see _Armor Layering_ below).

==== Armor Layering

A character may wear up to one piece of armor in each of three *profile* slots. From innermost to outermost, these are:

- *Close-fit (C):* Form-fitting garments worn directly against the body. Combat suits, bodysuits, and similar items.
- *Plating (P):* Rigid or semi-rigid protective layers worn over close-fit garments. Flak vests, armor plates, and combat frames.
- *Overgarment (O):* Large, flowing, or draped garments worn as the outermost layer. Robes and mantles.

A character may wear one piece of armor in each slot. Full-body armor such as power armor and construct frames occupies both the Close-fit and Plating slots (marked *C+P* in the armor table), meaning nothing can be worn underneath them.

When multiple pieces of armor are worn, their *Armor*, *Ward*, *Evasion*, *Bulk*, and *Charge* values are all added together. Special properties such as camouflage or stealth bonuses only apply if the piece with that property is the character's outermost worn layer.

=== Catalysts

Catalysts are implements used to channel magical energy. They are required to cast arcane spells and psychic powers. Each catalyst has a *damage* value (used as the base for spell damage calculations — when a spell deals "100% catalyst damage," it deals damage equal to the catalyst's damage value) and a *focus increment* value that determines the Focus cost of spells channeled through it (see _Focus Increments_ above).

Catalysts come in two types: *Arcane catalysts* (rods, staves, orbs) are used for arcane spells. *Psychic catalysts* (crystals, masks, circlets) are used for psychic powers. A character must wield a catalyst of the appropriate type to cast spells or powers of that school.

=== Bulk and Charge

Every piece of equipment has a *Bulk* value representing its physical weight and size, and a *Charge* value representing its magical resonance and encumbrance.

A character's *Bulk capacity* is equal to their *Stamina rating*. A character's *Charge capacity* is equal to their *Potential rating*. The total Bulk and Charge of all _equipped and wielded_ items must not exceed these capacities. Carried items (stowed in a pack) do not count against Bulk or Charge capacity, but are subject to the character's carrying capacity instead (see below).

Non-magical items (mundane weapons, basic armor) have Charge 0. Lightly magical items have Charge roughly half their Bulk. Heavily magical items (catalysts, reliquaries, enchanted robes) may have high Charge and low Bulk. This creates a meaningful equipment tradeoff: physical warriors invest in Bulk capacity, casters invest in Charge capacity, and hybrid characters must balance both.

==== Carrying Capacity

A character's *carrying capacity* represents the total Bulk of items they can carry on their person, including both equipped and carried items. A character's base carrying capacity is equal to *twice their Bulk capacity* (i.e., twice their Stamina rating). Some races have a different carrying capacity multiplier:

- *Ironhands:* ×3 (their construct frames are built for heavy loads)
- *Warboars:* ×3 (bred for endurance on long campaigns)
- All other races: ×2

A character whose total carried and equipped Bulk exceeds their carrying capacity is *encumbered*: their Movement Speed is halved and they suffer a -2d penalty on all physical checks.

=== Focus Increments

Weapons, catalysts, and reliquaries each have a *focus increment* value. This value determines how much Focus a character spends when using powers through that implement. When a power's cost is expressed in _increments_ (e.g., "Cost: 2 Increments"), the actual Focus Point cost is equal to the number of increments multiplied by the wielded implement's focus increment value. For example, a character using a power that costs 2 increments through a weapon with a focus increment of 5 would spend 10 FP.

Higher-tier and heavier implements tend to have larger focus increments, reflecting their greater power output. This creates a tradeoff: more powerful implements deal more damage but are more expensive to fuel with Focus. A character choosing between two weapons of the same tier might opt for one with a lower increment if they rely heavily on exploits, or a higher increment if they prefer raw damage and use powers sparingly.

=== Reliquaries

Reliquaries are remnants of the dead gods, retaining some of their power even
long after they passed. Reliquaries can be used by characters with the
appropriate training to cast divine prayers.

Reliquaries are catalysts with two unique stats: *will* and *favor*. These
represent the strength of the divine will contained within the reliquary. All
reliquaries begin in a state unfriendly to their users; in this state, casting
any prayer with the reliquary adds the reliquary's will to the base difficulty
of the prayer. To use a new reliquary without these penalties, a character must
make a favor check; the difficulty of that favor check is equal to the tier of
the reliquary plus its will.

If the favor check is passed, the character loses the casting penalties to
prayers with that reliquary and gains the amount of *favor* indicated on the
reliquary's stat block (usually 1). A character may expend favor in two ways: to
*tap* a prayer, increasing its power (see the section on prayers for an
explanation) as well as to pass a failed command check made to cast a prayer. If
a character's favor with a reliquary drops to 0, casting prayers with that
reliquary is again subject to the will penalty of the reliquary.

If a character fails a favor check, they have displeased the deity and suffer
the consequences.

Reliquaries also control the prayers that a wielder can make use of. Each
reliquary typically gives access to prayers from between one to three domains.
The maximum tier of prayer that a wielder receives from the reliquary is equal
to the tier of the reliquary. For example, a tier three reliquary that grants
access to the Life and Fire domains would grant access to prayers in those
domains up to tier three, as long as it remained wielded.

Some reliquaries may grant access to unique prayers not part of any domain, or
specific prayers outside of the domains they ordinarily grant access to. In
these cases, those prayers are specially noted in the reliquary's stat block.

#set page(
  columns: 1
)
== Equipment Tables

#pftab(
  "Melee Weapons",
  columns: 9,
  //align: (left, center, center, center, center, center, center, center, center, left),
  [Name], [Tier], [Price], [Damage], [Pen], [Bulk], [Hands], [Inc], [Special],
  [Old War Dagger], [0], [_#feathers 0_], [2+D6], [0], [½ (L)], [1], [2], [Sidearm],
  [Old War Longsword], [0], [_#feathers 0_], [4+D4], [0], [1 (M)], [1], [3], [],
  [Old War Greatsword], [0], [_#feathers 0_], [4+D6], [0], [2 (H)], [2], [4], [],
  [Old War Greathammer], [0], [_#feathers 0_], [6+D3], [0], [2 (H)], [2], [4], [],
  [Old War Spear], [0], [_#feathers 0_], [5+D3], [0], [2 (M)], [2], [3], [Reach 2],
  [Heat Knife], [1], [_#feathers 150_], [6+D3], [0], [½ (L)], [1], [3], [Sidearm, Burning],
  [Lantern Impulse Gauntlet], [1], [_#feathers 200_], [4+D6], [0], [¼ (L)], [1], [3], [],
  [Lantern Force Sword], [1], [_#feathers 300_], [5+D8], [0], [½ (L)], [1], [3], [],
  [Dragon Guard Longsword], [1], [_#feathers 350_], [6+D6], [0], [1 (M)], [1], [4], [],
  [Construct Chainsword], [1], [_#feathers 500_], [6+D12], [0], [2 (H)], [1], [5], [Powered],
  [Silvered Force Sword], [2], [_#feathers 600_], [6+D6], [4], [½ (L)], [1], [4], [Silvered],
  [Lacerator Shortsword], [2], [_#feathers 700_], [9+D8], [0], [1 (M)], [1], [5], [],
  [Argent Disruptor], [2], [_#feathers 800_], [9+D8], [0], [1½ (M)], [1], [5], [Disrupting],
  [Argent Keyblade], [2], [_#feathers 1000_], [9+2D8], [0], [½ (L)], [1], [5], [],
  [Construct Power Sword], [2], [_#feathers 1200_], [15+D4], [0], [2 (H)], [1], [8], [Powered],
  [Flaming Touch], [2], [_#feathers 900_], [12+D10], [0], [0], [1], [5], [Burning],
  [Gathering Cloud Blade], [3], [_#feathers 2500_], [11+2D8], [0], [2 (M)], [1], [9], [],
  [Parry Dagger, Power Field], [4], [_#feathers 5000_], [7+D6 R], [15], [1 (L)], [1], [11], [Parry +4d, Powered],
  [Venom Fang, Unstable Edge], [4], [_#feathers 5000_], [8+2D8 R], [10], [1 (L)], [1], [11], [Poisonous (8)],
  [Hoarfrost], [5], [_Unique_], [7+D12], [0], [2 (M)], [1], [14], [Split damage (physical + magical)],
  [Void Blade], [5], [_Unique_], [15+D10], [0], [1 (L)], [1], [15], [Required for Wounds from Nowhere],
  [Kazykly], [6], [_Unique_], [29+2D12], [0], [3 (H)], [1], [18], [Required for Forest of Corpses],
  [Moonlight Shortsword], [6], [_Unique_], [18+2D8], [0], [2 (M)], [1], [16], [],
)

#pftab(
  "Ranged Weapons",
  columns: 11,
  breakable: true,
  //align: (left, center, center, center, center, center, center, center, center, left),
  [*Name*], [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Hands*], [*Range*], [*FM*], [*Inc*], [*Special*],
  [Old War Pistol], [0], [_#feathers 0_], [1+D4], [0], [½ (L)], [1], [Short], [S], [2], [Sidearm],
  [Old War Rifle], [0], [_#feathers 0_], [3+D3], [0], [1 (M)], [2], [Medium], [S], [3], [],
  [Silent Killer], [1], [_#feathers 200_], [8+D3], [0], [1 (M)], [1], [Medium], [S], [4], [],
  [Lantern Autopulse Rifle], [1], [_#feathers 350_], [5+D8], [0], [1 (M)], [2], [Long], [SA 3], [4], [Rapid Fire],
  [Construct Chaingun], [1], [_#feathers 500_], [8+D8], [0], [3 (H)], [1], [Medium], [FA 3], [5], [Heavy],
  [Nightpiercer], [1], [_#feathers 450_], [11+D3], [0], [2 (H)], [2], [Very Long], [S], [5], [Heavy],
  [Alchymic Double Barrel], [2], [_#feathers 800_], [15+D6], [0], [2 (M)], [1], [Short], [S], [5], [],
  [Perfector Mk IV Suppressed Rifle], [2], [_#feathers 1000_], [15+D6], [0], [1 (M)], [2], [Very Long], [S], [5], [Reliable],
  [Sudassi Pattern Light Railgun], [2], [_#feathers 1200_], [9+2D8], [0], [3 (H)], [2], [Long], [S], [8], [Heavy],
  [Dragon Gun], [2], [_#feathers 1500_], [20+D6], [0], [2½ (H)], [2], [Very Long], [S], [5], [Heavy, Single-Shot],
  [Plasma Pistol], [2], [_#feathers 800_], [5+D8 T], [8], [1 (L)], [1], [Short], [S], [5], [Burning],
  [Plasma Rifle], [2], [_#feathers 1200_], [5+D8 T], [8], [1 (M)], [2], [Medium], [SA 3], [5], [Burning],
  [Jet Black Pistol], [3], [_#feathers 1800_], [11+D4], [0], [1 (L)], [1], [Long], [S], [6], [Sidearm],
  [Magmatic Pistol], [3], [_#feathers 2000_], [11+D4 T], [0], [1 (L)], [1], [Short], [S], [6], [Burning],
  [Lantern Jetgun], [3], [_#feathers 2200_], [7+D12], [0], [1 (L)], [1], [Long], [FA 3], [8], [Jet],
  [Dragon Guard Flamethrower], [3], [_#feathers 2500_], [9+2D8 T], [0], [1 (M)], [1], [Cone 8], [S], [7], [Burning],
  [Irradiated Battle Rifle], [3], [_#feathers 2800_], [12+D10], [0], [2 (M)], [2], [Long], [SA 3], [7], [Irradiated],
  [Dragon Guard Combo Jet], [3], [_#feathers 3500_], [12+2D10], [0], [2½ (H)], [1], [Medium], [FA 3], [6], [Jet, Explosive],
  [Plasma Caster], [3], [_#feathers 3000_], [6+D10 T], [12], [2 (M)], [2], [Cone 6], [S], [7], [Burning],
  [Plasma Lance], [3], [_#feathers 3500_], [8+D12 T], [16], [3 (H)], [2], [Line 20], [S], [8], [Burning, Heavy],
  [Jet Pistol, Annihilator], [4], [_#feathers 5400_], [8+2D8 R], [0], [½ (L)], [1], [Short], [FA 4], [9], [Jet, Explosive],
  [Jetgun, Annihilator], [4], [_#feathers 6000_], [12+2D10 R], [0], [2 (M)], [2], [Medium], [FA 3], [10], [Jet, Explosive],
  [Magnetic Rifle, Gauss], [4], [_#feathers 5400_], [15+D8 I], [5], [1 (M)], [2], [Long], [FA 3], [10], [Reliable],
  [Magnetic Sniper Rifle, Gauss], [4], [_#feathers 6000_], [25+D10 I], [5], [3 (H)], [2], [Very Long], [S], [11], [Heavy, Reliable],
  [Plasma Rifle, Sunfury], [4], [_#feathers 7000_], [8+2D12 T], [15], [2 (M)], [2], [Short], [S], [10], [Overload, Burning],
  [Plasma Cannon, Sunfury], [4], [_#feathers 8000_], [9+3D10 T], [18], [4 (H)], [2], [Short], [S], [11], [Overload, Burning, Heavy],
  [Plasma Pistol, Sunfury], [4], [_#feathers 6000_], [7+D12 T], [14], [1 (L)], [1], [Short], [S], [9], [Burning],
  [Plasma Lance, Nova], [5], [_#feathers 12000_], [9+3D10 T], [18], [4 (H)], [2], [Line 25], [S], [14], [Burning, Heavy],
  [Plasma Caster, Nova], [5], [_#feathers 10000_], [7+2D12 T], [16], [3 (M)], [2], [Cone 8], [S], [13], [Burning],
  [Cœur d'Étoile], [6], [_Unique_], [17+3D10 T], [34], [5 (H)], [2], [Long], [S], [18], [Burning, Heavy],
  [Moonlight Railgun], [6], [_Unique_], [14+2D12], [0], [2 (M)], [2], [Medium], [S], [18], [],
  [Silence], [6], [_Unique_], [35+2D6], [0], [2 (M)], [2], [Medium], [S], [18], [],
)

#pftab(
  "Armor",
  columns: 9,
  align: (left, center, center, center, center, center, center, center, center),
  [*Name*], [*Tier*], [*Price*], [*Armor*], [*Ward*], [*Evasion*], [*Bulk*], [*Charge*], [*Profile*],
  [Midnight Combat Suit], [1], [_#feathers 200_], [3], [3], [+1], [1], [1], [C],
  [Hunter-Killer Combat Suit], [1], [_#feathers 250_], [4], [3], [+1], [½], [0], [C],
  [Mistwalker Robes], [1], [_#feathers 300_], [3], [6], [+1], [1], [2], [O],
  [Sudassi-Pattern Construct Frame], [1], [_#feathers 500_], [7], [5], [-2], [5], [2], [C+P],
  [Black Leather Combat Suit], [2], [_#feathers 600_], [4], [4], [+2], [2], [0], [C],
  [Synweave Nightcamo Cloak], [2], [_#feathers 800_], [0], [1], [+2], [½], [2], [O],
  [Warmage Robes], [2], [_#feathers 1000_], [5], [8], [+1], [1], [3], [O],
  [Flak Vest], [2], [_#feathers 500_], [6], [1], [-2], [2], [0], [P],
  [Zahak-Pattern Serpent Frame], [2], [_#feathers 1200_], [8], [5], [0], [3], [3], [C+P],
  [Sudassi-Pattern Artillery Frame], [2], [_#feathers 1500_], [8], [11], [-2], [5], [3], [C+P],
  [Infiltrator Bodysuit], [3], [_#feathers 2000_], [8], [5], [+1], [1], [1], [C],
  [Battlemage Vestments], [3], [_#feathers 2500_], [8], [10], [0], [2], [3], [O],
  [Dragon Guard Power Armor], [3], [_#feathers 3000_], [15], [10], [-4], [5], [1], [C+P],
  [Venerant Robes], [4], [_#feathers 5000_], [9], [20], [0], [1], [4], [O],
  [Midnight Suit, Thermal Camo], [4], [_#feathers 5500_], [13], [9], [+2], [1], [1], [C],
  [Carapace Suit, Perfector Mk V], [4], [_#feathers 5000_], [19], [12], [-1], [3], [1], [P],
  [Faerie Battleplate, Crystalline], [4], [_#feathers 6500_], [25], [19], [-4], [5], [3], [C+P],
  [Shadowweave Mantle], [5], [_#feathers 10000_], [11], [8], [+2], [2], [3], [O],
  [Perfector Mk VI Exosuit], [5], [_#feathers 12000_], [15], [10], [-1], [4], [2], [C+P],
  [Titan Frame, Mk III], [5], [_#feathers 15000_], [24], [16], [-3], [6], [1], [C+P],
  [Coldlight Robes], [6], [_Unique_], [10], [25], [+2], [1], [4], [O],
  [Moonlight Combat Suit], [6], [_Unique_], [18], [10], [+3], [2], [3], [C],
  [Vanth's Sypharion], [6], [_Unique_], [15], [15], [+3], [1], [3], [C],
)

#pftab(
  "Catalysts",
  columns: 9,
  align: (left, center, center, center, center, center, center, center, center),
  [*Name*], [*Tier*], [*Price*], [*Type*], [*Class*], [*Bulk*], [*Charge*], [*Damage*], [*Increment*],
  [Soul Crystal], [1], [_#feathers 200_], [Arcane], [Light], [0], [2], [4+D6], [5],
  [Amber Rod], [1], [_#feathers 350_], [Arcane], [Medium], [1], [2], [8+D3], [8],
  [Angel Mask], [1], [_#feathers 300_], [Psychic], [Medium], [0], [3], [5+D8], [8],
  [Prana Crystal], [1], [_#feathers 250_], [Psychic], [Light], [0], [2], [2+D6], [5],
  [Blackbone Staff], [2], [_#feathers 800_], [Arcane], [Medium], [½], [1½], [9+D8], [9],
  [Polybind Staff], [3], [_#feathers 2500_], [Arcane], [Medium], [1], [2½], [12+D10], [11],
  [Memento Mori], [4], [_#feathers 5000_], [Psychic], [Light], [0], [2], [8+2D8], [11],
  [Caesium Rod], [5], [_Unique_], [Psychic], [Medium], [2], [3], [23+D10], [16],
  [Moonray], [6], [_Unique_], [Arcane], [Medium], [1], [4], [27+2D8], [18],
  [Serpent Staff], [6], [_Unique_], [Psychic/Divine], [Medium], [2], [5], [18+3D10], [17],
)

#pftab(
  "Reliquaries",
  columns: 9,
  align: (left, center, center, center, center, center, center, center, center),
  [*Name*], [*Tier*], [*Price*], [*Class*], [*Bulk*], [*Charge*], [*Damage*], [*Increment*], [*Will*],
  [The Princess' Locket], [1], [_#feathers 300_], [Light], [0], [2], [4+D6], [5], [3],
  [Battlefield Dust], [1], [_#feathers 300_], [Light], [0], [2], [3+D8], [5], [3],
  [Kharu's Ember], [1], [_#feathers 250_], [Light], [0], [1], [4+D3], [5], [2],
)

#pftab(
  "Consumables",
  columns: 7,
  align: (left, center, center, center, center, left, center),
  [*Name*], [*Tier*], [*Type*], [*Bulk*], [*Range*], [*Effect*], [*Cost*],
  [Frag Grenade], [1], [Grenade], [¼], [Burst 1/10], [6+D3 damage, DC 2], [_#feathers 150_],
  [AP Grenade], [1], [Grenade], [½], [5], [8+D3 damage, Pen 3], [_#feathers 300_],
  [Acid Grenade], [0], [Grenade], [¼], [Burst 1/10], [4+D10 Acid damage], [_#feathers 100_],
  [Flashbang Grenade], [2], [Grenade], [¼], [Burst 2/10], [Dazed + Blinded 1 round (D4 Stamina negates)], [_#feathers 300_],
  [Red Healing Potion], [1], [Potion], [¼], [Self/Touch], [Heal 2+D3 HP per round for 3 rounds], [_#feathers 250_],
  [Weak Mana Potion], [1], [Potion], [¼], [Self/Touch], [Recover 4+D4 focus per round for 3 rounds], [_#feathers 250_],
)

#pftab(
  "General Equipment",
  columns: 4,
  align: (left, center, center, left),
  [*Name*], [*Bulk*], [*Cost*], [*Effect*],
  [Rope (50 ft)], [1], [_#feathers 10_], [+2d to Athletics checks for climbing when secured],
  [Grappling Hook], [½], [_#feathers 25_], [Allows rope to be thrown and anchored at range],
  [Climbing Kit], [2], [_#feathers 50_], [+2d to Athletics checks for climbing; prevents falls on 1 failed check],
  [Camping Kit], [3], [_#feathers 30_], [Tent, bedroll, fire starter. Required for comfortable rest in the field],
  [Healer's Kit (10 uses)], [1], [_#feathers 100_], [Required to perform Alchemy checks for healing. Each use expended per patient],
  [Alchemy Kit], [3], [_#feathers 200_], [Required to perform Alchemy checks and brew potions],
  [Electronics Kit], [2], [_#feathers 150_], [Required to perform Electronics checks],
  [Magitek Kit], [2], [_#feathers 200_], [Required to perform Magitek checks. Charge: 2],
  [Lantern], [½], [_#feathers 5_], [Bright light in 10 squares, dim light in 20],
  [Rations (1 week)], [1], [_#feathers 10_], [Sufficient food for one person for seven days],
  [Binoculars], [½], [_#feathers 50_], [+2d to Scrutiny checks at long range],
  [Comm Unit], [¼], [_#feathers 100_], [Encrypted short-range communication (range: ~5 km)],
  [Lockpick Set], [¼], [_#feathers 75_], [Required to pick mechanical locks. +2d to Infiltration checks for locks],
  [Manacles], [½], [_#feathers 30_], [D6 Athletics to break free],
)

#set page(
  columns: 2
)

=== Item Descriptions

#item-description(
  "Power Field Parry Dagger",
  "Dagger",
  4,
  keywords: "Powered",
)[
  This dagger grants a +4 equipment bonus to parry checks.
]

#item-description(
  "Memento Mori",
  "Psychic Catalyst",
  4,
  keywords: "Time, Fate",
  flavor: "An amulet carved in the form of a miniature human skull. The Dark-Elven inscription reads 'Remember thou, o mage, that one day thou, too, shalt face oblivion'.",
)[
  The Memento Mori grants its wielder a +2 equipment bonus to manifesting Psychic powers. The bonus increases to +5 for Time and Fate powers.
]

#item-description(
  "Hoarfrost",
  "Medium Sword",
  5,
  keywords: "Cold",
  flavor: "A longsword of pale blue steel, rimed with frost that never melts.",
)[
  Hoarfrost is a +2 Masterwork Rimebound Longsword. It has the following traits:

  *Rimebound Blade:* Hoarfrost deals an additional 7+D12 Cold damage on hit, reduced by Ward (but not Armor). The listed damage in the weapon table is the physical component only; the total effective damage is 14+2D12 split between physical and magical defenses.

  *Unmelting Edge:* Attacks with this weapon gain a +2 equipment bonus to their accuracy.
]

#item-description(
  "Void Blade",
  "Legendary Katana",
  5,
  keywords: "Void",
)[
  *Nowhere Edge:* The wielder of this katana gains access to the Wounds from Nowhere legendary power.

  *Spacerender:* The Void Blade has a reach of 2.

  *Soul Drain:* A target hit by the Void Blade must make a D6 Potential save. On failure, the target loses 1 EP and 15+D10 Focus.
]

#power-description(
  "Wounds from Nowhere",
  "Innate",
  5,
  "2",
  "The target must make a D8 Potential save; on failure, it takes 300% damage, ignoring armor. On success: it takes 100% damage. Whether the check fails or succeeds, the Void Blade cannot be used until the end of your next turn after you attempt to manifest this power, when it returns to your hand.",
  keywords: ("Void",),
  prerequisites: ("You must be wielding the Void Blade.",),
  range: "1 within 15",
  difficulty: "7",
  cost: "2 Increments",
  resistance: "No (Ward applies)",
)


#item-description(
  "Caesium Rod",
  "Psychic Catalyst",
  5,
  keywords: "Time",
  flavor: "A rod of radioactive caesium, encased in a protective sheet of rune-etched lead glass. The resonance of the metal core enhances this catalyst's power in manifesting Time powers.",
)[
  *Resonant Frequency:* This rod grants the wielder a +3 equipment bonus to manifesting Psychic powers, increasing to +6 for Time powers.
]

#item-description(
  "Kazykly",
  "Legendary Spear",
  6,
  keywords: "Blood, Shadow, Two-handed, Reach",
)[
  Kazykly is a +2 Cursebringer Bloodthirst Lance. It has the following traits:

  *Bloodthirst:* The weapon hungers for the blood of its foes. If Kazykly successfully deals damage to a living target, the wielder gains a +2 bonus to the next attack with the weapon.

  *Cursebringer:* The weapon brings doom to anything it strikes. If Kazykly successfully deals damage to a target, the target must make a D7 Potential save. On failure, it takes a -2 curse penalty to all of its rolls (save ends).

  *Reach:* This weapon has a range of 3, but it cannot strike directly adjacent targets.

  *The Lord Impaler:* Kazykly grants its wielder the Forest of Corpses unique power.
]

#item-description(
  "Moonlight Shortsword",
  "Masterwork Shortsword",
  6,
  keywords: "Moonlight",
)[
  *Moontouched:* A target hit by this sword is surrounded by a halo of moonlight that makes it easier to hit. Any attacks against the afflicted target gain a +2 bonus until the end of the wielder's next turn; additionally, the halo cancels the effects of invisibility for this duration.

  *Bloodthirst:* The weapon hungers for the blood of its foes. If this sword successfully deals damage to a living target, the wielder gains a +2 bonus to the next attack with the weapon.
]

#item-description(
  "Silence",
  "Legendary Sniper Rifle",
  6,
  keywords: "Blood, Moonlight",
  flavor: "On the field where bloody battle had raged, there reigned a great silence.",
)[
  Silence is a Legendary +2 Moontouched Bloodthirst Sniper Rifle. It has the following powers:

  *Moontouched:* A target hit by a shot from Silence is surrounded by a halo of moonlight that makes it easier to hit. Any attacks against the afflicted target gain a +2 bonus until the end of the wielder's next turn; additionally, the halo cancels the effects of invisibility for this duration.

  *Bloodthirst:* If Silence successfully deals damage to a living target, the wielder gains a +2 bonus to the next attack with the weapon.

  *Piercing Silence:* Shots from this weapon are magically silenced and cannot be detected by auditory means outside of a radius of 5 meters from the weapon itself. Additionally, a target struck by Silence must make a D6 Potential check or be silenced (save ends). A target killed by a shot from Silence fails this check automatically.
]

#item-description(
  "Moonlight Railgun",
  "Masterwork Sniper Rifle",
  6,
  keywords: "Blood, Moonlight",
)[
  The Moonlight Railgun is a +1 Moontouched Bloodthirst Sniper Rifle. It shares the Moontouched and Bloodthirst traits with its legendary counterpart Silence.
]

#item-description(
  "Coldlight Robes",
  "Masterwork Light Armor",
  6,
  keywords: "Robe, Ice, Light",
  flavor: "The priests of Iyalan specialized in spinning the silver light of the moon into magical threads, cold to the touch as silver, yet sheer as silk.",
)[
  *Moonsilver:* These robes grant the wearer a +3 bonus to casting Ice and Moonlight spells.

  *Aura of Cold:* In battle, these robes generate a vortex of cold air. The vortex is an Aura 1; any creature that enters or starts its turn in the aura takes 20 Cold damage. Suppressing or reactivating this aura is a free action, but can only be done once per round.

  *Sheer Reflection:* In moonlight, the robes become suffused with magical power. Their Ward and Evasion bonuses increase to 30 and +5 respectively; additionally, the casting bonuses increase to +5 each.
]

#item-description(
  "Moonlight Combat Suit",
  "Masterwork Light Armor",
  6,
  keywords: "Moonlight",
  flavor: "Branded with the sigil of the Heirs, this masterwork combat suit was made for one of the Blood Moon's Oathpledged.",
)[
  This suit is a +2 Lightbender Deflecting Synscale combat suit.

  *Masterwork Synscale:* The overlapping plates of ultra-thin material provide excellent protection and hide the wearer's physical and magical emissions. The wearer gains a +4d bonus to subterfuge checks to avoid detection by any senses, including lifesense and magicsense, other than smell.

  *Light Bender:* This suit bends the light around it. When fighting in bright light, its Evasion bonus increases by 1.

  *Deflecting:* The synscales are magically treated. When the wearer is targeted by an area-effect spell or magical ability, the suit grants the wearer light cover against that effect.

  *Moonlight Blessing:* In moonlight, as a 1 AP action, the wearer can spend 2 EP to become invisible to all senses for the scene or while they remain in the moonlight.
]

#item-description(
  "Vanth's Sypharion",
  "Legendary Light Armor",
  6,
  flavor: "This set of armor was once owned by Vanth, shadow of the midnight gates. Seemingly composed of the actual black scales of some monstrous serpent, it does not provide the protection of heavier materias, but its magical powers more than make up for it.",
)[
  *Shadowscale:* The scales attenuate the presence of the wearer. The wearer gains a +5d bonus to subterfuge checks made to avoid detection by any senses, including supernatural ones. Its Evasion bonus increases to +5 in low light or darkness.

  *Keratin Point:* The scales are artfully arranged to present very few flat surfaces, deflecting a great proportion of incoming thrusts. The wearer gains cover against attacks dealing piercing damage.

  *Slough Off:* When damaged, the armor can expel a thin layer of skin, like the moult of a snake. Once per round, when hit by an attack, a wearer possessing the Fey Jaunt ability can use it to escape the attack, leaving behind a husk of sloughed-off skin. The attack affects the husk instead.
]

#item-description(
  "Moonray",
  "Legendary Staff",
  6,
  keywords: "Arcane, Cold, Moonlight",
  flavor: "Legendary staff of Iyalan, cast from millions of strands of solid moonlight. The staff is cold to the touch and smooth like glass, emanating a faint silver glow.",
)[
  Moonray is a +2 Resonating Manabind Staff.

  *Solid Moonlight:* Moonray grants a +4 bonus to casting Arcane spells. This bonus increases to +7 for Ice and Moonlight spells.

  *Resonating:* Moonray becomes more efficient at channeling magical energy with every spell it casts in quick succession. For every spell channeled through Moonray on a given turn, its casting bonuses increase by 1, up to a maximum of +6/+9.

  *Manabind:* Moonray grants a +6 bonus to counterspelling. If Moonray is used to perform a successful counterspell, the wielder recovers Focus equal to the cost of the countered spell.
]

#item-description(
  "Serpent Staff",
  "Catalyst",
  6,
  keywords: "Psychic, Divine",
  flavor: "A staff shaped like a winding snake, carved from green-lacquered wood and topped with a glowing green gemstone held between the serpent's teeth. An eerie power emanates from it.",
)[
  The Serpent Staff is both a Psychic catalyst and a Reliquary of the World Serpent (Domains: Life, Poison, Serpent; Will 8; Favor 3).

  *Psychic:* Grants a +4 equipment bonus to manifesting Psychic powers, and a +7 bonus to manifesting Fate powers.

  *Mana Toxin:* Powers manifested using this staff apply a -3 penalty to attempts to counterspell them. When a power is successfully manifested through this catalyst, the wielder gains an Aura 10 until the beginning of their next turn; attempts to cast Arcane spells in this aura suffer a -4 penalty.
]
