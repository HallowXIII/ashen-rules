#!/usr/bin/env python3
"""
Ashen RPG Build Optimizer

Finds optimal attribute + characteristic allocations under different
characteristic-to-attribute mappings, to evaluate the build impact of
changing Martial from STR+AGI to STR+DEX.

Usage: python3 tools/build_optimizer.py
"""

from itertools import product


# ── XP Costs ──

# Cumulative XP to advance an attribute from rank 1 to rank N
ATTR_CUM = [0, 0, 300, 850, 1850, 3700, 7100]

# Cumulative XP to advance a characteristic from rank 1 to rank N
CHAR_CUM = [0, 0, 150, 425, 925, 1850, 3550]

# Characteristic prerequisites: linked attr rank sum must be >= this
CHAR_PREREQ = [0, 0, 0, 0, 0, 4, 6]


def max_attr_rank(total_xp):
    """Highest attribute rank purchasable at a given total XP."""
    if total_xp >= 15000: return 6
    if total_xp >= 7500:  return 5
    if total_xp >= 3500:  return 4
    return 3


# ── Characteristic Systems ──

CURRENT = {
    "Martial":      ("STR", "AGI"),
    "Marksmanship": ("DEX", "PER"),
    "Initiative":   ("SGT", "INT"),
    "Speed":        ("AGI", "END"),
    "Stamina":      ("STR", "END"),
    "Potential":    ("ATT", "WIL"),
    "Arcane":       ("ATT", "INT"),
    "Psychic":      ("SGT", "WIL"),
    "Command":      ("PRS", "WIL"),
    "Dodge":        ("AGI", "PER"),
    "Grit":         ("END", "WIL"),
}

PROPOSED = dict(CURRENT)
PROPOSED["Martial"] = ("STR", "DEX")


# ── Optimizer ──

def optimize(system, targets, budget=10000, total_xp=10000):
    """
    Find the attribute + characteristic rank allocation that maximises a
    weighted sum of characteristic ratings within the XP budget.

    Parameters
    ----------
    system : dict   — characteristic-to-attribute mapping
    targets : dict  — {char_name: weight} to optimise
    budget : int    — XP available
    total_xp : int  — total XP earned (determines max attribute rank)

    Returns
    -------
    (best_build dict, number_of_evaluations)
    """
    mar = max_attr_rank(total_xp)
    chars = list(targets.keys())
    weights = [targets[c] for c in chars]

    # Relevant attributes (only those that feed a target characteristic)
    attrs = sorted(set(a for c in chars for a in system[c]))

    # Pre-compute which attrs feed each target char (as indices into attrs)
    char_attr_idx = []
    for c in chars:
        a1, a2 = system[c]
        char_attr_idx.append((attrs.index(a1), attrs.index(a2)))

    best_score = -1
    best = None
    evals = 0

    for attr_combo in product(range(1, mar + 1), repeat=len(attrs)):
        attr_cost = sum(ATTR_CUM[r] for r in attr_combo)
        if attr_cost > budget:
            continue

        remaining = budget - attr_cost

        # Max char rank for each target given attr prerequisites
        char_maxes = []
        for i1, i2 in char_attr_idx:
            asum = attr_combo[i1] + attr_combo[i2]
            mr = 6
            while mr > 1 and asum < CHAR_PREREQ[mr]:
                mr -= 1
            char_maxes.append(mr)

        for char_combo in product(*(range(1, m + 1) for m in char_maxes)):
            char_cost = sum(CHAR_CUM[r] for r in char_combo)
            if char_cost > remaining:
                continue

            evals += 1
            score = 0
            for j, (i1, i2) in enumerate(char_attr_idx):
                rating = char_combo[j] + attr_combo[i1] + attr_combo[i2]
                score += rating * weights[j]

            total_cost = attr_cost + char_cost
            if score > best_score or (
                score == best_score and total_cost < best["xp"]
            ):
                best_score = score
                ratings = {}
                for j, c in enumerate(chars):
                    i1, i2 = char_attr_idx[j]
                    ratings[c] = char_combo[j] + attr_combo[i1] + attr_combo[i2]
                best = {
                    "attrs": dict(zip(attrs, attr_combo)),
                    "chars": dict(zip(chars, char_combo)),
                    "ratings": ratings,
                    "xp": total_cost,
                    "score": best_score,
                }

    return best, evals


def all_char_ratings(system, attr_ranks):
    """All characteristic ratings at rank 1 given the attribute ranks."""
    return {
        c: 1 + attr_ranks.get(a1, 1) + attr_ranks.get(a2, 1)
        for c, (a1, a2) in system.items()
    }


# ── Display ──

