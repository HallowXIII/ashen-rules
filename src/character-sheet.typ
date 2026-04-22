#import "declarations.typ": feathers
#import "formatting/style.typ": colors

// Character sheet — designed as a printable appendix

#set page(
  paper: "a4",
  columns: 1,
  margin: (left: 10mm, right: 10mm, top: 10mm, bottom: 10mm),
  numbering: none,
)

#set text(
  font: ("Sofia Sans", "Liberation Sans"),
  size: 8pt,
  stretch: 80%,
)

#set par(spacing: 0.3em, justify: false, first-line-indent: 0em)

// ── Helper functions ──────────────────────────────────────────────────

#let sheet-header(title) = {
  rect(
    width: 100%,
    radius: (top-left: 6pt, top-right: 3pt),
    fill: colors.pfnavy,
    stroke: none,
    inset: 5pt,
    text(fill: white, weight: "bold", size: 9pt, title),
  )
}

#let field(label, width: 1fr, height: 18pt) = {
  box(width: width, inset: 2pt)[
    #text(size: 6.5pt, fill: luma(100), weight: "bold", upper(label))
    #v(2pt)
    #rect(
      width: 100%,
      height: height,
      stroke: (bottom: 0.5pt + luma(160)),
      fill: none,
    )
  ]
}

#let score-box(label) = {
  box(width: 100%, inset: 2pt)[
    #align(center)[
      #rect(width: 28pt, height: 26pt, stroke: 0.6pt + luma(100), radius: 3pt)
      #v(-1pt)
      #text(size: 6.5pt, fill: luma(80), weight: "bold", smallcaps(label))
    ]
  ]
}

#let val-box(label, width: 100%, height: 32pt, accent: luma(100)) = {
  align(center)[
    #rect(width: width, height: height, stroke: 0.7pt + accent, radius: 3pt)
    #v(-1pt)
    #text(size: 6.5pt, weight: "bold", fill: accent, label)
  ]
}

#let char-row(label, attrs) = {
  grid(
    columns: (5fr, 2fr, 2fr, 2fr),
    column-gutter: 3pt,
    align: (
      left + horizon,
      center + horizon,
      center + horizon,
      center + horizon,
    ),
    text(
      size: 7.5pt,
      weight: "bold",
      label + "  " + text(size: 6pt, fill: luma(110), weight: "regular", attrs),
    ),
    rect(width: 100%, height: 18pt, stroke: 0.4pt + luma(140), radius: 2pt),
    rect(width: 100%, height: 18pt, stroke: 0.4pt + luma(140), radius: 2pt),
    rect(
      width: 100%,
      height: 18pt,
      stroke: 0.6pt + luma(80),
      radius: 2pt,
      fill: colors.otherRow,
    ),
  )
}

#let skill-row(label, attrs, trained: false) = {
  grid(
    columns: (10pt, 4fr, 2fr, 2fr, 2fr),
    column-gutter: 3pt,
    align: (
      center + horizon,
      left + horizon,
      center + horizon,
      center + horizon,
      center + horizon,
    ),
    if trained {
      rect(width: 10pt, height: 10pt, stroke: 0.5pt + luma(120), radius: 2pt)
    } else { box(width: 10pt) },
    text(
      size: 7pt,
      weight: "bold",
      label
        + "  "
        + text(size: 5.5pt, fill: luma(120), weight: "regular", attrs),
    ),
    rect(width: 100%, height: 16pt, stroke: 0.4pt + luma(140), radius: 2pt),
    rect(width: 100%, height: 16pt, stroke: 0.4pt + luma(140), radius: 2pt),
    rect(
      width: 100%,
      height: 16pt,
      stroke: 0.6pt + luma(80),
      radius: 2pt,
      fill: colors.otherRow,
    ),
  )
}

#let condition-box(label) = {
  box(inset: (x: 2pt, y: 2pt))[
    #grid(
      columns: (10pt, auto),
      column-gutter: 3pt,
      align: horizon,
      rect(width: 10pt, height: 10pt, stroke: 0.5pt + luma(100), radius: 2pt),
      text(size: 7pt, label),
    )
  ]
}

#let stacking-condition(label) = {
  box(inset: 2pt)[
    #grid(
      columns: (1fr, 3fr),
      column-gutter: 3pt,
      align: horizon,
      text(size: 7pt, weight: "bold", label),
      rect(width: 100%, height: 14pt, stroke: 0.5pt + luma(120), radius: 2pt),
    )
  ]
}

