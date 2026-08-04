#import "../formatting/declarations.typ": *

// Solar Warden — T6 Elite Knight
// A great marble statue animated by a captive fragment of the sun. Its
// two-handed khopesh hooks an enemy's guard down (Exposed), setting up a
// devastating plasma burst from its beak — a burst it also turns on anyone
// foolish enough to pepper it from range.
//
// Design notes (per the Designing Creatures guidelines):
// - Elite Knight: HP ~1.7x the tough end of the T6 baseline, Armor/Ward
//   above baseline, Evasion well below (it is a statue), 5 AP + a reaction.
// - High-tier toolkit: Solar Lance is its 200%-class power with Pen 12;
//   the khopesh applies Exposed as the qualitative defense-stripping rider.
// - Cracked Shell gives the long fight a phase transition so it does not
//   turn into a slog against 260 HP.
#let solar-warden() = creature-stat-block(
  "Solar Warden",
  "T6 Elite Knight",
  size-type: [Size 2 Construct],
  traits: ("Construct", "Solar", "Size 2"),
  flavor: [A colossus of white marble in the shape of a falcon-headed
    soldier. Sunlight leaks from the seams of its stone skin, and the air
    around it shimmers with heat. It does not speak, does not tire, and
    does not leave its post.],
  hp: 260,
  fp: 110,
  armor: 26,
  ward: 20,
  evasion: 5,
  init: 8,
  ap: 5,
  speed: 3,
  resistances: [Thermal 18],
  immunities: [Burning, Frightened, Dominated, Poisoned],
  characteristics: (
    Martial: 18,
    Marksmanship: 16,
    Stamina: 18,
    Grit: 16,
  ),
  passive-traits: (
    (
      name: "Blazing Core",
      body: [The sun burning inside the Warden radiates murderous heat.
        Any creature that starts its turn within 2 squares of the Warden,
        or that hits it with a melee attack, takes 8 Thermal damage.
        Armor and Ward do not apply.],
    ),
    (
      name: "Cracked Shell",
      body: [The first time the Warden is reduced below 130 HP, its marble
        skin fractures and the inner sun blazes through the gaps. Its Armor
        is reduced to 18 for the rest of the encounter, and its Blazing
        Core damage increases to 16.],
    ),
  ),
  actions: (
    cr-action("melee", "Solar Khopesh", "2 AP")[\
      _Melee, Martial vs Evasion (+2d from the masterwork blade), single
      target_ \
      *Damage:* 24+2D10 Rending \
      *On hit:* The hooked blade drags the target's guard aside --- the
      target is Exposed until the end of the Warden's next turn.],

    cr-action("area", "Hooking Sweep", "3 AP")[\
      _Melee, Martial vs Evasion, all enemies within 2 squares_ \
      *Damage:* 18+2D8 Rending \
      *On hit:* The target is dragged 1 square toward the Warden --- into
      the heat of its Blazing Core.],

    cr-action("ranged", "Solar Lance", "3 AP")[\
      _Ranged Line 12, Marksmanship vs Evasion; Pen 12_ \
      *Damage:* 32+4D10 Thermal \
      The Warden's beak splits open and vents a lance of stellar plasma.
      The plasma is a physical discharge, not spellcraft: Armor applies
      (less Pen), Ward does not. After firing, the beak must vent heat ---
      the Warden cannot use Solar Lance again until the end of its next
      turn. It favors this attack against Exposed or distant targets.],

    cr-action("reaction", "Retaliatory Flare", "1 AP")[\
      _Trigger: a creature more than 2 squares away hits the Warden with an
      attack._ \
      *Response:* If Solar Lance is available, the Warden immediately fires
      it at the attacker. This counts as its use of Solar Lance. Once per
      round.],
  ),
  equipment: (
    cr-equip("weapon", "Solar Khopesh")[Tier 6 Legendary Two-handed Blade
      --- Heavy, 2 Hands, Bulk 3, Damage 24+2D10 Rending, Pen 0,
      Masterwork +2 (+2d to attack rolls). \
      _Legendary trait --- Sunhook:_ on hit, the target is Exposed until
      the end of the wielder's next turn. \
      The sickle-blade holds a sliver of the Warden's captive sun: it is
      warm to the touch, never rusts, and sheds bright light in a 5-square
      radius. It can be pried from the Warden's remains intact; the marble
      shell itself crumbles to worthless rubble.],
  ),
  xp: 350,
)
