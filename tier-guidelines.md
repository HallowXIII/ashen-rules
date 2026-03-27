# Ashen RPG — Power Tier Design Guidelines

Reference document for writing new spells, exploits, prayers, and psychic powers. Derived from empirical analysis of all existing powers in `main.typ`.

## Dice Math Context

- Base stat caps at 18 dice; specialist at highest tier: ~15 base + 5-10 from equipment/advances = 20-25 dice
- Expected successes ≈ pool_size / 2 (slightly above)
- 50% success threshold = 2× the DC in dice (e.g., DC 10 needs ~20 dice for even odds)
- Damage% is always relative to catalyst/weapon base damage
- D-notation (D4, D6, etc.) = difficulty threshold (successes needed on resistance check)

---

## Master Tier Matrix

| Tier | Damage | Cast DC (Arc / Psy / Div / Mar) | Resist DC | AP | Incr | Area | Identity |
|------|--------|--------------------------------|-----------|-----|------|------|----------|
| 1 | 100% | 2-3 / 4-5 / 2-3 / — | D3-D4 | 1-2 | 0-1 | Single / Cone 10 / Line 10 | One meaningful effect on one target |
| 2 | 200% | 4 / 5-6 / 4 / +2-3 | D4-D6 | 2 | 1-2 | Burst 3 or single | Damage doubles; first AoE and save-or-die |
| 3 | 200% + riders | 6-8 / 7 / 6-8 / 5 or +3 | D6-D8 | 2-3 | 2-3 | Burst 3-5 or Line | Turning point: stacked conditions, mass versions, miss effects appear |
| 4 | 300% (cap) | 8 / 7-8 / 8 / 7 | D7-D9 | 3 | 2-4 | Burst 5-10 or Line 15 | Peak damage; multi-stage powers, resurrection, permanent effects |
| 5 | 300% max | 9-10 / 7-10 / 9-10 / special | D8-D10 | 2-3 | 2-3 | Burst 5 or multi-hit | Qualitative shift: armor bypass, multi-attack, sustained effects, drawbacks |
| 6 | 300% max | 11-12 / 10-12 / 11-12 / 7 | D10-D12 | 3 | 3-4 | Burst 4-10+ | Encounter-reshaping: battlefield control, reality warping, mass immunity |

**Note:** Damage caps at 300% *per hit* from T4 onward. T5-T6 power comes from qualitative effects (armor bypass, instant-kill riders, terrain transformation), not higher per-hit multipliers. However, multi-hit powers may exceed 300% *total* damage (e.g., Noble Eightfold Blade deals 4×100% = 400% total) — this is acceptable because each hit applies the target's armor separately, making the effective damage lower than a single 400% hit.

---

## Range Bands

| Band | Distance | Typical Use |
|------|----------|-------------|
| Self / Melee | 0-1 | Stances, melee exploits |
| Weapon+N | Varies by weapon | Martial exploits |
| Close | ~5 | T1-T2 divine |
| Short | 10-15 | T1-T3 spells/powers |
| Medium | 16-20 | T3-T5 mass effects |
| Long | ~30 | T2 arcane AoE, T4 psychic |
| Extreme | 36+ | Augmented powers only |

---

## Area Size Scaling

| Tier | Typical Area | Notes |
|------|-------------|-------|
| 1 | Template only (Cone 10, Line 10) | No burst AoE |
| 2 | Burst 3 at long range | First true AoE |
| 3 | Burst 3-5 at medium range, or Close Burst 5 | AoE becomes standard |
| 4 | Burst 5-10, or Close Burst 5 | Large AoE; graduated damage by position |
| 5 | Burst 5 at medium range (or multi-hit instead of AoE) | Quality over area size |
| 6 | Close Burst 4-10 (battlefield-scale) | Entire encounter zone |

---

## Duration Patterns