#let note-line() = {
  v(10pt)
  line(length: 100%, stroke: 0.3pt + luma(190))
}

#let check-line() = {
  v(4pt)
  grid(
    columns: (6pt, 1fr),
    column-gutter: 4pt,
    align: horizon,
    rect(width: 6pt, height: 6pt, stroke: 0.5pt + luma(100), radius: 2pt),
    [#v(5pt) #line(length: 100%, stroke: 0.3pt + luma(190))],
  )
}

#let compact-field(label, width: 1fr) = {
  box(width: width, inset: (x: 1pt, y: 0pt))[
    #text(size: 5.5pt, fill: luma(100), weight: "bold", upper(label))
    #h(2pt)
    #box(width: 1fr, baseline: -1pt, line(
      length: 100%,
      stroke: 0.4pt + luma(160),
    ))
  ]
}

#let power-card(i) = {
  rect(
    width: 100%,
    stroke: 0.4pt + luma(140),
    radius: 2pt,
    inset: 4pt,
  )[
    // Row 1: checkbox + name + type + tier
    #grid(
      columns: (8pt, 1fr, 3fr, 2fr, 1.2fr),
      column-gutter: 2pt,
      align: horizon,
      rect(width: 7pt, height: 7pt, stroke: 0.5pt + luma(100), radius: 1pt),
      h(0pt),
      compact-field("Name"),
      compact-field("Type"),
      compact-field("T"),
    )
    #v(3pt)
    // Row 2: AP + cost + difficulty + range
    #grid(
      columns: (1fr, 2fr, 1.2fr, 2fr),
      column-gutter: 2pt,
      compact-field("AP"),
      compact-field("Cost"),
      compact-field("Diff"),
      compact-field("Range"),
    )
    #v(3pt)
    // Row 3: keywords + resistance
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 2pt,
      compact-field("Keywords"), compact-field("Resist"),
    )
    #v(11pt)
    // Rows 4-6: effect lines
    #text(size: 5.5pt, smallcaps("Effect"))
    #line(length: 100%, stroke: 0.3pt + luma(190))
    #v(8pt)
    #line(length: 100%, stroke: 0.3pt + luma(190))
    #v(8pt)
    #line(length: 100%, stroke: 0.3pt + luma(190))
  ]
}

#let advance-row() = {
  grid(
    columns: (4fr, 1fr, 1fr, 1fr, 1fr),
    column-gutter: 2pt,
    rect(width: 100%, height: 15pt, stroke: (bottom: 0.3pt + luma(190))),
    rect(width: 100%, height: 15pt, stroke: (bottom: 0.3pt + luma(190))),
    rect(width: 100%, height: 15pt, stroke: (bottom: 0.3pt + luma(190))),
    rect(width: 100%, height: 15pt, stroke: (bottom: 0.3pt + luma(190))),
    rect(width: 100%, height: 15pt, stroke: (bottom: 0.3pt + luma(190))),
  )
}

// ══════════════════════════════════════════════════════════════════════
// PAGE 1 — Character
// ══════════════════════════════════════════════════════════════════════

#align(center, text(
  font: "Libre Baskerville",
  size: 18pt,
  fill: colors.pfgreen,
  weight: "bold",
  "Ashen — Character Sheet",
))

#v(6pt)

// ── Top row: Identity + Vitals ────────────────────────────────────

#grid(
  columns: (3fr, 2fr),
  column-gutter: 8pt,
  {
    sheet-header("Identity")
    v(3pt)
    grid(
      columns: (3fr, 2fr),
      column-gutter: 4pt,
      field("Character Name"), field("Race / Subtype"),
    )
    v(2pt)
    grid(
      columns: (1fr, 1fr, 1fr, 1fr),
      column-gutter: 4pt,
      field("Total SP"),
      field("Available SP"),
      field("Total XP"),
      field("Available XP"),
    )
  },
  {
    sheet-header("Vital Resources")
    v(3pt)
    grid(
      columns: (1fr, 1fr, 1fr, 1fr),
      column-gutter: 4pt,
      val-box("HP", accent: colors.pfred, height: 36pt),
      val-box("FP", accent: colors.pfnavy, height: 36pt),
      val-box("EP", accent: colors.lightgreen, height: 36pt),
      val-box(
        [#text(font: ("Sofia Sans",), size: 8pt, "ƒ")],
        accent: colors.pfbrown,
        height: 36pt,
      ),
    )
    v(2pt)
    grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 4pt,
      {
        align(center)[
          #text(size: 6pt, fill: luma(120), "Current HP")
          #rect(
            width: 100%,
            height: 20pt,
            stroke: 0.5pt + colors.pfred,
            radius: 2pt,
          )
        ]
      },
      {
        align(center)[
          #text(size: 6pt, fill: luma(120), "Current FP")
          #rect(
            width: 100%,
            height: 20pt,
            stroke: 0.5pt + colors.pfnavy,
            radius: 2pt,
          )
        ]
      },
      {
        align(center)[
          #text(size: 6pt, fill: luma(120), "Current EP")
          #rect(
            width: 100%,
            height: 20pt,
            stroke: 0.5pt + colors.lightgreen,
            radius: 2pt,
          )
        ]
      },
    )
  },
)

