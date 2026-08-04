#import "../../formatting/declarations.typ": *

// Fog-Touched Beast — T1 Standard
// A predator warped by prolonged Fog exposure. Two of them join the
// Scene 2 fight at the dump site, drawn by the noise.
#let fog-touched-beast() = creature-stat-block(
  "Fog-Touched Beast",
  "T1 Standard",
  traits: ("Beast", "Fog-Touched"),
  hp: 22,
  armor: 5,
  ward: 4,
  evasion: 2,
  ap: 4,
  speed: 4,
  characteristics: (
    Martial: 6,
    Stamina: 5,
    Grit: 4,
  ),
  actions: (
    cr-action("melee", "Bite", "2 AP")[\
      _Melee, Martial vs Evasion, single target_ \
      *Damage:* 4+1D8],

    cr-action("melee", "Pounce", "2 AP")[\
      _Move up to Speed, then Melee, Martial vs Evasion, single target_ \
      *Damage:* 4+1D8 \
      *On hit:* Target is Exposed (save ends).],
  ),
  xp: 15,
)

// Soulless Husk — T1 Minion
// Reanimated bodies of Šauhahten's victims, stripped of their souls. The
// six that rise at the dump site wear Never-Still peacekeeper colors.
#let soulless-husk() = creature-stat-block(
  "Soulless Husk",
  "T1 Minion",
  traits: ("Undead", "Mindless"),
  hp: 10,
  armor: 5,
  ward: 3,
  evasion: 2,
  ap: 3,
  speed: 2,
  immunities: [Frightened, Dominated],
  characteristics: (
    Martial: 5,
    Stamina: 4,
    Grit: 3,
  ),
  actions: (
    cr-action("melee", "Slam", "2 AP")[\
      _Melee, Martial vs Evasion, single target_ \
      *Damage:* 3+1D8 \
      *On hit:* Target is Grabbed (save ends). While Grabbed, the Husk
      does not need to spend AP to maintain the grab.],
  ),
  xp: 7,
)

// Vazhan, Hollow Revenant — T1 Elite
// Sergeant Vazhan of the Never-Still — Ushtâng's friend. Šauhahten's
// extraction failed partway on him: a fragment of soul remained, and the
// Fog wove the residue of a dozen stolen souls around it. What rose is
// stronger and far angrier than a husk, and it screams with voices that
// are not all its own. Mini-boss of the Scene 2 fight.
#let hollow-revenant() = creature-stat-block(
  "Vazhan, Hollow Revenant",
  "T1 Elite",
  traits: ("Undead", "Fog-Touched", "Peacekeeper"),
  hp: 32,
  armor: 5,
  ward: 6,
  evasion: 2,
  ap: 4,
  speed: 3,
  immunities: [Frightened, Dominated],
  characteristics: (
    Martial: 6,
    Potential: 6,
    Stamina: 5,
    Grit: 6,
  ),
  passive-traits: (
    (
      name: "What Remains",
      body: [Once per round, a character may spend 1 AP to call Vazhan by
        name. Until the end of the round, Vazhan attacks that character
        with --1d. A character who knew Vazhan in life needs no check;
        anyone else must succeed on an *Influence D3* as part of the
        action.],
    ),
  ),
  actions: (
    cr-action("melee", "Halberd of the Watch", "2 AP")[\
      _Melee (reach 2), Martial vs Evasion, single target_ \
      *Damage:* 5+1D8 \
      He still fights with the drill-ground precision of a watch sergeant.
      The residue does not remember why.],

    cr-action("area", "Wail of the Taken", "3 AP")[\
      _Burst 2 centred on self; each creature in the area resists with
      Grit D3_ \
      *Damage:* 4 psychic on a failed resist, and the target is Dazed
      until the end of its next turn. On a success, no damage. \
      The voices of every soul Šauhahten has taken scream through him at
      once.],

    cr-action("psychic", "Grasp of Residue", "2 AP")[\
      _Ranged 6, Potential vs Ward, single target_ \
      *Damage:* 4+1D6 psychic \
      *On hit:* Target is Slowed (save ends). Pale, half-formed hands
      clutch at the target from the Fog.],
  ),
  xp: 30,
)

// The Chimera — T1 Elite
// The living byproduct of Šauhahten's Prima Materia research: a mass of
// fused tissue grown around a cauldron-heart, kept as a guardian because
// destroying it would waste the material. Fights beside its maker in
// Scene 5. Fire stops its regeneration.
#let chimera() = creature-stat-block(
  "The Chimera",
  "T1 Elite",
  size-type: [Size 2 Construct],
  traits: ("Construct", "Alchemical", "Size 2"),
  hp: 45,
  armor: 6,
  ward: 5,
  evasion: 2,
  ap: 4,
  speed: 4,
  immunities: [Frightened, Dominated, Poisoned],
  characteristics: (
    Martial: 7,
    Stamina: 6,
    Grit: 5,
  ),
  passive-traits: (
    (
      name: "Regeneration",
      body: [The Chimera recovers 3 HP at the start of each of its turns.
        This regeneration ceases for the rest of the scene the first time
        the Chimera takes fire or Thermal damage.],
    ),
  ),
  actions: (
    cr-action("melee", "Rending Bite", "2 AP")[\
      _Melee, Martial vs Evasion, single target_ \
      *Damage:* 6+1D10],

    cr-action("melee", "Lurching Charge", "3 AP")[\
      _Move up to Speed, then Melee, Martial vs Evasion, single target,
      +1d to hit_ \
      *Damage:* 6+1D10 \
      *On hit:* Target is knocked Prone.],

    cr-action("area", "Sweeping Lash", "2 AP")[\
      _Melee, Martial vs Evasion, all enemies within 2 squares_ \
      *Damage:* 4+1D8],
  ),
  xp: 30,
)

