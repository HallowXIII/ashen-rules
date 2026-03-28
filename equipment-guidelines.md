# Ashen RPG — Equipment Design Guidelines

Reference document for designing and balancing equipment across all tiers.

---

## Weapon Damage by Tier

Canonical damage values by tier, weight class, and variance level.

**Variance:** LV = low variance (high floor, low ceiling), MV = medium, HV = high variance (low floor, high ceiling). Most standard weapons use MV. LV suits reliable/precise weapons; HV suits brutal/unpredictable ones.

### Melee Weapons & Catalysts

| Tier | Light LV | Light MV | Light HV | Med LV | Med MV | Med HV | Heavy LV | Heavy MV | Heavy HV |
|------|----------|----------|----------|--------|--------|--------|----------|----------|----------|
| 0 | 4+D3 | 3+D4 | 2+D6 | 5+D3 | 4+D4 | 3+D6 | 6+D3 | 4+D6 | 3+D8 |
| 1 | 6+D3 | 4+D6 | 3+D8 | 8+D3 | 6+D6 | 5+D8 | 11+D3 | 8+D8 | 6+D12 |
| 2 | 7+D4 | 6+D6 | 4+D10 | 11+D4 | 9+D8 | 7+D12 | 15+D4 | 12+D10 | 9+2D8 |
| 3 | 11+D4 | 9+D8 | 7+D12 | 15+D6 | 12+D10 | 9+2D8 | 20+D6 | 16+D12 | 12+2D10 |
| 4 | 14+D6 | 12+D10 | 8+2D8 | 19+D8 | 16+D12 | 12+2D10 | 25+D8 | 20+2D8 | 15+2D12 |
| 5 | 17+D8 | 14+D12 | 11+2D10 | 23+D10 | 20+2D8 | 15+2D12 | 30+D10 | 24+2D10 | 18+3D10 |
| 6 | 21+D10 | 18+2D8 | 14+2D12 | 27+2D8 | 24+2D10 | 18+3D10 | 35+2D6 | 29+2D12 | 22+4D10 |

**Average damage by tier (MV):**

| Tier | Light | Medium | Heavy |
|------|-------|--------|-------|
| 0 | 5.5 | 6.5 | 7.5 |
| 1 | 7.5 | 9.5 | 12.5 |
| 2 | 9.5 | 13.5 | 17.5 |
| 3 | 13.5 | 18.0 | 23.0 |
| 4 | 17.5 | 22.8 | 28.8 |
| 5 | 21.2 | 28.5 | 35.0 |
| 6 | 26.8 | 35.2 | 41.5 |

**Die progression:** D3 > D4 > D6 > D8 > D10 > D12 > 2D8 > 2D10 > 3D8 > 3D10 > 3D12 > 4D10 > 4D12
**Average values:** 1.5 > 2.5 > 3.5 > 4.5 > 5.5 > 6.5 > 9 > 11 > 13.5 > 16.5 > 19.5 > 22 > 26

### Ranged Weapons

Ranged weapons follow the same damage table as melee for their weight class. Adjustments:
- **Single-shot weapons** deal damage at tier+1 (e.g., a T2 single-shot rifle uses T3 damage values). This compensates for the inability to make multiple attacks per round.
- Ranged weapons with very long range may have slightly lower damage
- Ranged weapons with area effects (cone, blast) may have lower per-target damage
- **Anti-vehicle weapons** (e.g., rocket launchers) are a separate category — they can only target size 3+ and have extreme damage values outside the normal scaling

### Special Weapon Patterns

- **Split damage weapons** (e.g., Hoarfrost): Listed damage is dealt twice — once reduced by Armor, once by Ward. Effective total is 2× listed damage but both defenses apply. These appear lower on paper but are strong against balanced targets.
- **High-penetration weapons**: May have lower base damage as a tradeoff. Penetration bypasses Armor directly, so lower damage + high Pen can outperform higher damage + no Pen against armored targets.
- **Silvered/special material weapons**: May trade damage for keywords or penetration that bypass specific resistances.

---

## Armor Scaling by Tier