#v(6pt)

// ── Main body: three columns ──────────────────────────────────────

#grid(
  columns: (1fr, 1.1fr, 1fr),
  column-gutter: 8pt,

  // ── COLUMN 1: Attributes + Characteristics ──────────────────────
  {
    sheet-header("Attributes")
    v(4pt)
    grid(
      columns: (1fr, 1fr),
      column-gutter: 4pt,
      row-gutter: 4pt,
      score-box("Strength (STR)"), score-box("Endurance (END)"),
      score-box("Dexterity (DEX)"), score-box("Agility (AGI)"),
      score-box("Attunement (ATT)"), score-box("Sight (SGT)"),
      score-box("Intelligence (INT)"), score-box("Perception (PER)"),
      score-box("Will (WIL)"), score-box("Presence (PRS)"),
    )
    v(8pt)

    sheet-header("Characteristics")
    v(2pt)
    // Column headers
    grid(
      columns: (5fr, 2fr, 2fr, 2fr),
      column-gutter: 3pt,
      align: (left + bottom, center + bottom, center + bottom, center + bottom),
      [],
      text(size: 5.5pt, fill: luma(120), weight: "bold", "RANK"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "BONUS"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "RATING"),
    )
    v(2pt)
    stack(
      spacing: 3pt,
      char-row("Martial", "STR+AGI"),
      char-row("Marksmanship", "DEX+PER"),
      char-row("Initiative", "SGT+INT"),
      char-row("Speed", "AGI+END"),
      char-row("Stamina", "STR+END"),
      char-row("Potential", "ATT+WIL"),
      char-row("Arcane", "ATT+INT"),
      char-row("Psychic", "SGT+WIL"),
      char-row("Command", "PRS+WIL"),
      char-row("Dodge", "AGI+PER"),
      char-row("Grit", "END+WIL"),
    )

    v(8pt)

    sheet-header("Status Conditions")
    v(4pt)
    grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 1pt,
      row-gutter: 3pt,
      condition-box("Blinded"),
      condition-box("Dazed"),
      condition-box("Disoriented"),

      condition-box("Exposed"),
      condition-box("Panicked"),
      condition-box("Staggered"),

      condition-box("Stunned"),
      condition-box("Vulnerable"),
      condition-box("Prone"),

      condition-box("Immobilized"),
      condition-box("Restrained"),
      condition-box("Frozen"),

      condition-box("Weakened"),
      condition-box("Dominated"),
      condition-box("Exhausted"),

      condition-box("Poisoned"),
      condition-box("Diseased"),
      condition-box("Bleeding"),

      condition-box("Burning"),
      condition-box("Frightened"),
      condition-box("Still"),

      condition-box("Disrupt ×"),
      condition-box("Shred ×"),
      condition-box("Slowed ×"),
    )
  },

  // ── COLUMN 2: Skills + Combat Values ────────────────────────────
  {
    sheet-header("Combat Values")
    v(4pt)
    grid(
      columns: (1fr, 1fr, 1fr),
      column-gutter: 4pt,
      row-gutter: 4pt,
      val-box("Evasion"), val-box("Armor"), val-box("Ward"),
      val-box("Move Speed"), val-box("AP / Turn"),
    )
    v(4pt)
    stack(
      field("Resistances / Weaknesses / Immunities", height: 10pt),
      for i in range(5) {
        note-line()
      },
    )
    v(4pt)
    sheet-header("Skills")
    v(2pt)
    text(
      size: 6pt,
      fill: luma(120),
      style: "italic",
      "Trained skills (☐) start at rank 0; untrained start at rank 1.",
    )
    v(2pt)
    // Column headers
    grid(
      columns: (5fr, 2fr, 2fr, 2fr),
      column-gutter: 3pt,
      align: (left + bottom, center + bottom, center + bottom, center + bottom),
      [],
      text(size: 5.5pt, fill: luma(120), weight: "bold", "RANK"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "BONUS"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "RATING"),
    )
    v(2pt)
    stack(
      spacing: 2pt,
      skill-row("Acrobatics", "AGI+DEX"),
      skill-row("Athletics", "STR+END"),
      skill-row("Awareness", "PER+SGT"),
      skill-row("Deceive", "INT+PRS"),
      skill-row("Eerie", "ATT+SGT"),
      skill-row("Impose", "PRS+WIL"),
      skill-row("Influence", "PRS+INT"),
      skill-row("Investigate", "INT+PER"),
      skill-row("Subterfuge", "DEX+INT"),
      v(3pt),
      skill-row("Access", "DEX+INT", trained: true),
      skill-row("Alchemy", "INT+PER", trained: true),
      skill-row("Electronics", "DEX+INT", trained: true),
      skill-row("Magitek", "ATT+INT", trained: true),
      skill-row("Occultism", "SGT+ATT", trained: true),
      skill-row("Piloting", "DEX+PER", trained: true),
      skill-row("Ritual", "ATT+WIL", trained: true),
      skill-row("Shop", "STR+DEX", trained: true),
    )
    v(8pt)


    sheet-header("Languages")
    v(1pt)
    for i in range(6) {
      note-line()
    }
  },

  // ── COLUMN 3: Active Effects + Notes (Permanent Effects) ─────────────────────────
  {
    sheet-header("Active Effects")
    v(4pt)
    for i in range(6) {
      note-line()
    }

    sheet-header("Notes & Permanent Effects (Items, Advances...)")
    v(8pt)
    for i in range(42) {
      note-line()
    }
  },
)

