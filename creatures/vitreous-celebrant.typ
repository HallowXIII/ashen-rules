#import "../src/formatting/declarations.typ": *
#import "@preview/meander:0.4.2"
#show: pf-stylization

= Glass Servants

These constructs are crafted in human shape, seemingly from pure glass. They are said
to have been the servants of the Gods in the times before the war, and buildings inhabited
by them are frequently found in good repair despite their age and abandonment. 

Although intelligent, Glass Servants cannot speak -- they instead communicate telepathically
with those they deem worthy of words.

#creature-stat-block(
  "Vitreous Knight",
  "T5 Knight",
  size-type: "Size 1 Sentient Construct",
  traits: ("Construct", "Sentient", "Size 1"),
  flavor: "A knight wrought of beautiful plates of clear glass, wielding a sword of the same material. When the glass strikes against itself, the construct rings out with a haunting sound, like a bell.",
  hp: 120,
  fp: 72,
  armor: 30,
  ward: 10,
  evasion: 3,
  init: [10d6],
  speed: [Ground 8],
  characteristics: (
    Arc: 3, Com: 3, Dge: 12, Grt: 12, Ini: 10,
    Mar: 16, Mrk: 3, Pot: 11, Psy: 3, Spe: 6, Sta: 13,
  ),
  passive-traits: (
    (name: "Harmonic Frequency", body: [While wielding the Glass Blade, the Knight gains a +3 equipment bonus to invoking Sound powers.]),
    (name: "Ringing Blade", body: [When the knight parries a melee attack with the Glass Blade, the attacker must make a D8 Stamina save or be Dazed until the end of the Knight's next turn.])
  ),
  actions: (
    cr-action(
      "melee",
      "Glass Blade",
      "2 AP",
      "AR 3, 4d10+22 Rending damage",
    ),
    cr-action(
      "reaction",
      "Parry",
      "Immediate Interrupt (2/rd)",
      "Opposed martial check; on success: the attack is nullified."
    ),
    cr-power(
      "area",
      "Sonic Shock",
      "2 AP; 38 FP",
    )[Difficulty 8 (Martial); all creatures within Cone 8 must make a D6 Stamina resist, on failure: they take 44+8d10 Untyped damage and are _Dazed_ (save ends); on success: they take 22+4d10 damage instead.]
  )
  
)

#set page(columns: 1)

#let celebrant = image("../graphics/illustrations/vitreous-celebrant.png", width: 100%)
#let overflow = state("overflow")

#meander.reflow({

  import meander: *

  // placed(bottom + center, celebrant)
  container(align: left, width: 50%)
  container(align: right, width: 50%)

content[

#creature-stat-block(
  "Vitreous Celebrant",
  "T4 Elite Controller (Leader)",
  size-type: "Size 1 Sentient Construct",
  traits: ("Construct", "Sentient", "Size 1"),
  flavor: "A glass priest of the Falcon-Headed Sun, wreathed in splendid, gold-embroidered robes of white silk, wielding a high priest's Crozier in one hand and a glass incense burner in the other, spreading an intoxicating scent around itself.",
  hp: 80,
  fp: 125,
  armor: 10,
  ward: 25,
  evasion: 6,
  init: [10d6],
  speed: [Ground 10],
  resistances: [Thermal 15],
  characteristics: (
    Arc: 3, Com: 15, Dge: 8, Grt: 9, Ini: 10,
    Mar: 8, Mrk: 3, Pot: 13, Spe: 8, Sta: 9,
  ),
  passive-traits: (
    (
      name: "Pure Land Incense",
      body: [Aura 3, any breathing creature entering or starting its turn in
        the aura must succeed on a D5 Sta resist or be Dazed (save ends).
        Creatures can avoid this effect by holding their breath.],
    ),
    (
      name: "Parma Arcana",
      body: [Can resist any magical effect with a Pot resist equal to the
        casting check.],
    ),
    (
      name: "Monkey Grip",
      body: [Can use 2H weapons in 1 hand.],
    ),
  ),
  actions: (
    cr-action("melee", "Crozier", "2 AP")[basic melee 10d; 16+1d10 Impact;
      on hit: D6 Pot resist or lose 32+2d10 FP.],
    cr-action("area", "Cast Incense", "2 AP")[3 within 12; all creatures in
      burst are affected as if inside the Pure Land Incense aura.],
  ),
  casting: (
    title: "Casting (Divine)",
    powers: (
      cr-power("divine", "Sunfire Blessing", "1 AP, 13 FP")[15 to hit 3; 1 ally
        within 10; target ally's weapon deals an additional 50% (of reliquary)
        Thermal damage for the rest of the scene.],
      cr-power("divine", "Aegis of the Faithful", "3 AP, 39 FP; Sustain 1 AP, 13 FP")[15
        to hit 8; Close Burst 5; All allies within the area gain Resistance 10
        to all damage types. Projectiles and ranged spell attacks that cross
        the barrier take a -3d penalty to hit. The Celebrant cannot move while
        sustaining this power.],
    ),
  ),
  command-powers: (
    cr-power("divine", "Coordinated Strike", "2 AP; 10 FP")[15 to hit 3; 2 allies
      within 10. You direct two allies to strike in unison. Each ally within
      range may immediately make a basic attack as a free action against a
      target of your choice. If both allies hit the same target, that target is
      Dazed until the end of its next turn.],
    cr-power("divine", "Hold the Line", "2 AP, 20 FP")[15 to hit 7, up to 4
      allies within Close Burst 5. You command your allies to form a defensive
      formation. Up to four allies within range gain +3 Evasion and +2d on
      resistance checks until the end of your next turn. While this effect is
      active, enemies that move through or out of a square adjacent to an
      affected ally provoke an opportunity attack.],
  ),
  equipment: (
    cr-equip("weapon", "Glass Crozier")[T4 Masterwork Hammer (Flexible); 16+d10
      Impact, Disrupting (D7 Pot or 200% FP Damage), Inc 12, 2H, 2 Bulk],
    cr-equip("catalyst", "Solar Incense")[T4 Light Reliquary (Khâru; Sun,
      Crown); 15+d10 base, Will 4, Favor 1, 1H, 1 Bulk, 3½ Charge, Inc 13],
    cr-equip("armor", "Celebrant Robes")[T4 Medium Armor (Overgarment); 0 Arm,
     25 Wrd, Eva +2, Bulk 2, Charge 4, Special: Resist 10 Thermal],
  ),
)]  

content[

=== Tactics

The Celebrant attempts to cover its allies and itself in an _Aegis of the
Faithful_ if it can find an advantageous position. While it cannot move, it
uses its command powers to bolster its allies and hold off enemy attacks in
melee. It uses its Cast Incense ability to disrupt concentrations of foes.

=== Ecology

The Vitreous Celebrant acts as a leader of other Glass Servants. It uses its
abilities to bolster its allies and hinder its foes.

=== Sample Encounter

1 Vitreous Celebrant (T4 Elite Controller), 2 Vitreous Knights (T5 Knight).
]

  opt.overflow.state(overflow)

})