| Tier | Light Armor | Light Ward | Light Bulk | Med Armor | Med Ward | Med Bulk | Heavy Armor | Heavy Ward | Heavy Bulk |
|------|-------------|------------|------------|-----------|----------|----------|-------------|------------|------------|
| 0 | 2 | 2 | 1 | 3 | 2 | 2 | 6 | 4 | 3 |
| 1 | 3 | 3 | 1 | 5 | 4 | 2 | 8 | 6 | 4 |
| 2 | 5 | 4 | 1 | 8 | 5 | 3 | 11 | 8 | 4 |
| 3 | 8 | 5 | 2 | 10 | 7 | 3 | 15 | 10 | 5 |
| 4 | 12 | 9 | 2 | 19 | 12 | 3 | 25 | 20 | 5 |
| 5 | 11 | 8 | 2 | 15 | 10 | 4 | 24 | 16 | 6 |
| 6 | 14 | 11 | 2 | 19 | 13 | 4 | 30 | 20 | 7 |

**Evasion guidelines:**
- Light armor: +1 to +2 Evasion
- Medium armor: 0 to +1 Evasion
- Heavy armor: -1 to -4 Evasion
- Higher-tier armor within a weight class may improve evasion slightly

---

## Charge (Magical Encumbrance)

Charge is the magical equivalent of Bulk. Characters have both a Bulk capacity (from Strength/Endurance) and a Charge capacity (from Attunement).

**Charge assignment guidelines:**
- **Non-magical items** (mundane weapons, basic armor): Charge 0
- **Lightly magical items** (enchanted weapons, warded armor): Charge ≈ half Bulk
- **Heavily magical items** (catalysts, reliquaries, magical robes): Charge ≥ Bulk; may have Bulk 0 + high Charge
- **Design principle:** Physical warriors invest in Bulk capacity; casters invest in Charge capacity; hybrid builds need both. Equipment should reinforce this tradeoff.

---

## Price Scaling by Tier

Approximate price ranges (in Florins, Ƒ):

| Tier | Weapons | Armor | Catalysts | Consumables |
|------|---------|-------|-----------|-------------|
| 0 | 0–50 | 0–50 | — | 10–50 |
| 1 | 100–500 | 100–500 | 200–600 | 50–250 |
| 2 | 500–1500 | 500–1500 | 600–1500 | 150–500 |
| 3 | 1500–3500 | 1500–3000 | 1500–3000 | 300–1000 |
| 4 | 5000–8000 | 5000–6500 | 3000–6000 | 500–2000 |
| 5 | 8000–15000 | 8000–12000 | 6000–10000 | 1000–5000 |
| 6 | Unique/Priceless | Unique/Priceless | Unique/Priceless | 2000–10000 |

---

## Weapon Keywords

- **Heavy:** Must be braced before firing. Firing without bracing = hip-firing (penalty).
- **Rapid Fire:** +2 automatic successes when target is within half range.
- **Assault:** Hip-fire penalty halved (-1 instead of -2 single, -2 instead of -4 auto).
- **Sidearm:** Draw/stow as free action once per turn. Can draw with a hand "occupied" by a two-handed weapon.
- **Burning:** Target catches fire on hit (ongoing Thermal damage, save ends).
- **Explosive:** Blast radius effect.
- **Jet:** Propelled projectile.
- **Overload:** Risk of weapon overheating/malfunction.
- **Poisonous (N):** Target must pass D(N) Stamina or be Poisoned.
- **Parry +Nd:** Adds +N dice to parry checks.
- **Powered:** Requires power source / charge.
- **Reliable:** Reduced malfunction chance.

---

## Table Formats

### Weapon Table (standard)
Columns: Name, Tier, Price, Damage, Pen, Bulk, Hands, Range, FM, Special

- **Pen:** Penetration value (ignores this much Armor on hit)
- **FM:** Fire Mode — S (single), SA N/M (semi-auto N shots/M penalty), FA N (full auto N shots), — (melee)
- **Range:** Melee, Short (5), Medium (10), Long (15-20), Very Long (25+), or specific (Cone N, Line N, Burst N)

### Armor Table (standard)
Columns: Name, Tier, Price, Armor, Ward, Evasion, Bulk, Charge

### Catalyst Table (standard)
Columns: Name, Tier, Type (Arc/Psy), Class (Light/Med), Bulk, Charge, Hands, Damage, Increment

### Consumable Table (standard)
Columns: Name, Tier, Type, Bulk, Range, Effect, Cost

### General Gear Table
Columns: Name, Bulk, Cost, Effect (where relevant)