// ══════════════════════════════════════════════════════════════════════
// PAGE 2 — Advances
// ══════════════════════════════════════════════════════════════════════

#pagebreak()

#align(center, text(
  font: "Libre Baskerville",
  size: 18pt,
  fill: colors.pfgreen,
  weight: "bold",
  "Ashen — Advances",
))

#v(6pt)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 10pt,

  {
    sheet-header("Advances")
    v(2pt)
    grid(
      columns: (4fr, 1fr, 1fr, 1fr, 1fr),
      column-gutter: 2pt,
      align: (
        left + bottom,
        center + bottom,
        center + bottom,
        center + bottom,
        center + bottom,
      ),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "NAME"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "TIER"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "XP"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "HP"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "FP"),
    )
    v(1pt)
    for i in range(42) {
      advance-row()
    }
  },

  {
    sheet-header("Advances (cont.)")
    v(2pt)
    grid(
      columns: (4fr, 1fr, 1fr, 1fr, 1fr),
      column-gutter: 2pt,
      align: (
        left + bottom,
        center + bottom,
        center + bottom,
        center + bottom,
        center + bottom,
      ),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "NAME"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "TIER"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "XP"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "HP"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "FP"),
    )
    v(1pt)
    for i in range(42) {
      advance-row()
    }
  },
)

// ══════════════════════════════════════════════════════════════════════
// PAGE 3 — Equipment & Inventory
// ══════════════════════════════════════════════════════════════════════

#pagebreak()

#align(center, text(
  font: "Libre Baskerville",
  size: 18pt,
  fill: colors.pfgreen,
  weight: "bold",
  "Ashen — Equipment & Inventory",
))

