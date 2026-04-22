#import "declarations.typ": *

#chap-header("4", [= Advances], "Progressing your Character")

== What is an advance?

Advances represent unique skills and talents your character gains or remembers
as they gain experience. They usually affect primarily a character's abilities
in combat, although they may also have uses during exploration.

== How to unlock advances

Advances are unlocked by spending experience points (XP) during downtime. To
unlock an advance, you must meet its prerequisites (if any) and pay the XP cost
listed in its entry. Once unlocked, an advance is permanent --- you benefit from
it for the rest of the campaign.

Characters gain XP from completing missions, overcoming challenges, and
achieving story milestones, as determined by the GM.

== Attribute & Characteristic Advances

In addition to the talent advances listed below, characters can spend XP to
increase the rank of an attribute or characteristic. Whenever you purchase an
advance of any kind, you gain HP and/or FP as listed in the advance's
description. For attribute and characteristic advances, the HP and FP gained
depends on the specific attribute or characteristic being advanced and the rank
attained, as shown in the tables below.

#pftab(
  "Attribute & Characteristic Advancement Costs",
  columns: (1fr, 1fr, 1.5fr, 1fr, 1.5fr),
  [*Rank*], [*Attr. Cost*], [*Attr. Prerequisites*], [*Char. Cost*], [*Char. Prerequisites*],
  [2], [300 XP], [---], [150 XP], [---],
  [3], [550 XP], [---], [275 XP], [---],
  [4], [1000 XP], [Total XP 3500], [500 XP], [---],
  [5], [1850 XP], [Total XP 7500], [925 XP], [Linked attrs total 4 ranks],
  [6], [3400 XP], [Total XP 15000], [1700 XP], [Linked attrs total 6 ranks],
)

#pftab(
  "Attribute Advance HP/FP Gain",
  columns: (1.5fr, 1fr, 1fr, 1fr, 1fr, 1.5fr),
  [], [*Rank 2*], [*Rank 3*], [*Rank 4*], [*Rank 5*], [*Rank 6*],
  [*Strength*], [3 HP], [4 HP, 1 F], [6 HP, 2 F], [9 HP, 3 F], [12 HP, 4 F],
  [*Agility*], [2 HP], [3 HP], [4 HP, 2 F], [6 HP, 2 F], [9 HP, 4 F],
  [*Dexterity*], [3 HP], [4 HP, 1 F], [6 HP, 2 F], [9 HP, 3 F], [12 HP, 4 F],
  [*Endurance*], [2 HP, 1 F], [3 HP, 2 F], [5 HP, 3 F], [8 HP, 4 F], [10 HP, 6 F],
  [*Intelligence*], [3 F], [1 HP, 4 F], [2 HP, 6 F], [3 HP, 9 F], [4 HP, 12 F],
  [*Perception*], [2 HP], [2 HP, 1 F], [3 HP, 3 F], [5 HP, 3 F], [7 HP, 5 F],
  [*Attunement*], [3 F], [1 HP, 4 F], [2 HP, 6 F], [3 HP, 9 F], [4 HP, 12 F],
  [*Sight*], [3 F], [1 HP, 4 F], [2 HP, 6 F], [3 HP, 9 F], [4 HP, 12 F],
  [*Presence*], [1 HP, 2 F], [2 HP, 3 F], [3 HP, 5 F], [4 HP, 8 F], [6 HP, 10 F],
  [*Will*], [1 HP, 2 F], [2 HP, 3 F], [3 HP, 5 F], [4 HP, 8 F], [6 HP, 10 F],
)

