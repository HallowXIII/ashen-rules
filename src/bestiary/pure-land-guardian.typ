= Pure Land Guardian
_T6 Solo Boss_

A towering celestial guardian with three faces and three arms, each wielding a different instrument of divine authority. Its sword arm delivers devastating physical strikes, its vajra channels divine power, and its mirror arm deflects and disrupts. Born of the Pure Land's need for an eternal sentinel, the Guardian fights with measured precision --- until its composure is broken.

== Statistics

#table(
  columns: 4,
  align: (left, center, left, center),
  stroke: 0.5pt,

  [*HP*], [420], [*Armor*], [25],
  [*FP*], [160], [*Ward*], [23],
  [*AP*], [4], [*Evasion*], [8],
  [*Movement Speed*], [12], [], [],
)

#table(
  columns: 4,
  align: (left, center, left, center),
  stroke: 0.5pt,

  [*Martial*], [18], [*Potential*], [16],
  [*Divine*], [17], [*Grit*], [18],
  [*Stamina*], [17], [*Dodge*], [16],
  [*Initiative*], [14], [], [],
)

*Immunities:* Dominated, Frightened \
*Condition Resistance:* When the Guardian would be Stunned, it is Dazed instead.

*Greater Legendary Action:* Whenever another creature completes its turn, the Pure Land Guardian may take a single action costing up to 2 AP.

== Three Faces

The Guardian has three faces, each providing a passive effect. As the Guardian takes damage, its faces crack in sequence, removing their passive but shifting the Guardian's combat behavior.

=== Face of Serenity (Passive)
The Guardian recovers 20 HP at the start of its turn.

=== Face of Judgment (Passive)
The Guardian cannot be Blinded or Disoriented. It perceives invisible and hidden creatures within 10 squares.

=== Face of Wrath (Passive Aura)
Enemies within 3 squares take -1d on attack rolls.

== Phases

=== Phase 1 — All Faces (420--280 HP)

The Guardian fights with measured precision, using its full toolkit. It opens with Mantra of Binding or Diamond Lightning to control positioning, uses Banishing Light to isolate key targets, and employs Celestial Blade or Whirling Cleave as legendary actions. Karmic Reflection punishes ranged attackers.

=== Phase 2 — Serenity Cracks (280--140 HP)

The Face of Serenity shatters. The Guardian loses its regeneration. In response, it fights with greater aggression: it gains *+2d on all attack rolls* for the remainder of the encounter. It shifts toward using Divine Severance and Karmic Fire more freely.

=== Phase 3 — Judgment Cracks (below 140 HP)

The Face of Judgment shatters. The Guardian loses its perception immunity. In its desperation, its Whirling Cleave now deals *300%* instead of 200%, and its Celestial Blade deals *200%*. However, it can now be Blinded and Disoriented, and the Face of Wrath aura no longer functions against targets beyond 1 square.

== Sword Arm (Martial)

=== Celestial Blade — 2 AP
_Melee, Martial vs Evasion, single target_ \
*Damage:* 18+2D10 \
*On hit:* Target must pass a D8 Grit resist or be Exposed (save ends).

=== Whirling Cleave — 2 AP
_Melee, Martial vs Evasion, all enemies within 2 squares_ \
*Damage:* 200% (36+4D10) \
In Phase 3, this deals 300% (54+6D10) instead.

=== Divine Severance — 3 AP
_Melee, Martial vs Evasion, single target_ \
*Damage:* 300% (54+6D10). Ignores Ward. \
*On hit:* Shred 5.

== Vajra Arm (Divine)

_Catalyst damage: 20+2D12_

=== Diamond Lightning — 2 AP
_Burst 5 within 20 squares, Divine vs Evasion_ \
*Damage:* 200% Radiant (40+4D12) \
*On hit:* D10 Grit resist or Stunned for 1 round.

=== Karmic Fire — 3 AP
_Single target within 20 squares, Divine vs Evasion_ \
*Damage:* 300% Radiant (60+6D12) \
*On hit:* Disrupt 5. Target cannot be healed (save ends).

=== Mantra of Binding — 2 AP
_Burst 3 within 15 squares, Divine vs Evasion, no damage_ \
*Effect:* D10 Grit resist or Immobilized and Slowed 3 (save ends both).

== Mirror Arm (Defense / Disruption)

=== Karmic Reflection — Reaction, 1/round
*Trigger:* The Guardian is hit by a ranged attack or spell. \
*Effect:* The attack is reflected back at the attacker using the original attack roll against their Evasion. On hit, the attacker takes the full damage and effects of their own attack. The Guardian takes no damage from the reflected attack.

=== Shattering Gaze — 2 AP
_Single target within 10 squares, no attack roll_ \
*Effect:* D10 Grit resist or Exposed and Disrupted 5 (save ends Exposed; Disrupt is permanent until repaired).

=== Banishing Light — 1 AP
_Single target within 10 squares_ \
*Effect:* D10 Grit resist or the target is banished to a demiplane until the end of their next turn. While banished, the target cannot act, be targeted, or be affected by any effect. On return, the target appears in the nearest unoccupied square to their original position.