| Duration | Typical Use | Tier Range |
|----------|-------------|------------|
| Instant | Damage, healing, teleportation | Any |
| 1 round (stun) | Hard CC | T1-T3 |
| 2-3 rounds (fixed) | Buffs, temporary effects | T2-T4 |
| Save ends | Ongoing damage, debuffs, curses | T1+ |
| Sustained (AP cost) | Stances, regeneration, zones | Any |
| Permanent | Equipment destruction, terrain alteration | T4+ only |

---

## Effect Complexity Ladder

### T1 — One rider
- Ongoing 3/T (save ends), OR
- Stun 1 round (with resist), OR
- Simple buff/debuff (+/-2 to one stat), OR
- Dice modification (+/-1 to next roll)

### T2 — One strong rider OR two weak
- Ongoing 5/T (save ends), OR
- Save-or-die with very low resist DC (D4 only), OR
- Strong buff (+1 AP, +2 speed, +10 initiative), OR
- 200% damage + secondary (EP drain with resist, or push)

### T3 — Two riders OR one qualitative shift
- Stun + secondary condition (daze+slow, save ends), OR
- Mass version of a T1 debuff (harder resist), OR
- Qualitative dice manipulation (1s count as -2 successes), OR
- Multi-weapon hits halving armor + secondary save
- **Miss effects appear at this tier** (half damage, dazed)

### T4 — Multi-stage OR permanent
- 300% damage + permanent equipment destruction, OR
- Multi-stage resolution (pull → damage → save-or-die), OR
- AoE at half armor + EP drain, OR
- Resurrection with significant drawbacks
- Augment options that dramatically change scope

### T5 — Transcendent
- Mass curse altering fundamental dice mechanics, OR
- 300% armor-ignoring single-target (with caster drawback), OR
- Four-attack sequence with escalating conditions → instant death, OR
- Sustained healing per turn (action economy investment)
- Multiple augment tiers available
- **Drawbacks recommended** (weapon lock, resource sacrifice, caster risk)

### T6 — Encounter-reshaping
- Battlefield-scale immobilize + stun + ongoing damage with escape mechanic, OR
- Mass heal + condition immunity + temp HP, OR
- Terrain transformation, persistent hazard zones, OR
- Effects that alter meta-rules (dice mechanics, turn order, action economy)
- **Each power should feel mechanically unique**, not "bigger T5"

---

## Casting Difficulty by Power Type

### Arcane (Arcane skill check)
| Tier | DC | Designer Note |
|------|-----|--------------|
| 1 | 2-3 | Trivial for trained caster |
| 2 | 4 | Moderate |
| 3 | 6-8 | Challenging; range allows tuning per power |
| 4 | 8 | Hard |
| 5 | 9-10 | Very hard; ~50% for 20-dice specialist |
| 6 | 11-12 | Demands keyword bonuses or top-end build |

### Psychic (Psychic/manifesting check)
| Tier | DC | Designer Note |
|------|-----|--------------|
| 1 | 4-5 | Higher baseline than Arcane |
| 2 | 5-6 | Moderate-challenging |
| 3 | 7 | Hard |
| 4 | 7-8 | Hard+ |
| 5 | 7-10 | Wide range; augments raise DC further |
| 6 | 10-12 | Extreme |

### Divine (Command check)
| Tier | DC | Designer Note |
|------|-----|--------------|
| 1 | 2-3 | Mirrors Arcane baseline |
| 2 | 4 | Moderate |
| 3 | 6-8 | Challenging |
| 4 | 8 | Hard |
| 5 | 9-10 | Very hard |
| 6 | 11-12 | Demands top-end build |

### Martial (Martial skill check, often relative to target Evasion)
| Tier | DC | Designer Note |
|------|-----|--------------|
| 1 | — | No attack roll (stance) |
| 2 | +2 to +3 over Evasion | Modest overhead |
| 3 | 5 flat or +3 over Evasion | Flat DCs for AoE |
| 4 | 7 flat | Flat DC for AoE |
| 5 | Special (escalating) | Multi-attack with rising DC per hit |
| 6 | 7 flat | Low DC compensated by failure drawback |