#pftab(
  "Characteristic Advance HP/FP Gain",
  columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  [], [*Rank 2*], [*Rank 3*], [*Rank 4*], [*Rank 5*], [*Rank 6*],
  [*Initiative*], [1 HP, 1 F], [2 HP, 1 F], [3 HP, 2 F], [4 HP, 3 F], [6 HP, 4 F],
  [*Speed*], [1 HP, 1 F], [2 HP, 1 F], [3 HP, 2 F], [4 HP, 3 F], [6 HP, 4 F],
  [*Stamina*], [1 HP], [2 HP], [3 HP, 2 F], [4 HP, 3 F], [6 HP, 4 F],
  [*Potential*], [1 HP, 1 F], [1 HP, 2 F], [2 HP, 3 F], [3 HP, 4 F], [4 HP, 6 F],
  [*Martial*], [2 HP], [3 HP], [4 HP, 1 F], [6 HP, 1 F], [8 HP, 2 F],
  [*Marksmanship*], [1 HP], [2 HP], [3 HP, 2 F], [4 HP, 3 F], [6 HP, 4 F],
  [*Arcane*], [2 F], [3 F], [1 HP, 4 F], [1 HP, 6 F], [2 HP, 8 F],
  [*Psychic*], [2 F], [3 F], [1 HP, 4 F], [1 HP, 6 F], [2 HP, 8 F],
  [*Command*], [1 HP, 1 F], [1 HP, 2 F], [2 HP, 3 F], [3 HP, 4 F], [4 HP, 6 F],
  [*Dodge*], [0 HP, 0 F], [0 HP, 1 F], [1 HP, 2 F], [2 HP, 3 F], [3 HP, 4 F],
  [*Grit*], [1 HP, 1 F], [2 HP, 1 F], [3 HP, 2 F], [4 HP, 3 F], [6 HP, 4 F],
)

#colbreak()

= Advance Lists

== Arcane

#advance-block(
  "Spell Memory I",
  1,
  150,
  0,
  2,
  "None",
  [You gain the ability to cast Tier 1 spells. You can prepare up to one Tier 1
    spell each time you memorize spells for the day. You may take this advance
    multiple times, adding a new Tier 1 spell slot each time.],
  traits: ("Arcane", "Power"),
)

#advance-block(
  "Spell Memory II",
  2,
  250,
  0,
  2,
  "Spell Memory I",
  [You gain the ability to cast Tier 2 spells. You gain a Tier 2 spell slot with
    which you can prepare one Tier 2 or lower spell each time you memorize
    spells for the day. You may take this advance multiple times, adding a new
    Tier 2 slot each time.],
)

#advance-block(
  "Spell Memory III",
  3,
  375,
  1,
  2,
  "Spell Memory II, Arcane 8",
  [You gain the ability to cast Tier 3 spells. You gain a Tier 3 spell slot with
    which you can prepare one Tier 3 or lower spell each time you memorize
    spells for the day. You may take this advance multiple times, adding a new
    Tier 3 slot each time.],
)

#advance-block(
  "Spell Memory IV",
  4,
  500,
  1,
  4,
  "Spell Memory III",
  [You gain the ability to cast Tier 4 spells. You gain a Tier 4 spell slot with
    which you can prepare one Tier 4 or lower spell each time you memorize
    spells for the day. You may take this advance multiple times, adding a new
    Tier 4 slot each time.],
)

#advance-block(
  "Spell Memory V",
  5,
  750,
  2,
  5,
  "Spell Memory IV, Arcane 10",
  [You gain the ability to cast Tier 5 spells. You gain a Tier 5 spell slot with
    which you can prepare one Tier 5 or lower spell each time you memorize
    spells for the day. You may take this advance multiple times, adding a new
    Tier 5 slot each time.],
)

#advance-block(
  "Spell Memory VI",
  6,
  1100,
  3,
  8,
  "Spell Memory V, Arcane 12",
  [You gain the ability to cast Tier 6 spells. You gain a Tier 6 spell slot with
    which you can prepare one Tier 6 or lower spell each time you memorize
    spells for the day. You may take this advance multiple times, adding a new
    Tier 6 slot each time.],
)

#advance-block(
  "Ambient Power",
  3,
  550,
  1,
  4,
  "Arcane 8",
  [You gain a +3 bonus to your Arcane rolls to cast every spell beyond the first
    one on your turn.],
)

#advance-block(
  "Arcane Wellspring",
  4,
  750,
  2,
  5,
  "Arcane 10, Ambient Power",
  [The focus cost of every spell you cast on your turn beyond the first one is
    reduced by one quarter.],
)

