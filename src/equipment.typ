#import "declarations.typ": *

#chap-header("6", [= Equipment], "Your Material Companions")

The Deathless carry the remnants of a lost age: weapons forged in factories that no longer run, armor plated with alloys whose formulas are half-remembered, catalysts housing fragments of power that predate the cataclysm. Equipment in Ashen is not simply purchased off a shelf --- it is scavenged, repaired, inherited, and occasionally crafted anew by artisans working from incomplete knowledge.

A character's equipment defines their role in combat as much as their powers do. The weapon they wield determines their damage output and range; their armor shapes whether they stand in the open or fight from cover; their catalyst or reliquary channels the powers they have learned. Choosing equipment is choosing a style of play.

This chapter covers the rules for acquiring, carrying, and using equipment, as well as the systems for masterwork craftsmanship and magical enchantments that allow items to grow alongside the characters who bear them.

== General Rules

This section covers the rules that apply to all equipment regardless of type: how items are carried and readied, how encumbrance works, how powers interact with implements, and how items can be improved through masterwork craftsmanship and enchantment.

=== Equipment States

Items a character possesses can be in one of three states:

- *Carried:* The item is stowed in a pack, bag, or otherwise on the character's person, but is not ready for immediate use. Retrieving a carried item to equip or wield it takes significant effort (typically a full action). Carried items contribute to a character's encumbrance but do not count against their Bulk or Charge capacity (see _Bulk and Charge_ below).

- *Equipped:* The item is worn on the body or stored in a readily accessible location (a belt, holster, or sheath). Armor must be equipped to provide its benefits. Equipped items can be drawn to be wielded as a minor action (see _Draw/Stash_ in the Combat chapter). Equipped items count against a character's Bulk and Charge capacity.

- *Wielded:* The item is actively held in hand and ready to use. A character can wield items in as many hands as they have free (typically two). Weapons must be wielded to attack with them; catalysts and reliquaries must be wielded to channel powers through them. Some items — notably light catalysts such as pendants, circlets, and tiaras — can be wielded without occupying a hand, as they are worn on the body in a way that allows the user to channel through them. Wielded items count against a character's Bulk and Charge capacity.

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

=== Masterwork Items

Most equipment available to characters is *generic*: mass-produced or commonly available gear whose quality is determined by its materials and the technology used to manufacture it. Generic items exist at tiers 0 through 4.

A *masterwork* item is one crafted with exceptional skill, superior materials, or both. Masterwork quality allows an item to exceed the tier 4 generic ceiling, and for weapons, grants an intrinsic bonus to attack rolls. Masterwork items come in two grades:

- *Masterwork +1:* The item is one tier above its generic equivalent. Masterwork weapons grant +1d to attack rolls. Available at tier 3 and above; *required* at tier 5 and above.
- *Masterwork +2:* The item is two tiers above its generic equivalent. Masterwork weapons grant +2d to attack rolls. Available at tier 5 and above only; *required* at tier 6.

For armor and catalysts, masterwork quality is reflected in the item's stat line (higher Armor, Ward, Evasion, or casting bonuses) rather than granting a separate numerical bonus. Reliquaries, being remnants of the dead gods rather than crafted objects, are not subject to masterwork rules.

Crafting a masterwork item requires a Shop check at difficulty 9 or higher, along with appropriate materials. Not every skilled artisan can produce masterwork items --- the combination of talent, tools, and materials needed is rare.

Equipment can be improved through technologies, treatments, and enchantments. These are described in the _Equipment Modifications_ section below.

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

Weapons may have one or more *keywords* --- standardized traits with defined mechanical effects. Some keywords are innate to a weapon type (Sidearm for daggers, Reach for polearms); others are granted by technologies, treatments, or enchantments. Keywords are defined in the _Equipment Modifications_ section below.

==== Melee Weapon Types

*Daggers and Knives* are Light weapons, easily concealed and quick to draw. They have the Sidearm keyword by default, allowing them to be drawn or stowed as a free action. Daggers deal less damage than larger weapons but excel as backup weapons, off-hand options for dual wielders, and tools for parrying.

*One-handed Swords* are the standard melee weapon for most combatants, leaving a hand free for a catalyst, shield, pistol, or second weapon. They come in Light (shortswords, force swords) and Medium (longswords, sabres) variants, balancing damage and versatility.

*Two-handed Blades* --- greatswords, claymores, and similar large bladed weapons --- sacrifice versatility for raw damage. They are Heavy, requiring significant Bulk capacity, but their damage output exceeds anything a one-handed weapon can match at the same tier.

*Blunt Weapons* --- hammers, maces, and mauls --- deal *Impact* damage rather than Rending. Impact damage is particularly effective against constructs and heavily armored targets whose plating can absorb cuts but not concussive force.

*Polearms* --- spears, lances, halberds --- grant the wielder *Reach*, allowing them to strike targets beyond adjacent squares. This makes them uniquely valuable for controlling space. The tradeoff is that most polearms cannot strike directly adjacent targets, leaving the wielder vulnerable if an enemy closes the distance.

*Gauntlets* are fist-mounted weapons --- powered gloves, cestus, and similar devices. They are the lightest melee weapons available, leaving the wielder's hands effectively free. Their damage is modest, but their negligible Bulk makes them ideal for characters who need a melee option without committing carrying capacity.

Several *melee weapon technologies* alter base construction. *Force* weapons project an energy edge that grants Penetration and reduces weight. *Chain* weapons use mechanically driven teeth for devastating raw damage at the cost of weight and the Powered keyword. *Power Field* weapons generate a localized disruption field for the highest available Penetration. These are described in the _Equipment Modifications_ section.

==== Ranged Weapon Types

Ranged weapons are defined by their base technology, which determines their damage type, innate keywords, and tactical role. The following technologies are available.

===== Conventional Firearms

Conventional firearms launch solid projectiles using chemical propellants or compressed gas --- a technology so fundamental that even the most ruined communities can produce ammunition for them. They range from crude Old War relics scavenged from ancient battlefields to the precision-engineered Perfector-pattern arms manufactured by the few remaining industrial forges.

Conventional firearms have no innate special properties: no armor-piercing plasma, no explosive warheads, no exotic damage types. What they offer is *availability*, *reliability*, and *versatility*. A conventional rifle is the weapon a mercenary carries because rounds for it can always be found. A Perfector pistol is the weapon an officer carries because it will never malfunction at the wrong moment. At higher tiers, materials and engineering improve steadily rather than introducing new physics --- the guns simply hit harder, shoot straighter, and hold together better.

Conventional firearms deal *Rending* damage. They have the highest base damage per shot of any ranged weapon technology at the same tier, compensating for their lack of innate Penetration or special damage riders. They are available from T0 upward.

===== Plasma Weapons

Plasma weapons fire superheated bolts of ionized gas that burn through flesh and melt through armor alike. They represent the most sophisticated energy weapon technology widely available --- compact magnetic containment bottles that hold and release star-hot matter in controlled bursts.

Their defining advantage is *Penetration*. Superheated plasma melts through physical armor that would stop a conventional round cold, making plasma weapons the premier choice against heavily armored targets, constructs, and vehicles. The tradeoff is *range*: plasma disperses rapidly in open air, limiting most plasma weapons to close engagements. At higher tiers, the Sunfury and Nova engineering patterns push containment technology to its breaking point --- these weapons hit harder and reach further, but risk catastrophic *Overload* when the containment fields destabilize.

All plasma weapons deal *Thermal* damage and have the *Burning* keyword. They become available at T2.

===== Jet Weapons

Jet weapons --- sometimes called gyrojets --- fire miniature self-propelled rockets. What they sacrifice in per-round accuracy they make up for in sheer volume of fire. Every jet weapon is *fully automatic*, filling the air with a screaming hail of projectiles that saturates kill zones and suppresses targets behind cover.

At lower tiers the rockets are simple kinetic penetrators --- cheap, mass-produced, effective by quantity rather than quality. At higher tiers the rockets carry explosive warheads, and every burst becomes a small bombardment. The Annihilator pattern represents the apex of this philosophy: a weapon that treats cover as a temporary inconvenience.

Jet weapons are the arms of choice for construct troops (who can absorb the recoil), heavy gunners laying down suppressive fire, and anyone who subscribes to the doctrine that volume of fire solves all problems. All jet weapons deal *Rending* damage and fire in *Full Auto* mode. They become available at T1.

===== Magnetic Weapons

Magnetic weapons use electromagnetic coils --- railgun tracks or Gauss-type solenoids --- to accelerate solid projectiles to extreme velocities. There is nothing exotic about the projectile itself; the damage comes entirely from the sheer kinetic energy of impact. A railgun round hits like a battering ram concentrated into a point.

All magnetic weapons deal *Impact* damage and have the *Reliable* keyword. The electromagnetic firing mechanism has no chemical propellant to misfire, no plasma to destabilize, no rocket to dud --- just metal, magnets, and physics. Their inherent Penetration at higher tiers comes not from any exotic property, but from raw velocity.

The tradeoff is *infrastructure*. Magnetic weapons require significant power to operate and are heavier than conventional equivalents due to the coil assemblies. They first appear at T2 as heavy, braced railguns; by T4, the Gauss pattern has miniaturized the technology enough to produce automatic rifles. At T6, master-crafted railguns are precision instruments of devastating lethality --- the quietest and most lethal weapons on any battlefield.

===== Flame Weapons

Flame weapons project continuous streams of burning material --- promethium gel, magmatic compound, or alchemical accelerant. Where plasma weapons fire discrete bolts at specific targets, flame weapons saturate areas. They are not precision instruments; they are tools of area denial and terror.

All flame weapons deal *Thermal* damage and have the *Burning* keyword. They lack the armor-piercing properties of plasma, but their area coverage is unmatched. A flamethrower doesn't care if the target is behind cover --- the fire goes around it, over it, through every gap. Flame weapons are favored by breachers clearing fortified positions, commanders who need to deny terrain, and the occasional pyromancer who finds that magical fire isn't enough. They become available at T2.

===== Cold Weapons

Cold weapons fire cryogenic projectiles or focused beams of cold energy that flash-freeze targets on impact. The technology descends from pre-cataclysm research into moonlight energy --- the same principles that produced artifacts like the Hoarfrost blade and the Coldlight Robes. Where fire burns and plasma melts, cold *arrests*: it saps heat, stiffens joints, and makes brittle what was once flexible.

All cold weapons deal *Cold* damage and have the *Freezing* keyword. Their tactical value lies as much in control as in lethality --- a frozen target is a helpless target, and even a slowed one is easy prey. Cold weapons also have moderate innate Penetration, as the rapid thermal contraction of armor plating creates stress fractures that the cryogenic payload exploits. They are rarer and more expensive than plasma or conventional arms, produced primarily by artisans who have inherited or reverse-engineered the old moonlight forges. They become available at T2.

===== Arc Weapons

Arc weapons discharge focused bolts of electrical energy --- artificial lightning contained and directed by electromagnetic focusing arrays. The discharge follows the path of least resistance, arcing between conductive surfaces and grounding itself through anything in its path.

All arc weapons deal *Electric* damage and have the *Chaining* and *Disrupting* keywords. Their signature property is that the lightning doesn't stop at the primary target: it jumps to nearby conductors --- other enemies, their equipment, their shield generators. This makes arc weapons devastating against clustered formations and shielded targets. A single well-placed shot can cascade through an entire squad.

The tradeoff is that electricity is stopped cold by insulated or non-conductive armor. Arc weapons have no innate Penetration; against a heavily armored solo target, a conventional rifle will outperform an arc rifle every time. Their power lies in disruption and area control, not single-target damage. Arc weapons are a relatively new technology, developed by adapting shield generator engineering into offensive applications. They become available at T2.

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
- *Charge:* Magical encumbrance (see _Bulk and Charge_ above).
- *Profile:* The armor's physical form factor, which determines how it layers with other armor (see _Armor Layering_ below).

==== Armor Layering

A character may wear up to one piece of armor in each of three *profile* slots. From innermost to outermost, these are:

- *Close-fit (C):* Form-fitting garments worn directly against the body. Combat suits, bodysuits, and similar items.
- *Plating (P):* Rigid or semi-rigid protective layers worn over close-fit garments. Flak vests, armor plates, and combat frames.
- *Overgarment (O):* Large, flowing, or draped garments worn as the outermost layer. Robes and mantles.

A character may wear one piece of armor in each slot. Full-body armor such as power armor and construct frames occupies both the Close-fit and Plating slots (marked *C+P* in the armor table), meaning nothing can be worn underneath them.

When multiple pieces of armor are worn, their *Armor*, *Ward*, *Evasion*, *Bulk*, and *Charge* values are all added together. Special properties such as camouflage or stealth bonuses only apply if the piece with that property is the character's outermost worn layer.

==== Armor Materials

Protective gear's base characteristics depend on the materials from which they are made, as it is the case for melee weapons,
and much as a ranged weapon's characteristics depend on the mechanism by which it delivers energy onto the target.

===== Close-Fit

Close-Fit pieces of equipment really only come in one type: most of them are bodysuits made from various types of
_Synfiber_: a composite weave of several different substances, elastic, lightweight and engineered to be thermoregulating.
Synfiber can be reinforced in various ways: by spinning carbon fiber into the base matrix, a Synfiber suit becomes naturally
resistant to cuts and slashes; by layering nanoscales into the weave, it can disperse impact. Stealthy fighters often adopt
camouflage Synfiber gear that helps them avoid detection.

The following Synfiber variants are available. Each grants its bonus on top of the base Close-fit stats without changing them:

- *Carbon Weave:* Carbon fiber is spun into the base matrix, hardening the suit against cuts and slashes. Grants resistance to *Rending* damage (2 × tier).
- *Nanoplate:* Nanoscale ceramic plates are layered into the weave, dispersing concussive force across the suit's surface. Grants resistance to *Impact* damage (2 × tier).
- *Thermostatic:* The suit incorporates thermostatic fibers that regulate heat exchange, insulating the wearer against both extreme heat and cold. Grants resistance to *Thermal* and *Cold* damage (1 × tier each). Additionally, the suit suppresses the wearer's thermal signature, granting advantage on Subterfuge checks to avoid detection by infrared vision and thermal cameras.
- *Insulated:* Rubberized layers and non-conductive polymers are woven into the suit, grounding electrical current before it reaches the wearer. Grants resistance to *Electric* damage (2 × tier).

Particularly rare suits of this kind may be made from more exotic materials --- magic weaves with supernatural properties.

===== Plating

Plating layers are usually worn over (or, in some cases, under) Synfiber suits by warrior who require more protection
and do not mind the extra weight. The lightest and least cumbersome type of plating are thin kevlar vests, sometimes
with thin ceramic inserts, that can be worn under a Synfiber suit to provide extra protection from damage without
compromising on the stealth capabilities of a camo suit.

The next type up are what is conventionally known as Flak Vests, bulkier pieces of chest protection that can stop 
substantially more powerful attacks than the thin bulletproofs. Flak plating can range from a beefier carbon-ceramic
composition over sintered steel-ceramic armor plates to the lost technology of Echo Crystplate. 

The heaviest forms of Plating add partial limb protection and helmets, being just one step down from full-body armor.

The following plating materials are available:

- *Ceramic Composite:* The standard plating material --- sintered steel-ceramic or carbon-ceramic plates. Uses the base Plating stats with no special resistance. Available, affordable, effective.
- *Cerafiber:* A hardened, fibrous material that frays on impact, catching and stopping all but the most high-velocity projectiles. Grants resistance to *Rending* damage (3 × tier), but its Armor value is reduced by 1 × tier compared to the base.
- *Reactive:* Plates with shock-dampening gel or reactive explosive elements sandwiched between layers. When struck, the reactive layer detonates inward, cushioning the impact. Grants resistance to *Impact* damage (3 × tier), but its Armor value is reduced by 1 × tier compared to the base.
- *Ablative:* Layered heat-sink material designed as a countermeasure to plasma weapons. Each layer chars and flakes off to dissipate thermal energy, protecting the layers beneath. Grants resistance to *Thermal* damage (3 × tier).
- *Insulated:* Multi-layered insulation combining cryo-resistant polymers and non-conductive barriers. Grants resistance to *Cold* and *Electric* damage (1½ × tier each, rounded down).
- *Crystplate:* Echo Crystplate --- a lost pre-cataclysm technology. The crystalline lattice resonates with incoming magical energy, dispersing it across the plate's structure. Crystplate is the only plating material that grants meaningful Ward: bonus Ward equal to *2 × tier* on top of normal plating stats. Crystplate cannot be manufactured; it must be salvaged, recovered, or reworked by an artisan with fragments of the old techniques. _(Rare.)_

===== Full-Body

These pieces of armor encase the entire body, consisting of a tight-fitting base layer with fully jointed armor on top
that forms closed suit once fully donned. The underlying materials of these suits are the same or similar as for
more disjointed plating layers. More advanced suits of full-body armor are air-tight when the helmet and
heat vents are closed, and can be used with a rebreather system to venture into contaminated areas.

Powered armors usually go a step further --- they are so heavy they are impossible to move without the power servos
assisting the wearer's movement, and to prevent their occupants from overheating, they usually have temperature control systems
that integrate with the armor's base layer to run climatized water close to the wearer's body.

The final progression, of course, are the Ironhands' construct frames --- rather than wear a suit of armor, an Ironhands
has their clockwork core integrated into a new armored frame that then becomes their new body.

Full-body armor uses the same material variants as Plating, but at higher resistance rates due to the greater surface area and thicker construction:

- *Ceramic Composite:* Base stats, no special resistance.
- *Cerafiber:* Rending resistance (5 × tier for heavy, 4 × tier for medium). Armor reduced by 2 × tier.
- *Reactive:* Impact resistance (5 × tier for heavy, 4 × tier for medium). Armor reduced by 2 × tier.
- *Ablative:* Thermal resistance (4 × tier for heavy, 3 × tier for medium).
- *Insulated:* Cold and Electric resistance (2 × tier each for heavy, 1½ × tier each for medium, rounded down).
- *Crystplate:* Bonus Ward equal to 3 × tier for heavy, 2 × tier for medium. _(Rare.)_

===== Overgarments

Under this rubric are grouped flowing garments that are usually worn not for their physical protection, but
for the other benefits they provide. Thermal Camo Synfiber cloaks are used to provide both protection from
sight as well as avoid detection by infrared vision, and are often draped over light or medium gear by
those on infiltration missions.

Finally, robes are the mainstay of magic practitioners everywhere --- they are usually woven of fibers
that conduct magic well, and do not provide any physical protection beyond what their enchantment offers.
It is not uncommon for frontline casters to wear a mage's cape or robe over a more physically protective
base layer.

==== Damage Resistance

Some armor provides *resistance* to a specific damage type --- Thermal, Cold, Electric, Chemical, or Rending --- based on its materials or construction. Resistance reduces incoming damage of that type by a flat value, applied after Armor or Ward reduction (whichever is relevant).

The amount of resistance an armor piece grants scales with its tier and weight class:

- *Light armor* (Close-fit, Overgarment): resistance equal to *2 × tier*.
- *Medium armor* (Plating, medium Full-body): resistance equal to *3 × tier*.
- *Heavy armor* (heavy Full-body): resistance equal to *4 × tier*.

Not every piece of armor has a damage resistance. Resistance is a property of the specific materials used --- a Synfiber suit reinforced with thermostatic weave might resist Thermal damage, while one layered with insulated nanoscales might resist Lightning. The base armor tables show stats without resistance; resistance is noted in the item's description or granted by a treatment or enchantment.

A character wearing multiple pieces of armor with resistance to the same damage type adds those resistances together.

=== Catalysts