// Alchemical Homunculus — T1 Minion
// Šauhahten's lab assistants: knee-high figures of wax, glass, and vat
// flesh, animated by a droplet of soul residue each. They fetch, stir,
// take notes — and, when the laboratory is threatened, they weaponize
// themselves. Minions of the Scene 5 fight.
#let homunculus() = creature-stat-block(
  "Alchemical Homunculus",
  "T1 Minion",
  size-type: [Size 0 Construct],
  traits: ("Construct", "Alchemical", "Size 0"),
  hp: 8,
  armor: 4,
  ward: 4,
  evasion: 3,
  ap: 3,
  speed: 4,
  immunities: [Frightened, Dominated, Poisoned],
  characteristics: (
    Martial: 4,
    Stamina: 3,
    Grit: 3,
  ),
  passive-traits: (
    (
      name: "Alembic Burst",
      body: [When the Homunculus is destroyed, its reagent core shatters
        --- Burst 1 centred on it, 3 chemical damage, *Evasion D2*
        negates.],
    ),
  ),
  actions: (
    cr-action("ranged", "Caustic Alembic", "2 AP")[\
      _Melee or Ranged 5, Martial vs Evasion, single target_ \
      *Damage:* 3+1D6 chemical \
      It swings, or throws, a stoppered vessel of something that steams
      where it splashes.],
  ),
  xp: 7,
)

// Šauhahten, the Mad Alchemist — T1 Boss
// Mirror (Echo), ex-Mortefactor. Calm, articulate, utterly certain.
// Fights to defend his work with a mix of alchemy, Mortefactor technique,
// and fey birthright. Escalates from composed certainty to grandiose rage
// as his laboratory is destroyed — and escapes before the end.
#let sauhahten() = creature-stat-block(
  "Šauhahten, the Mad Alchemist",
  "T1 Boss",
  traits: ("Deathless", "Mirror", "Humanoid"),
  hp: 55,
  fp: 30,
  armor: 6,
  ward: 5,
  evasion: 3,
  ap: 5,
  speed: 3,
  immunities: [Dominated],
  characteristics: (
    Arcane: 7,
    Martial: 5,
    Potential: 6,
    Stamina: 5,
    Grit: 5,
  ),
  passive-traits: (
    (
      name: "Legendary Reflex",
      body: [Once per round, after another creature ends its turn,
        Šauhahten may move up to 3 squares or make an Alchemical Bolt
        attack. This costs no AP.],
    ),
    (
      name: "Desperate Fury",
      body: [While below half HP, Šauhahten gains +1d on all attack rolls
        and his Evasion is reduced by 1 (to 2).],
    ),
    (
      name: "The Vanishing",
      body: [Šauhahten does not intend to die here. When reduced below 12
        HP --- or when his laboratory is lost and the fight with it --- he
        escapes through the silvered mirror at the back of the laboratory
        (see _The Vanishing_ in Scene 5). Award full XP.],
    ),
  ),
  actions: (
    cr-action("ranged", "Alchemical Bolt", "2 AP")[\
      _Ranged 10, Arcane vs Evasion, single target_ \
      *Damage:* 5+1D8 \
      Šauhahten hurls a volatile alchemical compound that detonates on
      impact.],

    cr-action("arcane", "Soul Siphon", "3 AP")[\
      _Ranged 8, Arcane vs Ward, single target_ \
      *Damage:* 6+1D12 \
      *On hit:* Šauhahten heals HP equal to half the damage dealt. \
      A tendril of pale light connects Šauhahten to the target, drawing
      vitality from them. Mortefactor technique.],

    cr-action("reaction", "Fey Displacement", "1 AP")[\
      _Trigger: Šauhahten is hit by an attack._ \
      Šauhahten teleports up to 3 squares. Once per round. \
      His Mirror nature allows him to step briefly between reflections.],

    cr-action("area", "Distillation Overload", "3 AP")[\
      _Burst 2 within 8, Arcane vs Evasion_ \
      *Damage:* 10+2D8 \
      Šauhahten destabilizes one of his alchemical apparatuses, causing it
      to violently discharge. This ability is only available while the
      distillation array in the laboratory is intact. Each use visibly
      damages the equipment.],
  ),
  xp: 60,
)