#advance-block(
  "Mana Flow",
  5,
  1100,
  3,
  8,
  "Arcane 12, Ambient Power",
  [The AP cost of every spell you cast on your turn beyond the first one is
    reduced by 1, to a minimum of 1.],
)

== Command

#advance-block(
  "Warlock Acolyte",
  1,
  200,
  1,
  1,
  "None",
  [While you are controlling a summoned creature, you gain one extra AP per
    round. This AP can only be spent to perform a move action.],
)

#advance-block(
  "Rallying Presence",
  1,
  200,
  2,
  0,
  "Command 3",
  [Allies within 5 squares of you gain +1d on saving throws against fear and morale effects. This bonus is lost if you are unconscious or Stunned.],
)

#advance-block(
  "Tactical Coordination",
  2,
  350,
  2,
  2,
  "Command 5, Rallying Presence",
  [Once per round, when an ally within 10 squares hits with an attack, you may spend a reaction to grant a different ally within 10 squares a free shift of 2 squares.],
)

#advance-block(
  "Iron Authority",
  3,
  550,
  3,
  3,
  "Command 7",
  [When you use a Command power that targets enemies, you may add +2d to the casting check. Additionally, enemies that fail a resistance check against your Command powers take a -1d penalty on their next saving throw against the effect.],
)

#advance-block(
  "Warmaster",
  4,
  1000,
  5,
  4,
  "Command 9, Tactical Coordination, Iron Authority",
  [At the start of each round, choose one ally within 10 squares. That ally gains +1 AP this round. You may not choose the same ally in consecutive rounds.],
)

#advance-block(
  "Efficient Binding",
  2,
  350,
  1,
  3,
  "Warlock Acolyte, Command 5",
  [The Focus component of your summoning sustain cost is reduced by half the creature's tier (minimum 1 increment). This makes lower-tier summons much cheaper to maintain in prolonged fights.],
)

#advance-block(
  "Iron Will of the Binder",
  3,
  600,
  2,
  4,
  "Efficient Binding, Command 7",
  [You gain +3d on binding checks against willful summons. Additionally, if a willful summon attempts to break free while you are conscious, the creature suffers a -2d penalty on its escape check.],
)

#advance-block(
  "Dual Binding",
  4,
  1200,
  4,
  6,
  "Iron Will of the Binder, Command 9",
  [You may sustain two summoning powers simultaneously. You must pay the sustain cost for each summon separately. If you are commanding mindless summons, a single Command action (1 AP) can issue orders to both creatures at once, but they must receive the same instruction.],
)

#advance-block(
  "Warlock's Dominion",
  5,
  2200,
  6,
  10,
  "Dual Binding, Command 12",
  [Your mastery of summoning reduces all sustain costs by 1 AP (minimum 0 AP; you still pay the Focus component). Mindless summons you control gain +2 to all their combat stats (Evasion, Armor, Ward, attack rolls, damage). Willful summons bound by you cannot attempt to break free while you are conscious.],
)

#advance-block(
  "Legion Master",
  6,
  3500,
  10,
  15,
  "Warlock's Dominion, Command 14",
  [You may sustain up to three summoning powers simultaneously. Additionally, once per encounter, you may resummon a destroyed summon as a 2 AP action without paying the initial Focus cost (you still pay the sustain cost from that point on). The resummon appears in an unoccupied square within 10 squares of you at half its maximum HP.],
)

== Dodge

#advance-block(
  "Action Roll",
  3,
  500,
  3,
  2,
  "Dodge 7",
  [Your dive range is increased from 3 to 5 squares.],
)

#advance-block(
  "Parting Strike",
  2,
  350,
  3,
  0,
  "Dodge 5, Martial 5",
  [When you disengage, you may make a melee attack against an adjacent target.
    This attack cannot hit more than once.],
)

#advance-block(
  "Vault",
  1,
  150,
  2,
  0,
  "None",
  [You can pass through squares occupied by enemy creatures as if they were
    difficult terrain.],
)

#advance-block(
  "Outmaneuver",
  1,
  200,
  1,
  1,
  "Press the Advantage, Vault",
  [When an enemy misses you with a melee attack, you can immediately move
    through its space as a free action, ending on the other side of it. While
    neither you nor that enemy perform any further actions, you have combat
    advantage against it.],
)