#v(6pt)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,

  // ── LEFT: Weapons + Armor ──────────────────────────────────────
  {
    sheet-header("Weapons")
    v(2pt)
    for i in range(3) {
      grid(
        columns: (3fr, 1fr, 1fr, 1fr),
        column-gutter: 3pt,
        field("Name", height: 12pt),
        field("Tier", height: 12pt),
        field("Price", height: 12pt),
        field("Hands", height: 12pt),
      )
      grid(
        columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
        column-gutter: 3pt,
        field("Dmg", height: 12pt),
        field("Pen", height: 12pt),
        field("Bulk", height: 12pt),
        field("Chg", height: 12pt),
        field("Inc", height: 12pt),
        field("Range", height: 12pt),
        field("FM", height: 12pt),
      )
      field("Technology / Treatment / Enchantments / Keywords", height: 12pt)
      v(4pt)
    }

    v(4pt)

    sheet-header("Armor Layers")
    v(2pt)
    for i in range(3) {
      grid(
        columns: (3fr, 1fr, 1fr, 1fr),
        column-gutter: 3pt,
        field("Name / Material", height: 14pt),
        field("Tier", height: 12pt),
        field("Profile", height: 12pt),
        field("Price", height: 12pt),
      )
      grid(
        columns: (1fr, 1fr, 1fr, 1fr, 1fr),
        column-gutter: 3pt,
        field("Armor", height: 12pt),
        field("Ward", height: 12pt),
        field("Eva", height: 12pt),
        field("Bulk", height: 12pt),
        field("Chg", height: 12pt),
      )
      field("Enchantments / Special", height: 12pt)
      v(4pt)
    }

    v(4pt)

    sheet-header("Catalyst / Reliquary")
    for i in range(2) {
      v(2pt)
      grid(
        columns: (3fr, 1fr, 1fr, 1fr),
        column-gutter: 3pt,
        field("Name / Type", height: 12pt),
        field("Tier", height: 12pt),
        field("Price", height: 12pt),
        field("Hands", height: 12pt),
      )
      grid(
        columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
        column-gutter: 3pt,
        field("Dmg", height: 12pt),
        field("Inc", height: 12pt),
        field("Bulk", height: 12pt),
        field("Chg", height: 12pt),
        field("Class", height: 12pt),
        field("Will", height: 12pt),
        field("Favor", height: 12pt),
      )
      field("Aspects / Enchantments / Specialized", height: 12pt)
    }
  },

  // ── RIGHT: Carried Gear & Consumables ───────────────────────────
  {
    sheet-header("Total Statistics")
    v(4pt)
    grid(
      columns: (1fr, 1fr, 1fr, 1fr),
      column-gutter: 4pt,
      val-box("Bulk / Cap", height: 26pt),
      val-box("Charge / Cap", height: 26pt),
      val-box("Carry / Cap", height: 26pt),
      val-box("Maint. (10%)", height: 26pt),
    )

    v(6pt)

    // Structured inventory lines with bulk
    sheet-header("Carried Gear")
    v(2pt)
    grid(
      columns: (4fr, 1fr),
      column-gutter: 2pt,
      align: (left + bottom, center + bottom),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "ITEM"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "BULK"),
    )
    v(1pt)
    for i in range(24) {
      grid(
        columns: (4fr, 1fr),
        column-gutter: 2pt,
        rect(width: 100%, height: 15pt, stroke: (bottom: 0.3pt + luma(190))),
        rect(width: 100%, height: 15pt, stroke: (bottom: 0.3pt + luma(190))),
      )
    }

    v(6pt)

    sheet-header("Consumables")
    v(2pt)
    grid(
      columns: (3fr, 1fr, 1fr),
      column-gutter: 2pt,
      align: (left + bottom, center + bottom, center + bottom),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "ITEM"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "QTY"),
      text(size: 5.5pt, fill: luma(120), weight: "bold", "BULK"),
    )
    v(1pt)
    for i in range(12) {
      grid(
        columns: (3fr, 1fr, 1fr),
        column-gutter: 2pt,
        rect(width: 100%, height: 15pt, stroke: (bottom: 0.3pt + luma(190))),
        rect(width: 100%, height: 15pt, stroke: (bottom: 0.3pt + luma(190))),
        rect(width: 100%, height: 15pt, stroke: (bottom: 0.3pt + luma(190))),
      )
    }
  },
)

// ══════════════════════════════════════════════════════════════════════
// PAGE 4 — Powers
// ══════════════════════════════════════════════════════════════════════

#pagebreak()

#align(center, text(
  font: "Libre Baskerville",
  size: 18pt,
  fill: colors.pfgreen,
  weight: "bold",
  "Ashen — Powers",
))

#v(6pt)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,

  // ── LEFT: 10 combat power cards ─────────────────────────────────
  {
    sheet-header("Powers")
    v(2pt)
    text(
      size: 5.5pt,
      fill: luma(120),
      style: "italic",
      "☐ doubles as arcane memorization marker. Use effect lines for domain, tap, miss, augments.",
    )
    v(3pt)
    stack(
      spacing: 4pt,
      ..range(9).map(i => power-card(i)),
    )
  },

  // ── RIGHT: 5 power cards + rituals as lines ─────────────────────
  {
    sheet-header("Powers (cont.)")
    v(11.5pt)
    stack(
      spacing: 4pt,
      ..range(6).map(i => power-card(i)),
    )

    v(6pt)

    sheet-header("Rituals Known")
    v(1pt)
    text(
      size: 5.5pt,
      fill: luma(120),
      style: "italic",
      "Name / Tier / Skill / Difficulty / Magnitude / Casting Time / Sacrifice",
    )
    v(1pt)
    for i in range(17) {
      note-line()
    }
  },
)