Catalysts are implements used to channel magical energy. They are required to cast arcane spells and psychic powers. Each catalyst has a *damage* value (the base for spell damage calculations --- when a spell deals "100% catalyst damage," it deals damage equal to the catalyst's damage value), a *focus increment* value that determines the Focus cost of spells channeled through it (see _Focus Increments_ above), and a *casting bonus* that grants bonus dice on the skill check to cast spells through it.

Catalysts come in two types: *Arcane catalysts* (rods, staves, orbs) are used for arcane spells. *Psychic catalysts* (crystals, masks, circlets) are used for psychic powers. A character must wield a catalyst of the appropriate type to cast spells or powers of that school. A catalyst's base stats are determined by its *tier* and *weight class*, not its type --- an Arcane staff and a Psychic crystal of the same tier and class have the same base stats.

Catalysts come in three weight classes:

*Light* catalysts --- pendants, circlets, amulets, crystals --- do not occupy a hand. They have the lowest damage, increments, and casting bonuses, but free the wielder's hands for weapons, shields, or other implements.

*Medium* catalysts --- rods, wands, orbs, short staves --- occupy one hand. They balance damage, cost, and casting bonus, and are the standard choice for most casters.

*Heavy* catalysts --- great staves, war-orbs, siege foci --- require two hands. They have the highest damage and casting bonuses, but also the largest focus increments, meaning each spell costs significantly more Focus to fuel. Their bulk and charge demands are substantial. Heavy catalysts are the choice of dedicated siege casters who trade versatility for raw channeling power.

==== Casting Bonus

A catalyst's casting bonus is added as bonus dice to the skill check made to cast spells through it (Arcane check for arcane spells, Psychic check for psychic powers). Higher-tier and heavier catalysts grant larger casting bonuses, reflecting their superior ability to focus and amplify magical energy.

Some catalysts have the *Specialized* trait: their general casting bonus is reduced, but the bonus for spells of a specific school, element, or domain is significantly increased. For example, a catalyst specialized in Time magic might grant +2 to all Psychic powers but +5 to Time powers. Specialized catalysts are common among practitioners focused on a single discipline.

=== Reliquaries

Reliquaries are remnants of the dead gods, retaining some of their power even
long after they passed. Reliquaries can be used by characters with the
appropriate training to cast divine prayers.

Unlike catalysts, reliquaries do not grant a casting bonus. This is
compensated in two ways: divine prayers have lower base difficulties than
arcane or psychic spells of the same tier (see the tier guidelines in the
Powers chapter), and the reliquary's *favor* system grants benefits that
catalysts cannot --- the ability to tap prayers for increased power and to
override failed casting checks.

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
reliquary typically gives access to prayers from between one to three aspects.
The maximum tier of prayer that a wielder receives from the reliquary is equal
to the tier of the reliquary. For example, a tier three reliquary that grants
access to the Scarab and Ash aspects would grant access to prayers in those
aspects up to tier three, as long as it remained wielded.

Some reliquaries may grant access to unique prayers not part of any aspect, or
specific prayers outside of the aspects they ordinarily grant access to. In
these cases, those prayers are specially noted in the reliquary's stat block.

== Equipment Modifications

Apart from the base statistics of an item of its type and tier, most items the players will encounter past
a certaîn point in the game carry *modifications*. Modifications are several things: material, technology,
treatment, enchantment. These modifications are detailed below.

Many modifications grant *keywords* --- standardized traits with defined mechanical effects. The same keyword always works the same way regardless of how the item acquired it.

=== Keywords

The following keywords may appear on weapons, armor, or other equipment. Some are innate to a weapon type (such as Sidearm for daggers); others are granted by modifications.

- *Assault:* Hip-fire penalty is halved (-1d instead of -2d).
- *Burning:* Target catches fire on hit (ongoing Thermal damage, save ends).
- *Chaining:* On a successful hit, the electrical discharge arcs to one additional target within 3 squares of the original. The secondary target takes 50% of the primary hit's damage, reduced by its own defenses. Each hit from a multi-hit attack may chain separately, but the same secondary target cannot be chained to more than once per attack.
- *Disrupting:* On hit, the target must make a Potential check at difficulty 2 + the weapon's tier. On failure, the target is Disrupted, losing Ward equal to the weapon's tier. This effect stacks with other sources of Disrupt.
- *Explosive:* The weapon has a blast radius affecting adjacent squares.
- *Freezing:* On hit, the target must make a Stamina check at difficulty 2 + the weapon's tier. On failure, the target is Slowed (save ends). A target that is already Slowed when hit by a Freezing weapon is instead Frozen (stunned; save ends).
- *Heavy:* The weapon must be *braced* before it can be fired accurately. Firing a heavy weapon without bracing is called *hip-firing* and incurs a -2d penalty to the attack roll (see also Assault).
- *Parry +Nd:* Grants +N bonus dice on parry checks while wielded.
- *Poisonous (N):* Target must pass a D(N) Stamina check or become Poisoned.
- *Powered:* Requires a power source or charge to function.
- *Rapid Fire:* When the target is within half the weapon's range, attack rolls gain +2 automatic successes.
- *Reach N:* The weapon can strike targets up to N squares away, but cannot strike directly adjacent targets.
- *Reliable:* Reduced chance of malfunction.
- *Sidearm:* Can be drawn or stowed as a free action once per turn, even while wielding a two-handed weapon.
- *Split damage:* The weapon's damage is split between two types, each reduced by its respective defense separately. The weapon's item description specifies the split.

*Negative Keywords:*

The following keywords represent defects, wear, and damage. They may be found on looted or salvaged equipment, or gained through neglected maintenance (see _Equipment Maintenance_ in the Intermissions section). Negative keywords can be removed by repairing the item during an intermission (Shop or appropriate skill check, difficulty equal to the item's tier + 2, plus the cost of any skipped maintenance).

- *Brittle:* The armor's structure is compromised --- cracked plates, weakened weave, stressed crystal lattice. Each time the wearer takes damage that is reduced by this armor's Armor value, the armor temporarily loses 1 Armor. Lost Armor is restored at the end of the encounter. If the armor's Armor value reaches 0 during an encounter, it provides no physical protection for the remainder of that encounter.
- *Dulling:* The weapon's edge or striking surface has degraded. Each time this weapon deals damage, its base damage is temporarily reduced by 1. Lost damage is restored at the end of the encounter. If the weapon's base flat damage reaches 0, the weapon deals only its die roll.
- *Overload:* The weapon risks catastrophic failure on a misfire. When an Overload weapon misfires, the wielder takes 200% of the weapon's base damage and the weapon is disabled until field-repaired. See _Misfires_ in the Combat chapter.
- *Unreliable:* The item's mechanism is worn or damaged. Each time the wielder uses this item (attacks with a weapon, channels through a catalyst, relies on armor), they must roll a save. On a result of 0, the item fails: the attack misses, the spell fizzles, or the armor provides no protection against that hit. The Reliable keyword cancels Unreliable; if an item with Reliable gains Unreliable, the two cancel each other out.

=== Technologies

Technologies are physical or mechanical modifications that alter a weapon's construction. They change the weapon's base stats --- typically damage, penetration, weight, or damage type --- and may add keywords. A technology is chosen when the weapon is crafted or retrofitted; a weapon incorporates at most one technology. Technologies are not available for catalysts or reliquaries, which are enhanced through enchantments instead.

==== Melee Weapon Technologies

- *Force:* An energy edge or sheath replaces or supplements the weapon's physical blade. Force weapons gain Penetration equal to their tier × 2, deal Rending damage regardless of form factor, and reduce their weight class by one step (Heavy → Medium, Medium → Light; Light weapons are unaffected). A force weapon's Bulk is reduced by ½ (minimum 0). _(Shop or Ritual, uncommon.)_

- *Chain:* Mechanically driven teeth or a motorized cutting edge. Chain weapons increase their base damage by 50% (round up) and gain the Powered keyword, but increase their Bulk by ½. Chain weapons are loud and distinctive. _(Shop, common at T1+.)_

- *Power Field:* A localized energy field that destabilizes matter on contact. Power Field weapons gain Penetration equal to their tier × 4 and the Powered keyword. Power Field technology is rare and expensive --- it represents the pinnacle of melee penetration. _(Shop at difficulty 10+, rare. Requires rare materials.)_

==== Ranged Weapon Technologies

Ranged weapons are defined by their base technology (conventional, plasma, jet, magnetic, flame), which determines their damage type, innate keywords, and form factors. The base technology is not a modification --- it is the weapon itself.

The following modifications can be applied to ranged weapons:

- *Irradiated Ammunition:* The weapon fires radioactive or chemically toxic rounds. On hit, the target must make a Stamina check at difficulty 2 + the weapon's tier. On failure, it is Weakened (3 + tier) and takes ongoing Chemical damage equal to 3 × the weapon's tier per round (save ends both). Irradiated ammunition is expensive and difficult to manufacture. _(Alchemy, uncommon.)_

==== Armor Technologies

- *Camouflage Systems:* The armor incorporates active or passive camouflage. The wearer gains a bonus to Subterfuge checks to avoid detection. The bonus depends on the system's tier and type (thermal, visual, magical). _(Shop, uncommon.)_

- *Powered Servos:* The armor incorporates mechanical assistance, increasing the wearer's effective Stamina for carrying capacity by 2 and granting +1 to Movement Speed. Requires the Powered keyword. _(Shop, uncommon at T3+.)_

=== Treatments

Treatments are material or alchemical processes applied to a finished item. They add a keyword or property without significantly altering the item's base stats. Treatments are applied through the Alchemy or Shop skills. An item can bear one treatment.

- *Silvered:* The weapon or ammunition has been treated with alchemical silver. Some creatures are immune or resistant to damage from non-silvered weapons; a silvered weapon bypasses this protection. Additionally, silvered weapons deal bonus damage to undead creatures equal to 50% of their base damage. _(Alchemy or Shop recipe, common. Costs approximately 200 × the item's tier in feathers.)_

=== Enchantments

An *enchantment* is a magical effect layered onto an item. Enchantments grant special abilities --- they do not change the item's base stats or tier. A standard item can hold up to *two* enchantments. Enchantments can be added, removed, or replaced through rituals (using the Ritual or Occultism skill). Each enchantment has its own ritual describing the process, difficulty, cost, and skill required. The rituals for known enchantments are found in the Skills chapter.

==== Weapon Enchantments

- *Bloodthirst:* The weapon hungers for blood. If the weapon successfully deals damage to a living target, the wielder gains a +2 bonus to the next attack with the weapon. _(Occultism recipe.)_
- *Cursebringer:* The weapon brings doom to anything it strikes. On a successful hit that deals damage, the target must make a Potential save (difficulty equals the weapon's tier + 2). On failure, the target takes a -2 curse penalty to all of its rolls (save ends). _(Occultism recipe.)_
- *Moontouched:* A target hit by this weapon is surrounded by a halo of moonlight. Any attacks against the afflicted target gain a +2 bonus until the end of the wielder's next turn; additionally, the halo cancels the effects of invisibility for this duration. _(Ritual.)_
- *Rimebound:* The weapon is suffused with a freezing cold that never fades. On hit, the weapon deals additional Cold damage equal to 50% of its base damage + D12, reduced by Ward (but not Armor). _(Ritual.)_
- *Souldrinker:* On a successful hit that deals damage, the target must make a Potential save (difficulty equals the weapon's tier + 2). On failure, the target loses 1 EP and Focus equal to 3 × the weapon's tier. _(Occultism recipe.)_
- *Spacerender:* The weapon cuts through the fabric of space, extending its effective reach. The weapon gains Reach 2. _(Ritual.)_

==== Armor Enchantments

- *Deflecting:* The armor's surface is magically treated to scatter incoming magical energy. When the wearer is targeted by an area-effect spell or magical ability, the armor grants the wearer light cover against that effect. _(Ritual.)_
- *Lightbender:* The armor bends light around itself. When the wearer is fighting in bright light, the armor's Evasion bonus increases by 1. _(Ritual.)_

==== Catalyst and Implement Enchantments

- *Specialized (School):* The catalyst is attuned to a specific school, element, or domain. Its general casting bonus is reduced by 1, but its casting bonus for the specified school increases by 3. A catalyst can be specialized during crafting or enchanted afterward. _(Ritual, common.)_
- *Resonating:* The implement becomes more efficient at channeling magical energy with every spell cast in quick succession. For every spell channeled through the implement on a given turn, its casting bonuses increase by 1, up to a maximum of its base bonus + 3. _(Ritual.)_
- *Manabind:* The implement grants a +6 bonus to counterspelling. If the implement is used to perform a successful counterspell, the wielder recovers Focus equal to the cost of the countered spell. _(Ritual.)_

==== Legendary Items

Legendary items (see _Legendary_ in the Basic Rules chapter) are unique artifacts with an intrinsic trait that cannot be replicated or transferred. This legendary trait is part of the item's identity and *does not count against its enchantment slots*. A legendary item can therefore have up to three total effects: its intrinsic legendary trait plus up to two enchantments. Most tier 6 weapons and some tier 5 weapons are legendary.

=== Building an Item

Every piece of equipment in Ashen is built from a combination of a *base item*, an optional *material* (for armor) or *technology* (for weapons), an optional *treatment*, and up to two *enchantments*. Understanding how these layers combine is the key to building, pricing, and evaluating equipment.

To construct or evaluate any piece of equipment, follow these steps:

+ *Choose the base type and tier.* Look up the base stats in the Equipment Tables. For weapons, this is the weapon type (dagger, plasma rifle, etc.) at the desired tier. For armor, this is the profile (C, P, O, or C+P) at the desired tier. For catalysts, this is the weight class (Light, Medium, Heavy) at the desired tier. The base type determines the item's fundamental stats.

+ *Choose a material (armor only).* Armor is made from a specific material that may grant damage resistance or other properties. The default material (Synfiber for Close-fit, Ceramic Composite for Plating and Full-body) uses the base stats as-is. Specialized materials may modify the base stats (Cerafiber and Reactive reduce Armor) or add bonuses (Crystplate adds Ward). A piece of armor has exactly one material.

+ *Apply a technology (weapons only).* Weapons may incorporate one technology (Force, Chain, or Power Field) that modifies their base stats. Technologies change fundamental properties like Penetration, damage, weight class, or damage type. A weapon has at most one technology. Catalysts and armor do not use technologies --- catalysts are enhanced through enchantments only, and armor uses the material system instead.

+ *Apply a treatment (optional).* A treatment is a material or alchemical process that adds a keyword or property without significantly altering base stats. An item can bear at most one treatment. Treatments can be applied to weapons, armor, or ammunition.

+ *Apply enchantments (optional).* Enchantments are magical effects layered onto an item. A standard item can hold up to *two* enchantments. Enchantments can be applied to weapons, armor, or catalysts. They grant special abilities but do not change base stats or tier.

+ *Apply masterwork quality (if applicable).* Masterwork +1 and +2 raise the item's effective tier and, for weapons, grant bonus attack dice. Masterwork quality is required at T5+ (see _Masterwork Items_ above).

The final item is the sum of all these layers. The following examples illustrate the process at various tiers.

==== Naming Conventions

Items are typically named by combining their origin or manufacturer, their distinguishing material or technology, and their base form. For example: "Perfector Mk IV Suppressed Rifle" (manufacturer + generation + trait + form), "Midnight Nanoplate Bodysuit" (brand + material + form), or "Silvered Dragon Guard Longsword" (treatment + manufacturer + form). Unique and legendary items often have a single proper name: "Hoarfrost," "Silence," "Kazykly."

==== Worked Examples

*Old War Longsword* (T0 Medium Sword) \
Base: T0 Medium One-handed Sword --- 4+D4 damage, 0 Pen, 1 Bulk, Inc 3. \
Modifications: None. \
Cost: Free. \
_Standard-issue swords from before the cataclysm. Found everywhere, maintained by nobody._

*Lantern Force Sword* (T1 Light Sword, Force) \
Base: T1 Light One-handed Sword --- 4+D8 damage, 0 Pen, ½ Bulk, Inc 3. \
Technology: Force --- adds Pen 2 (tier × 2), Rending damage. +50% base price. \
Cost: #feathers 375. \
Final: 4+D8 damage, *2 Pen*, ½ Bulk, Inc 3. Force, Rending. \
_An energy-edged blade manufactured by the Lantern foundries. Light enough to pair with a catalyst._

*Nanoplate Midnight Bodysuit* (T2 Close-fit, Nanoplate) \
Base: T2 Close-fit --- Armor 5, Ward 4, Eva +1, Bulk 1, Charge 0. \
Material: Nanoplate --- Impact resistance 4 (2 × tier). No cost increase for standard material. \
Cost: #feathers 600. \
Final: Armor 5, Ward 4, Eva +1, Bulk 1, Charge 0. *Impact Resistance 4.* \
_A stealth operative's suit with impact-dispersing nanoscales woven into the synfiber._

*Cerafiber Flak Vest, Deflecting* (T3 Plating, Cerafiber + Deflecting enchantment) \
Base: T3 Plating --- Armor 10, Ward 2, Eva -1, Bulk 2½, Charge 0. \
Material: Cerafiber --- Armor reduced by 3 (1 × tier), Rending resistance 12 (4 × tier). +25% base price. \
Enchantment: Deflecting --- light cover vs area spells. Enchantment cost ~#feathers 1500. \
Cost: #feathers 1875 (base) + #feathers 1500 (enchantment) = #feathers 3375. \
Final: *Armor 7*, Ward 2, Eva -1, Bulk 2½, Charge 0. *Rending Resistance 12.* Deflecting. \
_A fibrous vest that frays to stop bullets, magically treated to scatter area spells. Built for soldiers expecting both conventional and magical fire._

*Silvered Dragon Guard Longsword, Moontouched* (T2 Medium Sword, Silvered + Moontouched) \
Base: T2 Medium One-handed Sword --- 9+D8 damage, 0 Pen, 1 Bulk, Inc 5. \
Treatment: Silvered --- bonus damage vs undead (50% base), bypasses undead resistance. Cost: #feathers 400 (200 × tier). \
Enchantment: Moontouched --- halo on hit (+2 to attacks vs target, cancels invisibility). Cost: ~#feathers 2000. \
Cost: #feathers 750 (base) + #feathers 400 + #feathers 2000 = #feathers 3150. \
Final: 9+D8 damage, 0 Pen, 1 Bulk, Inc 5. Silvered, Moontouched. \
_A Dragon Guard officer's blade treated with alchemical silver and blessed with moonlight. Standard issue for undead operations._

*Masterwork +1 Specialized Polybind Staff* (T4 Medium Arcane Catalyst, Specialized + Resonating) \
Base: T4 Medium Catalyst --- 15+D10 damage, Inc 13, +4 Casting, 1 Bulk, 3½ Charge, 1 Hand. \
Enchantment 1: Specialized (Ice) --- general casting reduced to +3, Ice casting increased to +7. \
Enchantment 2: Resonating --- casting bonus increases by +1 per spell per turn (max +6/+10). \
Masterwork +1: +1d to attack rolls. +50% base price. \
Cost: #feathers 9000 (base + MW) + ~#feathers 4000 (two enchantments) = #feathers 13000. \
Final: 15+D10 damage, Inc 13, *+3 Casting (+7 Ice)*, 1 Bulk, 3½ Charge. MW+1, Resonating. \
_An artisan-crafted staff of polybind crystal, attuned to ice magic and responsive to rapid casting. A dedicated cryomancer's implement._

=== Combination Rules

- *Armor:* one material (optional) + one technology (optional) + up to two enchantments.
- *Weapons:* one technology (optional) + one treatment (optional) + up to two enchantments.
- *Catalysts:* Specialized trait (optional, counts as one enchantment) + up to two enchantments.
- *Reliquaries:* Not subject to modification. Their properties are intrinsic to the divine remnant.

A material and a treatment are always compatible. A technology and a treatment are always compatible. Two enchantments are always compatible unless their descriptions say otherwise.

=== Pricing Guidelines

The cost of a finished item is the sum of its base cost and the costs of its modifications:

*Base item cost by tier:*
- *Tier 0:* Free (starting gear, Old War surplus).
- *Tier 1:* 200--500 feathers.
- *Tier 2:* 600--1,500 feathers.
- *Tier 3:* 1,500--3,500 feathers.
- *Tier 4:* 4,000--8,000 feathers.
- *Tier 5:* 8,000--15,000 feathers (masterwork required).
- *Tier 6:* Unique. Cannot be purchased; must be found, earned, or crafted from legendary materials.

Within each tier, heavier and more complex items cost more. A T2 Heavy railgun (3,000 feathers) costs more than a T2 Light plasma pistol (800 feathers).

*Modification costs:*
- *Standard material variant* (Carbon Weave, Nanoplate, Ceramic Composite, Ablative, Insulated, Thermostatic): included in the base item price. Choosing a standard material does not increase cost.
- *Tradeoff material* (Cerafiber, Reactive): +25% of base price. These require specialized construction.
- *Rare material* (Crystplate): +100% of base price, if available at all. Crystplate items are not sold on the open market; they must be salvaged or commissioned from a specialist.
- *Treatment* (Silvered, etc.): approximately 200 × the item's tier in feathers. Treatments can be applied after purchase.
- *Technology* (Force): +50% of base price. (Chain): +25%. (Power Field): +100%, and only available at T3+.
- *Enchantment:* 500--2,000 × the item's tier in feathers, depending on the enchantment's power and rarity. Requires a ritual or recipe (see Skills chapter).
- *Masterwork:* +50% of base price for +1, +100% for +2. Requires a Shop check at difficulty 9+.

These are guidelines, not fixed prices. The GM should adjust based on availability, the local economy, and the story.

=== Tier Appropriateness

Not every modification is available at every tier. The following guidelines help the GM determine what is reasonable:

- *T0:* No modifications. Old War gear is what it is.
- *T1:* Standard materials. Simple treatments (Silvered). Basic technologies (Force, Chain). No enchantments --- the item is not sophisticated enough to hold one.
- *T2:* All standard materials. All treatments. All technologies. First enchantment slot becomes available. Plasma, Cold, Arc, and Magnetic weapons first appear.
- *T3:* Crystplate first becomes available (rare). Power Field technology becomes available (rare). Two enchantment slots available.
- *T4:* All modifications available. Generic items cap at T4 without masterwork quality.
- *T5--T6:* Masterwork required. Rare materials and powerful enchantments are expected at this tier. T6 items are unique by definition.

#set page(
  columns: 1
)
== Equipment Tables

=== Melee Weapons by Type

All melee weapons deal *Rending* damage unless otherwise noted. Blunt weapons deal *Impact* damage instead. See _Melee Weapon Types_ and _Equipment Modifications_ for descriptions of weapon types and technologies.

==== Daggers and Knives

#pftab(
  "Base Daggers and Knives — Light, 1 Hand, Sidearm",
  columns: (1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [0], [—], [2+D6], [0], [½], [2],
  [1], [_#feathers 200_], [5+D6], [0], [½], [3],
  [2], [_#feathers 500_], [7+D6], [0], [½], [4],
  [3], [_#feathers 1500_], [9+D8], [0], [½], [7],
  [4], [_#feathers 4000_], [11+D8], [0], [½], [11],
  [5], [_#feathers 8000_], [13+D10], [0], [½], [14],
  [6], [_#feathers 12000_], [16+D10], [0], [½], [17],
)

==== One-handed Swords

#pftab(
  "Base One-handed Swords — 1 Hand",
  columns: (1fr, 1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  breakable: true,
  [*Tier*], [*Wt*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [0], [M], [—], [4+D4], [0], [1], [3],
  [1], [L], [_#feathers 250_], [4+D8], [0], [½], [3],
  [1], [M], [_#feathers 350_], [6+D6], [0], [1], [4],
  [2], [L], [_#feathers 500_], [7+D8], [0], [½], [4],
  [2], [M], [_#feathers 750_], [9+D8], [0], [1], [5],
  [3], [L], [_#feathers 1800_], [9+D10], [0], [1], [8],
  [3], [M], [_#feathers 2500_], [11+2D8], [0], [2], [9],
  [4], [L], [_#feathers 4000_], [11+D10], [0], [1], [11],
  [4], [M], [_#feathers 5500_], [14+D10], [0], [2], [12],
  [5], [L], [_#feathers 8000_], [14+D12], [0], [1], [15],
  [5], [M], [_#feathers 10000_], [16+D12], [0], [2], [15],
  [6], [L], [_#feathers 12000_], [16+2D8], [0], [1], [17],
  [6], [M], [_#feathers 16000_], [18+2D8], [0], [2], [17],
)

==== Two-handed Blades

#pftab(
  "Base Two-handed Blades — Heavy, 2 Hands",
  columns: (1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [0], [—], [4+D6], [0], [2], [4],
  [1], [_#feathers 500_], [7+D8], [0], [2], [5],
  [2], [_#feathers 1200_], [10+D10], [0], [2], [7],
  [3], [_#feathers 2500_], [13+2D8], [0], [3], [9],
  [4], [_#feathers 6000_], [16+D12], [0], [3], [12],
  [5], [_#feathers 12000_], [20+D12], [0], [3], [15],
  [6], [_#feathers 20000_], [24+2D10], [0], [3], [18],
)

==== Blunt Weapons

#pftab(
  "Base Blunt Weapons — Heavy, 2 Hands, Impact damage",
  columns: (1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [0], [—], [6+D3], [0], [2], [4],
  [1], [_#feathers 500_], [8+D6], [0], [2], [5],
  [2], [_#feathers 800_], [10+D6], [0], [2], [6],
  [3], [_#feathers 2000_], [14+D8], [0], [3], [8],
  [4], [_#feathers 5500_], [17+D10], [0], [3], [12],
  [5], [_#feathers 11000_], [20+D12], [0], [3½], [16],
  [6], [_#feathers 20000_], [24+2D8], [0], [4], [18],
)

One-handed blunt weapons (maces, disruption hammers) are Medium weight, 1 hand, and use the damage of the next lower tier's two-handed variant as a guideline.

==== Polearms

#pftab(
  "Base Polearms — 2 Hands, Reach 2",
  columns: (1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [0], [—], [5+D3], [0], [2 (M)], [3],
  [1], [_#feathers 350_], [7+D6], [0], [2 (M)], [4],
  [2], [_#feathers 900_], [10+D8], [0], [2½ (H)], [6],
  [3], [_#feathers 2200_], [13+D10], [0], [3 (H)], [8],
  [4], [_#feathers 5500_], [16+D10], [0], [3 (H)], [12],
  [5], [_#feathers 11000_], [20+D12], [0], [3 (H)], [15],
  [6], [_#feathers 18000_], [25+2D10], [0], [3 (H)], [18],
)

==== Gauntlets

#pftab(
  "Base Gauntlets — Light, 1 Hand",
  columns: (1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [0], [—], [2+D4], [0], [¼], [2],
  [1], [_#feathers 200_], [4+D6], [0], [¼], [3],
  [2], [_#feathers 600_], [7+D6], [0], [½], [5],
  [3], [_#feathers 1500_], [9+D8], [0], [½], [7],
  [4], [_#feathers 4000_], [11+D8], [0], [½], [10],
  [5], [_#feathers 8000_], [13+D10], [0], [½], [13],
  [6], [_#feathers 12000_], [16+D10], [0], [½], [16],
)

=== Ranged Weapons by Type

See _Ranged Weapon Types_ for descriptions of each weapon technology.

==== Conventional Firearms

Form factors:

- *Pistol:* Light, 1 hand, Short--Medium range, Single shot, Sidearm.
- *Rifle:* Medium, 2 hands, Long--Very Long range, Single or Semi-Auto (SA 3).
- *Heavy:* Heavy, 2 hands, Very Long range, Single shot, Heavy keyword.

#pftab(
  "Base Conventional Firearms — Rending damage",
  columns: (1fr, 1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  breakable: true,
  [*Form*], [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [Pistol], [0], [—], [1+D4], [0], [½], [2],
  [Rifle], [0], [—], [3+D3], [0], [1], [3],
  [Pistol], [1], [_#feathers 200_], [7+D4], [0], [½], [3],
  [Rifle], [1], [_#feathers 350_], [6+D8], [0], [1], [4],
  [Heavy], [1], [_#feathers 450_], [11+D3], [0], [2], [5],
  [Pistol], [2], [_#feathers 600_], [11+D6], [0], [1], [5],
  [Rifle], [2], [_#feathers 1000_], [15+D6], [0], [1], [5],
  [Heavy], [2], [_#feathers 1500_], [20+D6], [0], [3], [5],
  [Pistol], [3], [_#feathers 1800_], [11+D6], [0], [1], [6],
  [Rifle], [3], [_#feathers 2500_], [14+D8], [0], [2], [7],
  [Heavy], [3], [_#feathers 3000_], [18+D8], [0], [3], [8],
  [Pistol], [4], [_#feathers 4500_], [13+D8], [0], [1], [9],
  [Rifle], [4], [_#feathers 5500_], [17+D10], [0], [2], [10],
  [Heavy], [4], [_#feathers 7000_], [22+D10], [0], [3], [11],
  [Pistol], [5], [_#feathers 9000_], [15+D10], [0], [1], [13],
  [Rifle], [5], [_#feathers 11000_], [20+D10], [0], [2], [14],
  [Heavy], [5], [_#feathers 13000_], [26+D12], [0], [3], [15],
  [Pistol], [6], [_#feathers 14000_], [18+D12], [0], [1], [17],
  [Rifle], [6], [_#feathers 18000_], [23+D12], [0], [2], [18],
  [Heavy], [6], [_#feathers 22000_], [30+D12], [0], [4], [18],
)

==== Plasma Weapons

Form factors:

- *Pistol:* Light, 1 hand, Short range, Single shot.
- *Rifle:* Medium, 2 hands, Medium range, Semi-Auto (SA 3).
- *Caster:* Medium, 2 hands, Cone area, Single shot.
- *Lance:* Heavy, 2 hands, Line area, Single shot, Heavy keyword.

#pftab(
  "Base Plasma Weapons — Thermal damage, Burning",
  columns: (1fr, 1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  breakable: true,
  [*Form*], [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [Pistol], [2], [_#feathers 800_], [5+D8], [8], [1], [5],
  [Rifle], [2], [_#feathers 1200_], [5+D8], [8], [1], [5],
  [Caster], [3], [_#feathers 3000_], [6+D10], [12], [2], [7],
  [Lance], [3], [_#feathers 3500_], [8+D12], [16], [3], [8],
  [Pistol], [4], [_#feathers 6000_], [7+D12], [14], [1], [9],
  [Rifle], [4], [_#feathers 7000_], [8+D12], [15], [2], [10],
  [Heavy], [4], [_#feathers 8000_], [9+2D10], [18], [4], [11],
  [Caster], [5], [_#feathers 10000_], [7+2D12], [16], [3], [13],
  [Lance], [5], [_#feathers 12000_], [9+2D10], [18], [4], [14],
  [Pistol], [6], [_#feathers 18000_], [10+2D12], [22], [2], [17],
  [Rifle], [6], [_#feathers 22000_], [12+2D12], [24], [2], [18],
  [Heavy], [6], [_#feathers 28000_], [17+3D10], [34], [5], [18],
)

==== Jet Weapons

Form factors:

- *Jet Pistol:* Light, 1 hand, Short--Long range, Full Auto (FA 3--4).
- *Jetgun:* Medium--Heavy, 2 hands, Medium range, Full Auto (FA 3--4). Heavy variants require bracing.

#pftab(
  "Base Jet Weapons — Rending damage, Full Auto",
  columns: (1fr, 1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  breakable: true,
  [*Form*], [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [Jetgun], [1], [_#feathers 500_], [8+D8], [0], [3 (H)], [5],
  [Pistol], [2], [_#feathers 700_], [6+D10], [0], [½], [6],
  [Jetgun], [2], [_#feathers 1000_], [9+D10], [0], [2], [6],
  [Pistol], [3], [_#feathers 2200_], [7+D12], [0], [½], [8],
  [Jetgun], [3], [_#feathers 2800_], [12+D12], [0], [2½], [7],
  [Pistol], [4], [_#feathers 5400_], [8+2D8], [0], [½], [9],
  [Jetgun], [4], [_#feathers 6000_], [12+2D10], [0], [2], [10],
  [Pistol], [5], [_#feathers 9000_], [10+2D10], [0], [1], [13],
  [Jetgun], [5], [_#feathers 11000_], [15+2D10], [0], [2½], [14],
  [Pistol], [6], [_#feathers 14000_], [13+2D10], [0], [1], [17],
  [Jetgun], [6], [_#feathers 18000_], [18+2D12], [0], [3], [18],
)

==== Magnetic Weapons

Form factors:

- *Magnetic Rifle:* Medium, 2 hands, Long range, Single or Full Auto (FA 3). Reliable.
- *Railgun:* Heavy, 2 hands, Very Long range, Single shot, Heavy keyword. Reliable.

#pftab(
  "Base Magnetic Weapons — Impact damage, Reliable",
  columns: (1fr, 1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  breakable: true,
  [*Form*], [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [Railgun], [2], [_#feathers 1200_], [9+2D8], [0], [3], [8],
  [Rifle], [3], [_#feathers 2000_], [12+D10], [0], [1], [9],
  [Railgun], [3], [_#feathers 2500_], [18+D10], [5], [3], [9],
  [Rifle], [4], [_#feathers 5400_], [15+D8], [5], [1], [10],
  [Railgun], [4], [_#feathers 6000_], [25+D10], [5], [3], [11],
  [Rifle], [5], [_#feathers 10000_], [18+D12], [5], [2], [14],
  [Railgun], [5], [_#feathers 12000_], [28+D12], [8], [3½], [15],
  [Rifle], [6], [_#feathers 20000_], [22+D12], [8], [2], [18],
  [Railgun], [6], [_#feathers 25000_], [32+2D8], [10], [4], [18],
)

==== Flame Weapons

Form factors:

- *Flame Pistol:* Light, 1 hand, Short range, Single shot.
- *Flamethrower:* Medium, 1 hand, Cone area, Single shot.

#pftab(
  "Base Flame Weapons — Thermal damage, Burning",
  columns: (1fr, 1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  breakable: true,
  [*Form*], [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [Pistol], [2], [_#feathers 600_], [8+D4], [0], [½], [5],
  [Thrower], [2], [_#feathers 800_], [6+D8], [0], [1], [5],
  [Pistol], [3], [_#feathers 2000_], [11+D4], [0], [1], [6],
  [Thrower], [3], [_#feathers 2500_], [9+2D8], [0], [1], [7],
  [Pistol], [4], [_#feathers 5000_], [14+D6], [0], [1], [9],
  [Thrower], [4], [_#feathers 6000_], [11+2D10], [0], [1½], [10],
  [Pistol], [5], [_#feathers 9000_], [17+D8], [0], [1], [13],
  [Thrower], [5], [_#feathers 11000_], [14+2D10], [0], [2], [14],
  [Pistol], [6], [_#feathers 14000_], [20+D10], [0], [1], [17],
  [Thrower], [6], [_#feathers 18000_], [17+2D12], [0], [2], [18],
)

==== Cold Weapons

Form factors:

- *Cryo Pistol:* Light, 1 hand, Short range, Single shot.
- *Cryo Rifle:* Medium, 2 hands, Medium range, Single or Semi-Auto (SA 3).
- *Cryo Cannon:* Heavy, 2 hands, Cone area, Single shot, Heavy keyword.

#pftab(
  "Base Cold Weapons — Cold damage, Freezing",
  columns: (1fr, 1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  breakable: true,
  [*Form*], [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [Pistol], [2], [_#feathers 900_], [7+D8], [4], [½], [5],
  [Rifle], [2], [_#feathers 1300_], [7+D8], [4], [1], [5],
  [Pistol], [3], [_#feathers 2500_], [10+D10], [6], [1], [7],
  [Rifle], [3], [_#feathers 3000_], [10+D10], [6], [1½], [7],
  [Cannon], [3], [_#feathers 3500_], [8+D10], [6], [2½], [8],
  [Pistol], [4], [_#feathers 6500_], [12+D12], [8], [1], [9],
  [Rifle], [4], [_#feathers 7500_], [12+D12], [8], [2], [10],
  [Cannon], [4], [_#feathers 8000_], [10+D12], [8], [3], [11],
  [Pistol], [5], [_#feathers 11000_], [15+D12], [10], [1], [13],
  [Rifle], [5], [_#feathers 13000_], [15+D12], [10], [2], [14],
  [Cannon], [5], [_#feathers 14000_], [13+D12], [10], [3½], [15],
  [Pistol], [6], [_#feathers 18000_], [18+2D8], [12], [1], [17],
  [Rifle], [6], [_#feathers 22000_], [18+2D8], [12], [2], [18],
  [Cannon], [6], [_#feathers 26000_], [15+2D8], [12], [4], [18],
)

==== Arc Weapons

Form factors:

- *Arc Pistol:* Light, 1 hand, Short range, Single shot.
- *Arc Rifle:* Medium, 2 hands, Medium range, Semi-Auto (SA 3).
- *Arc Projector:* Heavy, 2 hands, Cone area, Single shot, Heavy keyword.

#pftab(
  "Base Arc Weapons — Electric damage, Chaining, Disrupting",
  columns: (1fr, 1fr, 1fr, 2fr, 1fr, 1fr, 1fr),
  breakable: true,
  [*Form*], [*Tier*], [*Price*], [*Damage*], [*Pen*], [*Bulk*], [*Inc*],
  [Pistol], [2], [_#feathers 800_], [8+D8], [0], [½], [6],
  [Rifle], [2], [_#feathers 1100_], [8+D8], [0], [1], [6],
  [Pistol], [3], [_#feathers 2200_], [11+D10], [0], [1], [8],
  [Rifle], [3], [_#feathers 2800_], [11+D10], [0], [1½], [8],
  [Projector], [3], [_#feathers 3000_], [9+D10], [0], [2½], [8],
  [Pistol], [4], [_#feathers 5500_], [14+D10], [0], [1], [10],
  [Rifle], [4], [_#feathers 6500_], [14+D10], [0], [2], [10],
  [Projector], [4], [_#feathers 7000_], [11+D12], [0], [3], [11],
  [Pistol], [5], [_#feathers 10000_], [17+D12], [0], [1], [14],
  [Rifle], [5], [_#feathers 12000_], [17+D12], [0], [2], [14],
  [Projector], [5], [_#feathers 13000_], [14+D12], [0], [3½], [15],
  [Pistol], [6], [_#feathers 16000_], [21+D12], [0], [1], [17],
  [Rifle], [6], [_#feathers 20000_], [21+D12], [0], [2], [18],
  [Projector], [6], [_#feathers 24000_], [17+2D8], [0], [4], [18],
)

The following tables show base armor stats organized by profile (see _Armor Layering_ above). A character may wear one piece in each of the C, P, and O slots. Full-body armor (C+P) occupies both the close-fit and plating slots and comes in medium and heavy variants.

#pftab(
  "Base Armor — Close-fit (C)",
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  [*Tier*], [*Price*], [*Armor*], [*Ward*], [*Eva*], [*Bulk*], [*Charge*],
  [1], [_#feathers 250_], [3], [3], [+1], [1], [1],
  [2], [_#feathers 600_], [5], [4], [+1], [1], [0],
  [3], [_#feathers 2000_], [8], [5], [+1], [1], [1],
  [4], [_#feathers 5000_], [12], [8], [+2], [1], [1],
  [5], [_#feathers 10000_], [15], [9], [+2], [2], [2],
  [6], [_#feathers 14000_], [18], [10], [+3], [2], [3],
)

#pftab(
  "Base Armor — Plating (P)",
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  [*Tier*], [*Price*], [*Armor*], [*Ward*], [*Eva*], [*Bulk*], [*Charge*],
  [2], [_#feathers 500_], [6], [1], [-2], [2], [0],
  [3], [_#feathers 1500_], [10], [2], [-1], [2½], [0],
  [4], [_#feathers 4500_], [16], [5], [-1], [3], [1],
  [5], [_#feathers 9000_], [20], [6], [-1], [3½], [1],
  [6], [_#feathers 12000_], [24], [8], [0], [4], [1],
)

#pftab(
  "Base Armor — Overgarment (O)",
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  [*Tier*], [*Price*], [*Armor*], [*Ward*], [*Eva*], [*Bulk*], [*Charge*],
  [1], [_#feathers 300_], [3], [6], [+1], [1], [2],
  [2], [_#feathers 1000_], [4], [8], [+1], [1], [3],
  [3], [_#feathers 2500_], [7], [10], [0], [2], [3],
  [4], [_#feathers 5000_], [9], [18], [0], [1], [4],
  [5], [_#feathers 10000_], [10], [12], [+1], [2], [3],
  [6], [_#feathers 16000_], [12], [22], [+2], [1], [4],
)

#pftab(
  "Base Armor — Full-body (C+P)",
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  breakable: true,
  [*Tier*], [*Wt*], [*Price*], [*Armor*], [*Ward*], [*Eva*], [*Bulk*], [*Charge*],
  [1], [H], [_#feathers 500_], [7], [5], [-2], [5], [2],
  [2], [M], [_#feathers 1200_], [8], [6], [0], [3½], [3],
  [2], [H], [_#feathers 1500_], [9], [10], [-2], [5], [3],
  [3], [M], [_#feathers 2500_], [12], [8], [-1], [4], [2],
  [3], [H], [_#feathers 3000_], [15], [10], [-4], [5], [1],
  [4], [M], [_#feathers 6000_], [18], [12], [-1], [4½], [2],
  [4], [H], [_#feathers 6500_], [25], [19], [-4], [5], [3],
  [5], [M], [_#feathers 12000_], [16], [10], [-1], [4], [2],
  [5], [H], [_#feathers 18000_], [24], [16], [-3], [6], [1],
  [6], [M], [_#feathers 20000_], [20], [14], [-1], [5], [2],
  [6], [H], [_#feathers 25000_], [30], [20], [-3], [6½], [2],
)

Named armor with special traits or unique properties is described in the _Item Descriptions_ section.

=== Shields

Shields provide additional protection beyond what armor alone offers. They
come in two forms: *physical shields* made of metal, composite, or
hardened material, and *shield generators* that project a localized arcane
ward field.

==== Physical Shields

Physical shields are held or strapped to an arm. They absorb incoming
damage directly, adding their Armor value to the wielder's total. A
physical shield occupies one hand unless it has the *Arm-Strapped* keyword,
in which case it is secured to the forearm and leaves the hand free (but
at reduced effectiveness, as noted in the item description).

Physical shields come in two sizes:

- *Small shields* (bucklers and parrying shields) are light and
  maneuverable. They grant *Parry +Nd* dice on defensive maneuver checks,
  making them ideal for characters who rely on active defense.
- *Large shields* (riot shields and tower shields) are too heavy and
  unwieldy to parry with. Instead, the wielder can spend 1 AP to *Brace
  Shield*: until the wielder moves, takes an action other than Command or
  Brace Shield, or is knocked prone, the wielder benefits from *light
  cover*. Large shields are the tool of choice for characters who need to
  hold a position under fire.

==== Shield Generators

A shield generator is a compact magitek device, typically strapped to the
forearm or mounted on armor, that projects a localized ward field. Shield
generators provide Ward rather than Armor, protecting against both physical
and magical damage. They consume Charge capacity and do not occupy a hand.

Shield generators are small enough to grant *Parry +Nd* dice, as the ward
field can be reflexively shaped to deflect incoming strikes. However, they
provide no benefit when unpowered (if total Charge exceeds the character's
capacity, the generator is dead weight).

==== Shield Stats

- *Armor* (physical) or *Ward* (generator): The defensive value provided.
- *Parry +Nd:* Bonus dice on defensive maneuver checks (small shields and
  generators only).
- *Brace:* The shield can be braced for light cover (large shields only).
- *Bulk:* Physical weight and encumbrance.
- *Charge:* Magical encumbrance (generators only).
- *Hands:* 1 if held, 0 if arm-strapped or a generator.

#pftab(
  "Shields",
  columns: (3fr, 1fr, 2fr, 1fr, 1fr, 2fr, 1fr, 1fr, 1fr, 2fr),
  breakable: true,
  align: (left, center, center, center, center, left, center, center, center, left),
  [*Name*], [*Tier*], [*Price*], [*Armor*], [*Ward*], [*Defense*], [*Bulk*], [*Charge*], [*Hands*], [*Special*],
  [Old War Buckler], [0], [_#feathers 0_], [2], [0], [Parry +2d], [½], [0], [1], [],
  [Lantern Riot Shield], [1], [_#feathers 250_], [4], [0], [Brace], [2], [0], [1], [],
  [Light Shield Generator], [1], [_#feathers 300_], [0], [3], [Parry +1d], [¼], [1], [0], [Arm-Strapped],
  [Dragon Guard Tower Shield], [2], [_#feathers 800_], [6], [0], [Brace], [3], [0], [1], [--1 Speed],
  [Combat Shield Generator], [2], [_#feathers 700_], [0], [5], [Parry +2d], [½], [2], [0], [Arm-Strapped],
  [Perfector Shield Generator], [3], [_#feathers 2000_], [0], [8], [Parry +3d], [½], [2], [0], [Arm-Strapped],
  [Breacher Shield], [3], [_#feathers 1800_], [5], [0], [Brace], [2], [0], [1], [Ram: 10+D10 on charge],
)

#pftab(
  "Base Catalyst Stats",
  columns: (1fr, 1fr, 1fr, 2fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  breakable: true,
  align: (center, center, center, center, center, center, center, center, center),
  [*Tier*], [*Class*], [*Price*], [*Damage*], [*Inc*], [*Casting*], [*Bulk*], [*Charge*], [*Hands*],
  [1], [Light], [_#feathers 250_], [3+D6], [5], [+0], [0], [2], [0],
  [1], [Medium], [_#feathers 350_], [7+D6], [8], [+1], [½], [2], [1],
  [1], [Heavy], [_#feathers 500_], [10+D8], [11], [+2], [1½], [3], [2],
  [2], [Light], [_#feathers 600_], [5+D8], [7], [+1], [0], [2], [0],
  [2], [Medium], [_#feathers 850_], [9+D8], [9], [+2], [½], [3], [1],
  [2], [Heavy], [_#feathers 1200_], [14+D10], [13], [+3], [2], [4], [2],
  [3], [Light], [_#feathers 2000_], [7+D10], [10], [+2], [0], [2½], [0],
  [3], [Medium], [_#feathers 2600_], [12+D10], [11], [+3], [1], [3], [1],
  [3], [Heavy], [_#feathers 3000_], [18+D10], [15], [+4], [2½], [4], [2],
  [4], [Light], [_#feathers 4500_], [9+D10], [12], [+2], [0], [3], [0],
  [4], [Medium], [_#feathers 6000_], [15+D10], [13], [+4], [1], [3½], [1],
  [4], [Heavy], [_#feathers 7000_], [22+D12], [18], [+5], [3], [5], [2],
  [5], [Light], [_#feathers 9000_], [11+D12], [14], [+3], [0], [3½], [0],
  [5], [Medium], [_#feathers 11000_], [20+D12], [16], [+5], [1½], [4], [1],
  [5], [Heavy], [_#feathers 13000_], [28+D12], [21], [+7], [3½], [5½], [2],
  [6], [Light], [_#feathers 14000_], [14+2D8], [17], [+4], [0], [4], [0],
  [6], [Medium], [_#feathers 18000_], [25+2D8], [18], [+6], [2], [4½], [1],
  [6], [Heavy], [_#feathers 22000_], [35+2D10], [24], [+8], [4], [6], [2],
)

Common catalysts include Soul Crystals and Prana Crystals (Light, T1), Amber Rods and Blackbone Staves (Medium, Arcane), Angel Masks and Resonance Masks (Medium, Psychic), and the widely-traded Polybind Staff (Medium, T3). These are generic examples of their tier and class; named catalysts with special traits are listed in the _Item Descriptions_ section.

#pftab(
  "Reliquaries",
  columns: (3fr,1fr,2fr,1fr,1fr,1fr,2fr,1fr,1fr,3fr),
  breakable: true,
  align: (left, center, center, center, center, center, center, center, center, left),
  [*Name*], [*Tier*], [*Price*], [*Class*], [*Bulk*], [*Charge*], [*Damage*], [*Inc*], [*Will*], [*Aspects*],
  [The Princess' Locket], [1], [_#feathers 300_], [Light], [0], [2], [4+D6], [5], [3], [Mist, Key],
  [Battlefield Dust], [1], [_#feathers 300_], [Light], [0], [2], [3+D8], [5], [3], [Ash],
  [Khâru's Ember], [1], [_#feathers 250_], [Light], [0], [1], [4+D3], [5], [2], [Sun, Scarab],
  [Battlefield Relic], [2], [_#feathers 800_], [Light], [½], [2], [6+D8], [7], [4], [Ash, Crown],
  [Heartwood Icon], [2], [_#feathers 700_], [Light], [0], [3], [5+D6], [7], [3], [Maiden, Scarab],
  [Skull Fetish], [2], [_#feathers 900_], [Light], [0], [2], [7+D6], [7], [5], [Serpent],
  [Warden's Seal], [3], [_#feathers 2000_], [Medium], [½], [3], [9+D10], [9], [5], [Crown, Ash],
  [Void Lantern], [3], [_#feathers 2500_], [Medium], [½], [3], [8+D8], [9], [6], [Skull, Key],
  [Chalice of Renewal], [3], [_#feathers 2200_], [Medium], [1], [3], [10+D6], [9], [4], [Scarab, Maiden],
)

#pftab(
  "Consumables — Grenades",
  columns: (2fr,) + (1fr,) * 4 + (3fr, 1fr),
  breakable: true,
  align: (left, center, center, center, center, left, center),
  [*Name*], [*Tier*], [*Type*], [*Bulk*], [*Range*], [*Effect*], [*Cost*],
  [Acid Grenade], [0], [Grenade], [¼], [Burst 1/10], [4+D10 Acid damage], [_#feathers 100_],
  [Frag Grenade], [1], [Grenade], [¼], [Burst 1/10], [6+D3 damage, DC 2], [_#feathers 150_],
  [AP Grenade], [1], [Grenade], [½], [5], [8+D3 damage, Pen 3], [_#feathers 300_],
  [Flashbang Grenade], [2], [Grenade], [¼], [Burst 2/10], [Dazed + Blinded 1 round (D4 Stamina negates)], [_#feathers 300_],
  [Plasma Grenade], [3], [Grenade], [¼], [Burst 2/10], [12+D10 Thermal damage, Burning (save ends)], [_#feathers 600_],
  [EMP Grenade], [3], [Grenade], [¼], [Burst 3/10], [No damage; all magitek and shield generators in area shut down for 2 rounds. D6 Stamina negates for worn items.], [_#feathers 800_],
  [Mist Grenade], [4], [Grenade], [¼], [Burst 3/10], [Creates Dense Fog zone for 3 rounds. Creatures in zone at start of turn suffer Dense Fog exposure.], [_#feathers 1000_],
)

#pftab(
  "Consumables — Potions & Draughts",
  columns: (2fr,) + (1fr,) * 4 + (3fr, 1fr),
  breakable: true,
  align: (left, center, center, center, center, left, center),
  [*Name*], [*Tier*], [*Type*], [*Bulk*], [*Range*], [*Effect*], [*Cost*],
  [Red Healing Potion], [1], [Potion], [¼], [Self/Touch], [Recover 1D6+6 HP], [_#feathers 250_],
  [Ether Flask], [1], [Potion], [¼], [Self/Touch], [Recover 2D4+10 Focus], [_#feathers 250_],
  [Regeneration Draught], [2], [Potion], [¼], [Self/Touch], [Recover 2D4+4 HP per round for 3 rounds], [_#feathers 500_],
  [Potent Regeneration Draught], [2], [Potion], [¼], [Self/Touch], [Recover 2D6+8 HP per round for 3 rounds], [_#feathers 650_],
  [Potent Ether Flask], [2], [Potion], [¼], [Self/Touch], [Recover 2D6+18 Focus], [_#feathers 500_],
  [Vermillion Healing Potion], [3], [Potion], [¼], [Self/Touch], [Recover 2D8+16 HP], [_#feathers 700_],
  [Resistance Draught], [3], [Potion], [¼], [Self/Touch], [Gain resistance 5 to one damage type (chosen when brewed) for 1 encounter], [_#feathers 900_],
  [Superior Ether Flask], [4], [Potion], [¼], [Self/Touch], [Recover 4D6+30 Focus], [_#feathers 1000_],
  [Scarlet Healing Potion], [5], [Potion], [¼], [Self/Touch], [Recover 4D8+36 HP], [_#feathers 1200_],
  [Ether Concentrate], [6], [Potion], [¼], [Self/Touch], [Recover 5D10+40 Focus], [_#feathers 1800_],
)

#pftab(
  "Consumables — Special",
  columns: (2fr,) + (1fr,) * 4 + (3fr, 1fr),
  breakable: true,
  align: (left, center, center, center, center, left, center),
  [*Name*], [*Tier*], [*Type*], [*Bulk*], [*Range*], [*Effect*], [*Cost*],
  [Revitalization Charge], [0], [Special], [¼], [5 squares], [Revive a dead Immortal at full HP and Focus], [_#feathers 5000_],
  [Pure Land Water], [5], [Special], [¼], [Self/Touch], [Regain 5 EP], [_#feathers 12000_],
)

#pftab(
  "Reagents & Materials",
  columns: (2fr,1fr,1fr,3fr,1fr),
  breakable: true,
  align: (left, center, center, left, center),
  [*Name*], [*Tier*], [*Bulk*], [*Effect*], [*Cost*],
  [Alchemical Reagents (Common)], [2], [¼], [1 Magnitude for Ritual or Alchemy checks], [_#feathers 600_],
  [Alchemical Reagents (Rare)], [2], [¼], [3 Magnitude for Ritual or Alchemy checks], [_#feathers 2000_],
  [Alchemical Reagents (Precious)], [4], [¼], [6 Magnitude for Ritual or Alchemy checks], [_#feathers 4500_],
  [Prima Materia, Vial], [6], [¼], [Legendary crafting ingredient; glows with inner power], [—\*],
  [Materia Nigra, Vial], [6], [¼], [Corrupted Prima Materia; ingredient for some Legendary Rituals. Corrupts lesser rituals], [—\*],
  [Materia Rubrior, Vial], [6], [¼], [Realized Prima Materia; ingredient for some Legendary Rituals. Worth 20 Magnitude], [—\*],
)

_\*Prima Materia and its derivatives are extraordinarily rare and cannot ordinarily be purchased. They must be found, won, or created through Legendary Rituals._

#pftab(
  "General Equipment",
  columns: (2fr,1fr,1fr,5fr),
  breakable: true,
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
  [Binoculars], [½], [_#feathers 50_], [+2d to Awareness checks at long range],
  [Comm Unit], [¼], [_#feathers 100_], [Encrypted short-range communication (range: ~5 km)],
  [Lockpick Set], [¼], [_#feathers 75_], [Required to pick mechanical locks. +2d to Infiltration checks for locks],
  [Manacles], [½], [_#feathers 30_], [D6 Athletics to break free],
)

#pftab(
  "Exploration & Field Equipment",
  columns: (2fr,1fr,1fr,5fr),
  breakable: true,
  align: (left, center, center, left),
  [*Name*], [*Bulk*], [*Cost*], [*Effect*],
  [Tactical Flashlight], [¼], [_#feathers 30_], [Weapon-mountable. Bright light 10 squares. As 1 AP action, Dazzle an adjacent creature (D3 Stamina or Blinded 1 round)],
  [Fog-Shielded Lantern], [½], [_#feathers 150_], [Bright light 10 squares, dim light 20. Shielded emission does not attract Fog creatures],
  [IR Goggles], [¼], [_#feathers 300_], [See in darkness. Spot heat signatures. +2d to Awareness in low light or darkness. Charge: 1],
  [Combat Visor], [¼], [_#feathers 500_], [Heads-up display. Negates concealment penalties from smoke and dim light. +1d Marksmanship. Charge: 1],
  [Mist Filter], [¼], [_#feathers 200_], [Reduces Fog exposure severity by one step (Extreme → Dense, Dense → Light). Lasts 8 hours per filter cartridge],
  [Rebreather], [½], [_#feathers 400_], [Full respiratory protection. Negates Fog exposure effects and airborne poisons for 4 hours per canister],
  [Multi-Spectrum Sensor], [½], [_#feathers 350_], [Handheld scanner. Detects magical, thermal, and radiation signatures within 15 squares. +2d to Awareness for detection. Charge: 1],
  [Motion Sensor], [¼], [_#feathers 250_], [Deployable. Alerts to movement within 15 squares for 8 hours. Can be linked to a comm unit],
  [Signal Flare Kit (6)], [½], [_#feathers 50_], [Visible at extreme range. Can mark locations or signal allies. Burns for 1 minute],
  [Grapnel Launcher], [1], [_#feathers 200_], [Fires a grappling hook up to 20 squares. 1 AP to fire. Includes 50 ft integrated line],
  [Portable Fog Ward], [1], [_#feathers 800_], [Creates a 2-square safe zone where Fog exposure is suppressed for 8 hours. Charge: 3],
  [Advanced Comm Unit], [¼], [_#feathers 500_], [Encrypted long-range communication (~50 km). Fog-resistant signal. Charge: 1],
  [Breaching Charge], [½], [_#feathers 400_], [Destroys doors, walls, and barricades. 30+3D10 damage to structures; Burst 1 to creatures adjacent to the breach],
)

#set page(
  columns: 2
)

== Item Descriptions

#item-description(
  "The Princess' Locket",
  "Reliquary",
  1,
  keywords: "Mist, Key",
  flavor: "A tarnished silver locket on a fine chain, engraved with the sigil of the Midnight Princess --- a crescent moon wreathed in mist. Inside is a faded portrait of a young woman with dark eyes. The locket is cold to the touch, and those who hold it sometimes hear the faint sound of a door opening in a distant room.",
  price: "300",
  damage: "4+D6",
  bulk: "0",
  charge: "2",
  hands: "0",
  inc: "5",
  will: "3",
  aspects: "Mist, Key",
)[
  The Princess' Locket is a Light reliquary granting access to the Mist and Key aspects. Its combination of raw magical power and summoning makes it favored by mystics and occultists. Its low Will makes it forgiving for novice divine casters.
]

#item-description(
  "Battlefield Dust",
  "Reliquary",
  1,
  keywords: "Ash",
  flavor: "A small sealed vial of fine grey ash, collected from the site of a great battle of the Last War. The dust shifts restlessly inside its container, as though stirred by a wind that does not blow.",
  price: "300",
  damage: "3+D8",
  bulk: "0",
  charge: "2",
  hands: "0",
  inc: "5",
  will: "3",
  aspects: "Ash",
)[
  Battlefield Dust is a Light reliquary granting access to the Ash aspect. Battlefield Dust reliquaries are plentiful --- the Last War left no shortage of consecrated killing fields --- but their singular focus on destruction makes them the province of warrior-priests and zealots. The dust must be kept sealed; if the vial is broken, the reliquary loses its power.
]

#item-description(
  "Khâru's Ember",
  "Reliquary",
  1,
  keywords: "Sun, Scarab",
  flavor: "A chip of volcanic glass shot through with veins of molten gold, perpetually warm and faintly luminous. It is said to be a fragment of the sun god's forge, scattered when the divine fires went dark.",
  price: "250",
  damage: "4+D3",
  bulk: "0",
  charge: "1",
  hands: "0",
  inc: "5",
  will: "2",
  aspects: "Sun, Scarab",
)[
  Khâru's Ember is a Light reliquary granting access to the Sun and Scarab aspects. Its low Will of 2 makes it one of the most approachable reliquaries available, though its low Charge capacity limits the amount of magical equipment that can be carried alongside it. Prized by Falcon-Headed priests as a connection to their patron deity.
]

#item-description(
  "Battlefield Relic",
  "Reliquary",
  2,
  keywords: "Ash, Crown",
  flavor: "A battered officer's gorget pulled from the ruins of a Last War command post, still bearing the marks of the blast that killed its wearer. The metal hums faintly when gripped, carrying the echo of a final, defiant order.",
  price: "800",
  damage: "6+D8",
  bulk: "½",
  charge: "2",
  hands: "0",
  inc: "7",
  will: "4",
  aspects: "Ash, Crown",
)[
  The Battlefield Relic is a Light reliquary granting access to the Ash and Crown aspects. Its combination of destructive and protective divine power makes it well-suited to characters who serve as both warriors and defenders of their companions.
]

#item-description(
  "Heartwood Icon",
  "Reliquary",
  2,
  keywords: "Maiden, Scarab",
  flavor: "A palm-sized carving of a woman's face wreathed in leaves, shaped from the heartwood of a tree that grew in a sacred grove. Green shoots still sprout from the icon in spring, despite the wood having been cut centuries ago.",
  price: "700",
  damage: "5+D6",
  bulk: "0",
  charge: "3",
  hands: "0",
  inc: "7",
  will: "3",
  aspects: "Maiden, Scarab",
)[
  The Heartwood Icon is a Light reliquary granting access to the Maiden and Scarab aspects, making it a powerful healing implement that also grants dominion over nature. Its high Charge of 3 for a Light reliquary can strain the capacity of characters who carry other magical equipment.
]

#item-description(
  "Skull Fetish",
  "Reliquary",
  2,
  keywords: "Serpent",
  flavor: "A string of tiny animal skulls dipped in verdigris, each one carved with a coiling serpent. The fetish gives off a faint smell of venom and rot that never quite fades.",
  price: "900",
  damage: "7+D6",
  bulk: "0",
  charge: "2",
  hands: "0",
  inc: "7",
  will: "5",
  aspects: "Serpent",
)[
  The Skull Fetish is a Light reliquary granting access to the Serpent aspect. With a Will of 5 --- the highest of any Tier 2 reliquary --- it is difficult to attune and quick to punish those who displease it. Those who persevere gain access to prayers of poison and corruption. The Serpent aspect is a minor aspect of the Skull; wielders of the Skull Fetish also gain access to Skull prayers.
]

#item-description(
  "Warden's Seal",
  "Reliquary",
  3,
  keywords: "Crown, Ash",
  flavor: "A heavy disc of dark iron stamped with the sigil of a forgotten penal legion --- a crown of thorns above crossed swords. The metal is cold and unyielding, and those who grasp it hear, faintly, the sound of marching boots.",
  price: "2000",
  damage: "9+D10",
  bulk: "½",
  charge: "3",
  hands: "1",
  inc: "9",
  will: "5",
  aspects: "Crown, Ash",
)[
  The Warden's Seal is a Medium reliquary granting access to the Crown and Ash aspects up to Tier 3. Its high Will of 5 and significant damage output make it a demanding but powerful implement for divine casters who balance protection with righteous violence.
]

#item-description(
  "Void Lantern",
  "Reliquary",
  3,
  keywords: "Skull, Key",
  flavor: "A lantern of black iron and pale glass, inside which burns a flame that casts no light --- only a faint, unsettling warmth. Looking into the flame too long reveals shapes moving in the darkness: gates, keyholes, and the silhouettes of figures passing through.",
  price: "2500",
  damage: "8+D8",
  bulk: "½",
  charge: "3",
  hands: "1",
  inc: "9",
  will: "6",
  aspects: "Skull, Key",
)[
  The Void Lantern is a Medium reliquary granting access to the Skull and Key aspects up to Tier 3. With the highest Will of any non-legendary reliquary at 6, it is exceptionally difficult to attune. Its combination of death and summoning prayers makes it the preferred implement of spirit-binders and those who traffic with the dead.
]

#item-description(
  "Chalice of Renewal",
  "Reliquary",
  3,
  keywords: "Scarab, Maiden",
  flavor: "A shallow bronze cup etched with spiraling vines and scarab beetles, perpetually beaded with moisture. Water poured into the chalice tastes faintly of honey and wildflowers, no matter its source.",
  price: "2200",
  damage: "10+D6",
  bulk: "1",
  charge: "3",
  hands: "1",
  inc: "9",
  will: "4",
  aspects: "Scarab, Maiden",
)[
  The Chalice of Renewal is a Medium reliquary granting access to the Scarab and Maiden aspects up to Tier 3. Its combination of healing and nature prayers makes it the premier support reliquary, though its Bulk of 1 and Charge of 3 demand investment in carrying capacity. Its comparatively low Will of 4 makes it more forgiving than other Tier 3 reliquaries.
]

#item-description(
  "Power Field Parry Dagger",
  "Dagger",
  4,
  keywords: "Powered",
  price: "6500",
  damage: "6+D10",
  pen: "12",
  bulk: "1",
  charge: "1",
  hands: "1",
  inc: "11",
)[
  This dagger grants a +4 equipment bonus to parry checks.
]

#item-description(
  "Memento Mori",
  "Psychic Catalyst",
  4,
  keywords: "Time, Fate",
  flavor: "An amulet carved in the form of a miniature human skull. The Dark-Elven inscription reads 'Remember thou, o mage, that one day thou, too, shalt face oblivion'.",
  price: "6000",
  damage: "8+2D8",
  bulk: "0",
  charge: "2",
  hands: "0",
  inc: "11",
  casting: "+2/+5",
)[
  The Memento Mori grants its wielder a +2 equipment bonus to manifesting Psychic powers. The bonus increases to +5 for Time and Fate powers.
]

#item-description(
  "Hoarfrost",
  "Medium Sword",
  5,
  keywords: "Cold",
  flavor: "A longsword of pale blue steel, rimed with frost that never melts.",
  price: "15000",
  damage: "7+D12",
  pen: "0",
  bulk: "2",
  charge: "2",
  hands: "1",
  inc: "14",
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
  price: "18000",
  damage: "15+D10",
  pen: "15",
  bulk: "1",
  charge: "2",
  hands: "1",
  inc: "15",
)[
  The Void Blade is a +1 Masterwork Spacerender Souldrinker Katana. It has the following traits:

  *Spacerender:* The Void Blade has a reach of 2.

  *Soul Drain:* A target hit by the Void Blade must make a D6 Potential save. On failure, the target loses 1 EP and 15+D10 Focus.

  *Nowhere Edge:* _(Legendary.)_ The wielder of this katana gains access to the Wounds from Nowhere legendary power.
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
  "Poynting Rad-Fleche",
  "Masterwork Pistol",
  5,
  keywords: "Radiation, Poison, Sidearm",
  flavor: "A heavy pistol chambered for depleted uranium flechettes. The weapon is warm to the touch and faintly hums when loaded.",
  price: "13000",
  damage: "5+2D10",
  pen: "12",
  bulk: "1",
  charge: "1",
  hands: "1",
  inc: "13",
  range: "Short",
  fm: "SA 3",
)[
  The Poynting Rad-Fleche is a +1 Masterwork conventional pistol. It has the following traits:

  *DU Fleche-Rounds:* The heavy metal flechettes fired by this weapon have a tendency to burst into flame. When this weapon strikes a target whose Armor value exceeds the weapon's Penetration, the weapon deals an additional 5+2D10 Thermal damage.

  *Toxic Rounds:* The flechettes fired by this gun are both radioactive and highly toxic. A target hit by this weapon must make a D7 Stamina save; on failure, it is Weakened (8) and takes 15 Chemical damage per round (save ends both).
]

#item-description(
  "Caesium Rod",
  "Psychic Catalyst",
  5,
  keywords: "Time",
  flavor: "A rod of radioactive caesium, encased in a protective sheet of rune-etched lead glass. The resonance of the metal core enhances this catalyst's power in manifesting Time powers.",
  price: "14000",
  damage: "23+D10",
  bulk: "2",
  charge: "3",
  hands: "1",
  inc: "16",
  casting: "+3/+6",
)[
  *Resonant Frequency:* This rod grants the wielder a +3 equipment bonus to manifesting Psychic powers, increasing to +6 for Time powers.
]

#item-description(
  "Kazykly",
  "Legendary Spear",
  6,
  keywords: "Blood, Shadow, Two-handed, Reach",
  price: "30000",
  damage: "29+2D12",
  pen: "0",
  bulk: "3",
  charge: "3",
  hands: "2",
  inc: "18",
)[
  Kazykly is a Legendary +2 Masterwork Cursebringer Bloodthirst Lance. It has the following traits:

  *Bloodthirst:* The weapon hungers for the blood of its foes. If Kazykly successfully deals damage to a living target, the wielder gains a +2 bonus to the next attack with the weapon.

  *Cursebringer:* The weapon brings doom to anything it strikes. If Kazykly successfully deals damage to a target, the target must make a D7 Potential save. On failure, it takes a -2 curse penalty to all of its rolls (save ends).

  *Reach:* This weapon has a range of 3, but it cannot strike directly adjacent targets.

  *The Lord Impaler:* _(Legendary.)_ Kazykly grants its wielder the Forest of Corpses unique power.
]

#item-description(
  "Moonlight Shortsword",
  "Masterwork Shortsword",
  6,
  keywords: "Moonlight",
  price: "18000",
  damage: "18+2D8",
  pen: "9",
  bulk: "2",
  charge: "2",
  hands: "1",
  inc: "16",
)[
  The Moonlight Shortsword is a +2 Masterwork Moontouched Bloodthirst Shortsword. It has the following traits:

  *Moontouched:* A target hit by this sword is surrounded by a halo of moonlight that makes it easier to hit. Any attacks against the afflicted target gain a +2 bonus until the end of the wielder's next turn; additionally, the halo cancels the effects of invisibility for this duration.

  *Bloodthirst:* The weapon hungers for the blood of its foes. If this sword successfully deals damage to a living target, the wielder gains a +2 bonus to the next attack with the weapon.
]

#item-description(
  "Silence",
  "Legendary Sniper Rifle",
  6,
  keywords: "Blood, Moonlight",
  flavor: "On the field where bloody battle had raged, there reigned a great silence.",
  price: "35000",
  damage: "35+2D6",
  pen: "5",
  bulk: "2",
  charge: "4",
  hands: "2",
  inc: "18",
  range: "Very Long",
  fm: "S",
)[
  Silence is a Legendary +2 Masterwork Moontouched Bloodthirst Sniper Rifle. It has the following traits:

  *Moontouched:* A target hit by a shot from Silence is surrounded by a halo of moonlight that makes it easier to hit. Any attacks against the afflicted target gain a +2 bonus until the end of the wielder's next turn; additionally, the halo cancels the effects of invisibility for this duration.

  *Bloodthirst:* If Silence successfully deals damage to a living target, the wielder gains a +2 bonus to the next attack with the weapon.

  *Piercing Silence:* _(Legendary.)_ Shots from this weapon are magically silenced and cannot be detected by auditory means outside of a radius of 5 meters from the weapon itself. Additionally, a target struck by Silence must make a D6 Potential check or be silenced (save ends). A target killed by a shot from Silence fails this check automatically.
]

#item-description(
  "Moonlight Railgun",
  "Masterwork Sniper Rifle",
  6,
  keywords: "Blood, Moonlight",
  price: "25000",
  damage: "14+2D12",
  pen: "28",
  bulk: "2",
  charge: "1",
  hands: "2",
  inc: "18",
  range: "Very Long",
  fm: "S",
)[
  The Moonlight Railgun is a +2 Masterwork Moontouched Bloodthirst Sniper Rifle. It shares the Moontouched and Bloodthirst traits with its legendary counterpart Silence.
]

#item-description(
  "Coldlight Robes",
  "Masterwork Light Armor",
  6,
  keywords: "Robe, Ice, Light",
  flavor: "The priests of Iyalan specialized in spinning the silver light of the moon into magical threads, cold to the touch as silver, yet sheer as silk.",
  price: "25000",
  armor: "10",
  ward: "25",
  evasion: "+2",
  bulk: "1",
  charge: "4",
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
  price: "28000",
  armor: "18",
  ward: "10",
  evasion: "+3",
  bulk: "2",
  charge: "3",
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
  price: "30000",
  armor: "15",
  ward: "15",
  evasion: "+3",
  bulk: "1",
  charge: "3",
)[
  *Shadowscale:* The scales attenuate the presence of the wearer. The wearer gains a +5d bonus to subterfuge checks made to avoid detection by any senses, including supernatural ones. Its Evasion bonus increases to +5 in low light or darkness.

  *Keratin Point:* The scales are artfully arranged to present very few flat surfaces, deflecting a great proportion of incoming thrusts. The wearer gains cover against attacks dealing piercing damage.

  *Slough Off:* _(Legendary.)_ When damaged, the armor can expel a thin layer of skin, like the moult of a snake. Once per round, when hit by an attack, a wearer possessing the Fey Jaunt ability can use it to escape the attack, leaving behind a husk of sloughed-off skin. The attack affects the husk instead.
]

#item-description(
  "Moonray",
  "Legendary Staff",
  6,
  keywords: "Arcane, Cold, Moonlight",
  flavor: "Legendary staff of Iyalan, cast from millions of strands of solid moonlight. The staff is cold to the touch and smooth like glass, emanating a faint silver glow.",
  price: "32000",
  damage: "27+2D8",
  bulk: "1",
  charge: "4",
  hands: "1",
  inc: "18",
  casting: "+4/+7",
)[
  Moonray is a Legendary +2 Masterwork Resonating Manabind Staff.

  *Resonating:* Moonray becomes more efficient at channeling magical energy with every spell it casts in quick succession. For every spell channeled through Moonray on a given turn, its casting bonuses increase by 1, up to a maximum of +6/+9.

  *Manabind:* Moonray grants a +6 bonus to counterspelling. If Moonray is used to perform a successful counterspell, the wielder recovers Focus equal to the cost of the countered spell.

  *Solid Moonlight:* _(Legendary.)_ Moonray grants a +4 bonus to casting Arcane spells. This bonus increases to +7 for Ice and Moonlight spells.
]

#colbreak()

#item-description(
  "Serpent Staff",
  "Catalyst",
  6,
  keywords: "Psychic, Divine",
  flavor: "A staff shaped like a winding snake, carved from green-lacquered wood and topped with a glowing green gemstone held between the serpent's teeth. An eerie power emanates from it.",
  price: "35000",
  damage: "18+3D10",
  bulk: "2",
  charge: "5",
  hands: "1",
  inc: "17",
  casting: "+4/+7",
)[
  The Serpent Staff is a Legendary Masterwork Psychic catalyst.

  *Psychic:* Grants a +4 equipment bonus to manifesting Psychic powers, and a +7 bonus to manifesting Fate powers.

  *Mana Toxin:* Powers manifested using this staff apply a -3 penalty to attempts to counterspell them. When a power is successfully manifested through this catalyst, the wielder gains an Aura 10 until the beginning of their next turn; attempts to cast Arcane spells in this aura suffer a -4 penalty.

  *Vessel of the World Serpent:* _(Legendary.)_ The Serpent Staff is also a Reliquary of the World Serpent (Aspects: Scarab, Serpent; Will 8; Favor 3).
]