#advance-block(
  "Bullet Time",
  4,
  1000,
  6,
  4,
  "None",
  [When targeted by a single-target ranged attack, you can spend a reaction to
    make a Dodge resist. Add half the successes to your Evasion for the purposes
    of calculating hits for this attack only.],
)

== Grit

#advance-block(
  "Dauntless",
  2,
  500,
  3,
  2,
  "Grit 5",
  [You are immune to fear effects. If you are within the area of an enduring
    fear-inducing effect (such as an _Aura of Fear_), you gain a +2 bonus to
    attack rolls.],
)

#advance-block(
  "Lord of Myself",
  3,
  600,
  3,
  3,
  "Grit 7",
  [You are immune to being dominated or charmed.],
)

#advance-block(
  "Tenacity",
  3,
  700,
  4,
  3,
  "Grit 8",
  [You can always revive on your next turn after dying, even if you died in the
    same round. Effects that prevent revival have no effect on you.],
)

#advance-block(
  "Will of Steel",
  5,
  1100,
  7,
  4,
  "Grit 10, x",
  [When an attack would reduce you to 0 Health: you may make a D6 Grit resist;
    on success, you survive with 1 Health. Every time you invoke this power per
    scene, the Grit difficulty increases by 2.],
)

#advance-block(
  "Will Triumphant",
  6,
  1800,
  12,
  6,
  "Grit total 12, Grit base 5, Will of Steel",
  [Reviving costs you 4 instead of 5 EP.],
)

== Initiative

#advance-block(
  "Swift as Lightning",
  2,
  350,
  1,
  2,
  "Initiative 6",
  [During your first turn, you may treat all combatants that have not yet acted
    as _dazed_.],
)

#advance-block(
  "Seize the Moment",
  3,
  550,
  2,
  3,
  "Initiative 8",
  [When you act before all other combatants do, you gain 2 extra AP on your
    first turn.],
)

#advance-block(
  "Riposte",
  1,
  150,
  1,
  0,
  "None",
  [If an enemy within your reach misses you with a melee attack: as a reaction,
    you can immediately make an attack against that enemy with your equipped
    melee weapon.],
)

#advance-block(
  "Press the Advantage",
  1,
  200,
  2,
  0,
  "None",
  [You become adept at exploiting moments of inattentiveness. When you have
    combat advantage against a creature, your attacks and powers against that
    target have a +2 bonus to hit; additionally, your attacks against that
    target gain extra AP equal to your tier. You gain combat advantage against a
    creature when you are totally obscured from it, or when you are in a
    flanking position.],
)

#advance-block(
  "Lightning Reflexes",
  3,
  600,
  3,
  3,
  "Initiative 7, at least two Reaction advances",
  [You may take up to two reactions per round.],
)

== Marksmanship

#advance-block(
  "Heavy Gunner",
  3,
  500,
  5,
  0,
  "Marksmanship 6, Stamina 5",
  [Wielding heavy weapons is second nature to you. You can brace your weapon as
    a free action.],
)

== Martial

#advance-block(
  "Exploit (Tier 1)",
  1,
  250,
  0,
  2,
  "None",
  [This advance stands in for learning any Tier 1 Exploit. You learn one Tier 1
    Exploit of your choice.],
)

#advance-block(
  "Pursuit",
  1,
  250,
  2,
  1,
  "Opportunity Attack",
  [When you use your opportunity attack reaction, after the attack resolves, you
    can immediately move up to your speed in the direction of the triggering
    enemy. You must end your move adjacent to the triggering enemy if
    possible.],
)

#advance-block(
  "Exploit (Tier 2)",
  2,
  550,
  2,
  4,
  "Any Tier 1 Exploit",
  [This advance stands in for learning any Tier 2 Exploit. You learn one Tier 2
    Exploit of your choice.],
)

#advance-block(
  "Ambidexterity",
  2,
  350,
  2,
  1,
  "Martial 5",
  [Your off-hand penalty while dual wielding is reduced by 1d (from -2d to -1d for Light weapons, from -3d to -2d for Medium weapons).],
)