def print_build(label, build, system, targets):
    print(f"\n  {label}")
    print(f"  {'─' * 56}")

    attrs = build["attrs"]
    print(f"\n  Attributes:")
    for a in sorted(attrs, key=lambda x: -attrs[x]):
        r = attrs[a]
        bar = "█" * r + "░" * (6 - r)
        print(f"    {a:4s} {bar} {r}  ({ATTR_CUM[r]:>5d} XP)")

    print(f"\n  Target characteristics:")
    for c in targets:
        cr = build["chars"][c]
        a1, a2 = system[c]
        ar1 = attrs.get(a1, 1)
        ar2 = attrs.get(a2, 1)
        rating = build["ratings"][c]
        w = targets[c]
        marker = "★" if w >= 2 else "☆"
        print(
            f"    {marker} {c:14s}: char {cr}"
            f" + {a1}({ar1}) + {a2}({ar2})"
            f" = {rating:2d}   [{CHAR_CUM[cr]:>5d} XP]"
        )

    # Non-targeted chars that benefit from invested attrs
    free = all_char_ratings(system, attrs)
    bonus = {c: r for c, r in free.items() if c not in targets and r > 3}
    if bonus:
        print(f"\n  Collateral benefits (rank 1, no direct investment):")
        for c in sorted(bonus, key=lambda x: -bonus[x]):
            a1, a2 = system[c]
            print(
                f"      {c:14s}: 1 + {a1}({attrs.get(a1,1)})"
                f" + {a2}({attrs.get(a2,1)}) = {bonus[c]:2d}"
            )

    print(f"\n  XP spent: {build['xp']:>5d} / 10000  "
          f"(remaining: {10000 - build['xp']:>5d})")
    print(f"  Score:    {build['score']}")


def compare(name, targets, note=""):
    print(f"\n{'━' * 60}")
    print(f"  ARCHETYPE: {name}")
    tgt_str = ", ".join(f"{c}(×{w})" for c, w in targets.items())
    print(f"  Targets: {tgt_str}")
    if note:
        print(f"  Note: {note}")
    print(f"{'━' * 60}")

    results = {}
    for tag, system in [("Current  (Martial = STR+AGI)", CURRENT),
                         ("Proposed (Martial = STR+DEX)", PROPOSED)]:
        build, evals = optimize(system, targets)
        results[tag] = build
        print_build(tag, build, system, targets)
        print(f"  ({evals:,} combos evaluated)")

    # Delta summary
    tags = list(results.keys())
    r0 = results[tags[0]]
    r1 = results[tags[1]]
    print(f"\n  Δ Summary (proposed vs current):")
    for c in targets:
        diff = r1["ratings"][c] - r0["ratings"][c]
        sign = "+" if diff >= 0 else ""
        print(f"    {c:14s}: {r0['ratings'][c]:2d} → {r1['ratings'][c]:2d}  ({sign}{diff})")
    xp_diff = r1["xp"] - r0["xp"]
    sign = "+" if xp_diff >= 0 else ""
    print(f"    {'XP spent':14s}: {r0['xp']:>5d} → {r1['xp']:>5d}  ({sign}{xp_diff})")
    score_diff = r1["score"] - r0["score"]
    sign = "+" if score_diff >= 0 else ""
    print(f"    {'Score':14s}: {r0['score']:>5d} → {r1['score']:>5d}  ({sign}{score_diff})")


def main():
    compare(
        "Nimble Duelist",
        {"Martial": 3, "Dodge": 3, "Speed": 2},
        note="High Martial + high evasion + mobility. Most affected archetype.",
    )

    compare(
        "Sword and Pistol",
        {"Martial": 3, "Marksmanship": 3, "Dodge": 2},
        note="Martial + Marksmanship hybrid. Most upside-affected archetype.",
    )

    compare(
        "Heavy Sword and Pistol",
        {"Martial": 3, "Marksmanship": 3, "Stamina": 2},
        note="Armored Martial + Marksmanship hybrid. Most upside-affected archetype.",
    )

    compare(
        "Armored Brawler",
        {"Martial": 3, "Stamina": 3, "Grit": 2},
        note="Tough melee fighter. STR/END overlap unaffected by Martial change.",
    )

    compare(
        "Martial-Arcane Hybrid",
        {"Martial": 3, "Arcane": 2, "Dodge": 2},
        note="Gish build — melee + arcane casting + some evasion.",
    )

    compare(
        "Ranged Fighter (control)",
        {"Marksmanship": 3, "Dodge": 3, "Initiative": 2},
        note="Does not use Martial — results should be identical.",
    )

    compare(
        "Divine Commander (control)",
        {"Command": 3, "Potential": 3, "Grit": 2},
        note="Does not use Martial — results should be identical.",
    )


if __name__ == "__main__":
    main()