---

## Resistance DC (D-value) by Power Type

| Tier | Arcane | Psychic | Divine | Martial |
|------|--------|---------|--------|---------|
| 1 | D3 | D4 | — (beneficial) | — |
| 2 | D4 | D4-D5 | — (beneficial) | D6 |
| 3 | D6 | D6 | D6 (offensive prayers) | D6-D8 |
| 4 | D9 | D6-D8 | D7-D9 | D7-D8 |
| 5 | D8-D10 | D8 | D8-D10 | D9 |
| 6 | D10-D12 | D10+ | D10-D12 | D6-D8 |

**Resistance skills by power type:**
- **Arcane:** Stamina (elemental/physical) or Dodge (area avoidance)
- **Psychic:** Potential (mental) or Stamina (physical effects like Implosion/Banish)
- **Divine:** Typically none (beneficial). Offensive divine would use Potential or Stamina.
- **Martial:** Potential (spiritual: stilling, EP drain), Stamina (physical: stun, push), or Dodge (AoE via Dive)

---

## Design Checklist

For each new power, verify:

1. [ ] **Damage** at or below tier cap?
2. [ ] **Casting DC** within range for this power type + tier?
3. [ ] **Resist DC** within band? Correct resist skill?
4. [ ] **AP** is 2-3? If AP 2 at T4+, compensating factor present?
5. [ ] **Increments** within range?
6. [ ] **Range** matches expected band?
7. [ ] **Area** appropriate? Larger area → lower per-target damage or higher cost?
8. [ ] **Duration** pattern matches effect type?
9. [ ] **Rider count** matches tier complexity allowance?
10. [ ] **Miss effect** included? (T3+ high-cost powers)
11. [ ] **Drawback** included? (recommended T5+)
12. [ ] **Augments** reasonable? (Psychic only)
13. [ ] **Tap** meaningful but not mandatory? (Divine only)
14. [ ] **Weapon prerequisite** appropriate? (Martial only)
15. [ ] **Tier identity** — does it feel like it belongs here, not one tier above or below?

---

## Known Exceptions in Existing Content

| Power | Deviation | Justification |
|-------|-----------|---------------|
| Piercing Silence (Psy T1) | Burst 3 + 2 incr (high for T1) | Zone-denial utility, no damage |
| Banish (Psy T2) | Save-or-die at T2 | D4 Stamina resist = frequently fails vs strong foes |
| Ice Storm (Arc T3) | DC 8 (high for T3) | Compensates for large area + dual conditions |
| Implosion (Psy T4) | Only 2 increments | Complex multi-stage + large area offsets low cost |
| Wounds from Nowhere (Psy T5) | DC 7 / 2 incr (low for T5) | Requires unique weapon (Void Blade) + disarms caster |
| Forest of Corpses (Mar T6) | DC 7 (low for T6) | Requires legendary weapon + failure penalty |

---

## Cross-Type Balance Notes

- **Arcane** deals the most raw damage but is resource-limited by spell memory slots and increment costs. Lowest casting DCs (formulaic, repeatable magic).
- **Psychic** trades raw damage for versatility (augment system) and qualitative effects (dice/fate manipulation). Higher casting DCs. A single power can function at effectively tier+1 via augments.
- **Divine** uses the same DC scale as Arcane. Prayers are utility/support focused. Resource-limited by reliquary favor (tap system). **Note:** Existing Life domain prayers in `main.typ` use a legacy DC scale (Command 12-22) and fixed healing expressions (e.g., 2D8+Will) — these need revision to use standard DCs and catalyst-percentage healing.
- **Martial** uses relative DCs at low tiers, flat DCs for AoE at high tiers. Lowest resource cost (no/few increments) but limited by weapon prerequisites and physical positioning. Should never feel like spells.