#advance-block(
  "Twin Fangs",
  3,
  600,
  3,
  2,
  "Ambidexterity, Martial 7",
  [While dual wielding, the hit rate increase to both weapons is removed --- you use the weapons' normal hit rates. Additionally, once per round when both weapons hit the same target, the second hit deals +50% bonus damage.],
)

#advance-block(
  "Whirlwind of Steel",
  4,
  1200,
  5,
  4,
  "Twin Fangs, Martial 9",
  [You learn the _Whirlwind of Steel_ exploit (see Martial Exploits, Tier 4).],
)

#advance-block(
  "Perfect Ambidexterity",
  5,
  2000,
  8,
  6,
  "Whirlwind of Steel, Martial 12",
  [Your off-hand penalty while dual wielding is eliminated entirely. Both weapons are treated as primary weapons. Additionally, you may use _Whirlwind of Steel_ twice per encounter instead of once.],
)

#advance-block(
  "Weapon Focus",
  2,
  300,
  2,
  1,
  "None",
  [Pick a class of melee weapon (such as sword, hammer, or axe). All attack
    rolls with a weapon of that type gain a +2 bonus. You may take this advance
    multiple times, but each one must apply to a different weapon type.],
)

#advance-block(
  "Monkey Grip",
  2,
  375,
  4,
  0,
  "None",
  [You can wield a two-handed weapon in one hand. When you do so, you gain a -2
    penalty to attack rolls with that weapon.],
)

#advance-block(
  "Lotus Leaf Kata",
  2,
  300,
  2,
  1,
  "Lotus Art: Impenetrable, Martial 5, Dodge 5",
  [While _Impenetrable_ stance, you gain a +3 bonus to Parry checks.],
)

#advance-block(
  "Exploit (Tier 3)",
  3,
  1000,
  4,
  6,
  "Any Tier 2 Exploit",
  [This advance stands in for learning any Tier 3 Exploit. You learn one Tier 3
    Exploit of your choice.],
)

#advance-block(
  "Exploit (Tier 4)",
  4,
  1850,
  9,
  9,
  "Any Tier 3 Exploit",
  [This advance stands in for learning any Tier 4 Exploit. You learn one Tier 4
    Exploit of your choice.],
)

#advance-block(
  "Exploit (Tier 5)",
  5,
  2500,
  12,
  13,
  "Any Tier 4 Exploit",
  [This advance stands in for learning any Tier 5 Exploit. You learn one Tier 5
    Exploit of your choice.],
)

#advance-block(
  "Exploit (Tier 6)",
  6,
  3500,
  15,
  20,
  "Any Tier 5 Exploit",
  [This advance stands in for learning any Tier 6 Exploit. You learn one Tier 6
    Exploit of your choice.],
)

== Potential

#advance-block(
  "Leyline Attunement",
  1,
  200,
  0,
  2,
  "Potential 3",
  [You can sense the presence and school of magical effects within 10 squares. Additionally, your catalyst's focus increment is reduced by 1 (minimum 1).],
)

#advance-block(
  "Arcane Smoothing",
  2,
  300,
  0,
  3,
  "Potential 5, any casting Characteristic 5",
  [You are an adept wielder of Catalysts. You may reduce the focus increment of
    any Catalyst you wield by one-half its tier, rounding up.],
)

#advance-block(
  "Parma Arcana",
  3,
  600,
  3,
  3,
  "Potential 6",
  [You gain a resistance to enemy magic. When targeted by a spell or magical
    ability, you may roll a Potential resist with difficulty equal to the
    casting check. On success: you are unaffected by the spell.],
)

#advance-block(
  "Wellspring",
  4,
  1000,
  2,
  6,
  "Potential 9, Arcane Smoothing",
  [Your connection to ambient magical energy deepens. Allies within 5 squares of you reduce the increment cost of their spells and powers by 1 (minimum 1). This does not stack with other sources of increment reduction.],
)

== Psychic

