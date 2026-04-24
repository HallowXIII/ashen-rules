#import "../../formatting/declarations.typ": *

// Fog-Touched Beast — T1 Standard
// A predator warped by prolonged Fog exposure. Used as a field encounter
// at the dump site or ritual site (Phase 2).
#let fog-touched-beast() = creature(
  "Fog-Touched Beast",
  "T1 Standard",
  traits: ("Beast", "Fog-Touched"),
  hp: 22,
  armor: 5,
  ward: 4,
  evasion: 2,
  speed: 4,
  characteristics: (
    martial: 6,
    stamina: 5,
    grit: 4,
  ),
  abilities: (
    [*Bite --- 2 AP* \
     _Melee, Martial vs Evasion, single target_ \
     *Damage:* 4+1D8],

    [*Pounce --- 2 AP* \
     _Move up to Speed, then Melee, Martial vs Evasion, single target_ \
     *Damage:* 4+1D8 \
     *On hit:* Target is Exposed (save ends).],
  ),
  xp: 15,
)

// Soulless Husk — T1 Minion
// Reanimated bodies of Šauhahten's victims, stripped of their souls and
// repurposed as mindless sentries. Used in the laboratory (Layer 2).
#let soulless-husk() = creature(
  "Soulless Husk",
  "T1 Minion",
  traits: ("Undead", "Mindless"),
  hp: 10,
  armor: 5,
  ward: 3,
  evasion: 2,
  speed: 2,
  characteristics: (
    martial: 5,
    stamina: 4,
    grit: 3,
  ),
  immunities: [Frightened, Dominated],
  abilities: (
    [*Slam --- 2 AP* \
     _Melee, Martial vs Evasion, single target_ \
     *Damage:* 3+1D8 \
     *On hit:* Target is Grabbed (save ends). While Grabbed, the Husk
     does not need to spend AP to maintain the grab.],
  ),
  xp: 7,
)

// Alchemical Monstrosity — T2 Standard (overtuned for T1)
// A byproduct of Šauhahten's Prima Materia research. Too large, too fast,
// visibly wrong. Not intended to be fought head-on. Used in the laboratory
// (Layer 4).
#let alchemical-monstrosity() = creature(
  "Alchemical Monstrosity",
  "T2 Standard",
  traits: ("Construct", "Alchemical", "Large"),
  hp: 55,
  armor: 7,
  ward: 6,
  evasion: 3,
  speed: 3,
  characteristics: (
    martial: 8,
    stamina: 7,
    grit: 6,
  ),
  immunities: [Frightened, Dominated, Poisoned],
  special: [*Regeneration:* The Monstrosity recovers 5 HP at the start of
    each of its turns. This regeneration ceases if the Monstrosity takes
    fire damage or is affected by an effect that specifically prevents
    healing.],
  abilities: (
    [*Heavy Slam --- 2 AP* \
     _Melee, Martial vs Evasion, single target_ \
     *Damage:* 8+2D8 \
     *On hit:* Target is knocked Prone.],

    [*Sweeping Strike --- 2 AP* \
     _Melee, Martial vs Evasion, all enemies within 2 squares_ \
     *Damage:* 5+1D10],
  ),
  xp: 25,
)

// Šauhahten, the Mad Alchemist — T1 Boss
// Mirror (Echo), ex-Mortefactor. Calm, articulate, utterly certain.
// Fights to defend his work with a mix of alchemy, Mortefactor technique,
// and fey birthright. Escalates from composed certainty to grandiose rage
// as his laboratory is destroyed.
#let sauhahten() = creature(
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
  characteristics: (
    arcane: 7,
    martial: 5,
    potential: 6,
    stamina: 5,
    grit: 5,
  ),
  immunities: [Dominated],
  special: [*Desperate Fury:* While below half HP, Šauhahten gains +1d on
    all attack rolls and his Evasion is reduced by 1 (to 2).],
  abilities: (
    [*Alchemical Bolt --- 2 AP* \
     _Ranged 10, Arcane vs Evasion, single target_ \
     *Damage:* 5+1D8 \
     Šauhahten hurls a volatile alchemical compound that detonates on
     impact.],

    [*Soul Siphon --- 3 AP* \
     _Ranged 8, Arcane vs Ward, single target_ \
     *Damage:* 6+1D12 \
     *On hit:* Šauhahten heals HP equal to half the damage dealt. \
     A tendril of pale light connects Šauhahten to the target, drawing
     vitality from them. Mortefactor technique.],

    [*Fey Displacement --- 1 AP (Reaction)* \
     _Trigger: Šauhahten is hit by an attack._ \
     Šauhahten teleports up to 3 squares. Once per round. \
     His Mirror nature allows him to step briefly between reflections.],

    [*Distillation Overload --- 3 AP* \
     _Burst 2 within 8, Arcane vs Evasion_ \
     *Damage:* 10+2D8 \
     Šauhahten destabilizes one of his alchemical apparatuses, causing it
     to violently discharge. This ability is only available while the
     distillation array in the laboratory is intact. Each use visibly
     damages the equipment.],
  ),
  xp: 60,
)