#advance-block(
  "Quicken Magic",
  1,
  300,
  0,
  3,
  "None",
  [When you manifest a psychic power that costs 2 or more AP, you can expend one
    additional increment of focus to reduce the AP cost of that power by 1.],
)

#advance-block(
  "Maximize Magic",
  1,
  300,
  0,
  3,
  "None",
  [When you manifest a psychic power, you can expend one additional increment of
    focus to use the maximum value for each die roll to determine the effects or
    duration of the power instead of rolling.],
)

#advance-block(
  "Telepathy",
  1,
  300,
  1,
  2,
  "None",
  [You can communicate telepathically with creatures within 30 squares that you
    can see. Neither party requires a common spoken language.],
)

#advance-block(
  "Discipline (Tier 1)",
  1,
  250,
  1,
  2,
  "None",
  [This advance stands in for learning any Tier 1 Psychic power. You learn one
    Tier 1 Psychic power of your choice.],
)

#advance-block(
  "Discipline (Tier 2)",
  2,
  550,
  1,
  5,
  "Any Tier 1 Psychic power",
  [This advance stands in for learning any Tier 2 Psychic power. You learn one
    Tier 2 Psychic power of your choice.],
)

#advance-block(
  "Discipline (Tier 3)",
  3,
  1000,
  3,
  7,
  "Any Tier 2 Psychic power",
  [This advance stands in for learning any Tier 3 Psychic power. You learn one
    Tier 3 Psychic power of your choice.],
)

#advance-block(
  "Discipline (Tier 4)",
  4,
  1850,
  5,
  13,
  "Any Tier 3 Psychic power",
  [This advance stands in for learning any Tier 4 Psychic power. You learn one
    Tier 4 Psychic power of your choice.],
)

#advance-block(
  "Discipline (Tier 5)",
  5,
  2500,
  7,
  18,
  "Any Tier 4 Psychic power",
  [This advance stands in for learning any Tier 5 Psychic power. You learn one
    Tier 5 Psychic power of your choice.],
)

#advance-block(
  "Discipline (Tier 6)",
  6,
  3500,
  10,
  25,
  "Any Tier 5 Psychic power",
  [This advance stands in for learning any Tier 6 Psychic power. You learn one
    Tier 6 Psychic power of your choice.],
)

== Speed

#advance-block(
  "Fleet of Foot",
  1,
  150,
  1,
  1,
  "Speed 3",
  [Your base Movement Speed increases by 2.],
)

#advance-block(
  "Evasive Sprint",
  2,
  300,
  2,
  1,
  "Speed 5, Fleet of Foot",
  [When you use the Dash action, you do not provoke opportunity attacks for the rest of your turn.],
)

#advance-block(
  "Lightning Dash",
  3,
  550,
  3,
  2,
  "Speed 7, Evasive Sprint",
  [Once per encounter, you may take a move action as a free action at the start of your turn.],
)

#colbreak()

#advance-block(
  "Impossible Swiftness",
  4,
  1000,
  4,
  3,
  "Speed 9, Lightning Dash",
  [Your base Movement Speed increases by an additional 3 (stacks with Fleet of Foot). You may move through difficult terrain at normal speed.],
)

== Stamina

#advance-block(
  "Conditioning",
  1,
  150,
  2,
  0,
  "Strength 2, Endurance 2",
  [Treat the bulk of all armor as 1 lower than it actually is (subject to
    category minimums).],
)

#advance-block(
  "Iron Constitution",
  2,
  300,
  4,
  0,
  "Stamina 4, Conditioning",
  [You gain +1d on all Endurance checks and saving throws against Poisoned, Diseased, and Exhausted conditions.],
)

#advance-block(
  "Powered Proficiency",
  3,
  550,
  4,
  1,
  "Conditioning, Stamina 6",
  [You gain the ability to use powered armor in powered mode. While wearing
    powered armor, you benefit from all your advances that improve your wearing
    of armor.],
)

#advance-block(
  "Unstoppable",
  4,
  1000,
  8,
  0,
  "Stamina 9, Iron Constitution",
  [Once per encounter, when you would be reduced to 0 HP, you are instead reduced to 1 HP. Additionally, you are immune to the Stunned condition from non-magical sources.],
)
