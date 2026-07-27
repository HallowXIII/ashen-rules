#import "../formatting/declarations.typ": feathers
#import "../formatting/style.typ": colors, fonts

// Character sheet — designed as a printable appendix

#set page(
  paper: "a4",
  columns: 1,
  margin: (left: 10mm, right: 10mm, top: 10mm, bottom: 10mm),
  numbering: none,
  fill: none,
)

#set text(
  font: fonts.sans,
  size: 8pt,
  stretch: 80%,
)

#set par(spacing: 0.3em, justify: false, first-line-indent: 0em)

// ── Form-field markers ────────────────────────────────────────────────
// Invisible metadata consumed by tools/make_fillable_sheet.py, which turns
// the standalone-compiled sheet into a form-fillable PDF. Each fillable box
// or line emits one marker: (id, kind, page, x, y, w, h) in pt, with (x, y)
// the top-left corner of the writable area and kind "text" or "check".
// Ids need not be unique — the tool suffixes repeats in reading order.

#let slug(s) = {
  if type(s) == str {
    lower(s).replace(regex("[^a-z0-9]+"), "-").trim("-")
  } else { "field" }
}

// Marker placed inside a rect body (with inset: 0pt): self-measures the
// rect's exact position and size, so geometry can never drift.
#let form-mark-in(id, kind) = place(layout(size => context {
  let pos = here().position()
  [#metadata((
      id: id,
      kind: kind,
      page: pos.page,
      x: pos.x.pt(),
      y: pos.y.pt(),
      w: size.width.pt(),
      h: size.height.pt(),
    )) <form-field>]
}))

// Marker at the current flow position, spanning the container's width and
// a given height — for write-on lines that have no enclosing rect.
#let form-mark-here(id, kind, h) = place(layout(size => context {
  let pos = here().position()
  [#metadata((
      id: id,
      kind: kind,
      page: pos.page,
      x: pos.x.pt(),
      y: pos.y.pt(),
      w: size.width.pt(),
      h: h.pt(),
    )) <form-field>]
}))

// ── Helper functions ──────────────────────────────────────────────────

#let sheet-header(title) = {
  rect(
    width: 100%,
    radius: (top-left: 6pt, top-right: 3pt),
    fill: colors.pfnavy,
    stroke: none,
    inset: 5pt,
    text(fill: white, weight: "semibold", size: 9pt, title),
  )
}

#let field(label, width: 1fr, height: 18pt, id: auto) = {
  let fid = if id == auto { slug(label) } else { id }
  box(width: width, inset: 2pt)[
    #text(size: 6.5pt, fill: luma(100), weight: "semibold", upper(label))
    #v(2pt)
    #rect(
      width: 100%,
      height: height,
      stroke: (bottom: 0.5pt + luma(160)),
      fill: none,
      inset: 0pt,
      form-mark-in(fid, "text"),
    )
  ]
}

#let score-box(label, id: auto) = {
  let fid = if id == auto { slug(label) } else { id }
  box(width: 100%, inset: 2pt)[
    #align(center)[
      #rect(
        width: 28pt,
        height: 26pt,
        stroke: 0.6pt + luma(100),
        radius: 3pt,
        inset: 0pt,
        form-mark-in(fid, "text"),
      )
      #v(-1pt)
      #text(size: 6.5pt, fill: luma(80), weight: "semibold", smallcaps(label))
    ]
  ]
}

#let val-box(label, width: 100%, height: 32pt, accent: luma(100), id: auto) = {
  let fid = if id == auto { slug(label) } else { id }
  align(center)[
    #rect(
      width: width,
      height: height,
      stroke: 0.7pt + accent,
      radius: 3pt,
      inset: 0pt,
      form-mark-in(fid, "text"),
    )
    #v(-1pt)
    #text(size: 6.5pt, weight: "semibold", fill: accent, label)
  ]
}

#let char-row(label, attrs) = {
  let fid = slug(label)
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
      weight: "semibold",
      label + "  " + text(size: 6pt, fill: luma(110), weight: "regular", attrs),
    ),
    rect(
      width: 100%,
      height: 18pt,
      stroke: 0.4pt + luma(140),
      radius: 2pt,
      inset: 0pt,
      form-mark-in(fid + "-rank", "text"),
    ),
    rect(
      width: 100%,
      height: 18pt,
      stroke: 0.4pt + luma(140),
      radius: 2pt,
      inset: 0pt,
      form-mark-in(fid + "-bonus", "text"),
    ),
    rect(
      width: 100%,
      height: 18pt,
      stroke: 0.6pt + luma(80),
      radius: 2pt,
      fill: colors.otherRow,
      inset: 0pt,
      form-mark-in(fid + "-rating", "text"),
    ),
  )
}

#let skill-row(label, attrs, trained: false) = {
  let fid = slug(label)
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
      rect(
        width: 10pt,
        height: 10pt,
        stroke: 0.5pt + luma(120),
        radius: 2pt,
        inset: 0pt,
        form-mark-in(fid + "-trained", "check"),
      )
    } else { box(width: 10pt) },
    text(
      size: 7pt,
      weight: "semibold",
      label
        + "  "
        + text(size: 5.5pt, fill: luma(120), weight: "regular", attrs),
    ),
    rect(
      width: 100%,
      height: 16pt,
      stroke: 0.4pt + luma(140),
      radius: 2pt,
      inset: 0pt,
      form-mark-in(fid + "-rank", "text"),
    ),
    rect(
      width: 100%,
      height: 16pt,
      stroke: 0.4pt + luma(140),
      radius: 2pt,
      inset: 0pt,
      form-mark-in(fid + "-bonus", "text"),
    ),
    rect(
      width: 100%,
      height: 16pt,
      stroke: 0.6pt + luma(80),
      radius: 2pt,
      fill: colors.otherRow,
      inset: 0pt,
      form-mark-in(fid + "-rating", "text"),
    ),
  )
}

#let condition-box(label) = {
  box(inset: (x: 2pt, y: 2pt))[
    #grid(
      columns: (10pt, auto),
      column-gutter: 3pt,
      align: horizon,
      rect(
        width: 10pt,
        height: 10pt,
        stroke: 0.5pt + luma(100),
        radius: 2pt,
        inset: 0pt,
        form-mark-in(slug(label), "check"),
      ),
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
      text(size: 7pt, weight: "semibold", label),
      rect(
        width: 100%,
        height: 14pt,
        stroke: 0.5pt + luma(120),
        radius: 2pt,
        inset: 0pt,
        form-mark-in(slug(label), "text"),
      ),
    )
  ]
}

#let note-line(id: "note") = {
  form-mark-here(id, "text", 13pt)
  v(10pt)
  line(length: 100%, stroke: 0.3pt + luma(190))
}

#let check-line(id: "check-note") = {
  v(4pt)
  grid(
    columns: (6pt, 1fr),
    column-gutter: 4pt,
    align: horizon,
    rect(
      width: 6pt,
      height: 6pt,
      stroke: 0.5pt + luma(100),
      radius: 2pt,
      inset: 0pt,
      form-mark-in(id + "-check", "check"),
    ),
    [#form-mark-here(id, "text", 10pt) #v(5pt) #line(
        length: 100%,
        stroke: 0.3pt + luma(190),
      )],
  )
}

#let compact-field(label, width: 1fr, id: auto) = {
  let fid = if id == auto { slug(label) } else { id }
  box(width: width, inset: (x: 1pt, y: 0pt), grid(
    columns: (auto, 1fr),
    column-gutter: 2pt,
    align: (left + horizon, bottom),
    text(size: 5.5pt, fill: luma(100), weight: "semibold", upper(label)),
    rect(
      width: 100%,
      height: 8pt,
      stroke: (bottom: 0.4pt + luma(160)),
      inset: 0pt,
      form-mark-in(fid, "text"),
    ),
  ))
}

#let power-card(i) = {
  let p = "power-" + str(i + 1)
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
      rect(
        width: 7pt,
        height: 7pt,
        stroke: 0.5pt + luma(100),
        radius: 1pt,
        inset: 0pt,
        form-mark-in(p + "-memorized", "check"),
      ),
      h(0pt),
      compact-field("Name", id: p + "-name"),
      compact-field("Type", id: p + "-type"),
      compact-field("T", id: p + "-tier"),
    )
    #v(3pt)
    // Row 2: AP + cost + difficulty + range
    #grid(
      columns: (1fr, 2fr, 1.2fr, 2fr),
      column-gutter: 2pt,
      compact-field("AP", id: p + "-ap"),
      compact-field("Cost", id: p + "-cost"),
      compact-field("Diff", id: p + "-diff"),
      compact-field("Range", id: p + "-range"),
    )
    #v(3pt)
    // Row 3: keywords + resistance
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 2pt,
      compact-field("Keywords", id: p + "-keywords"),
      compact-field("Resist", id: p + "-resist"),
    )
    #v(11pt)
    // Rows 4-6: effect lines
    #text(size: 5.5pt, smallcaps("Effect"))
    #line(length: 100%, stroke: 0.3pt + luma(190))
    #form-mark-here(p + "-effect-1", "text", 11pt)
    #v(8pt)
    #line(length: 100%, stroke: 0.3pt + luma(190))
    #form-mark-here(p + "-effect-2", "text", 11pt)
    #v(8pt)
    #line(length: 100%, stroke: 0.3pt + luma(190))
  ]
}

#let advance-row() = {
  let cell(id) = rect(
    width: 100%,
    height: 15pt,
    stroke: (bottom: 0.3pt + luma(190)),
    inset: 0pt,
    form-mark-in(id, "text"),
  )
  grid(
    columns: (4fr, 1fr, 1fr, 1fr, 1fr),
    column-gutter: 2pt,
    cell("advance-name"),
    cell("advance-tier"),
    cell("advance-xp"),
    cell("advance-hp"),
    cell("advance-fp"),
  )
}

#let state-box(label, id: auto) = {
  let fid = if id == auto { slug(label) } else { id }
  box(inset: (x: 1pt))[
    #grid(
      columns: (10pt, auto),
      column-gutter: 2pt,
      align: horizon,
      rect(
        width: 10pt,
        height: 10pt,
        stroke: 0.5pt + luma(100),
        radius: 2pt,
        inset: 0pt,
        form-mark-in(fid, "check"),
      ),
      text(size: 6pt, label),
    )
  ]
}

#let fading-track(box-size: 13pt) = {
  let labels = ("—", "Fog-Touched", "Veilcasting", "Kinship", "Forgetting")
  grid(
    columns: (1fr,) * 5,
    column-gutter: 2pt,
    ..range(5).map(i => align(center)[
      #rect(
        width: box-size,
        height: box-size,
        stroke: 0.6pt + luma(80),
        radius: 2pt,
        inset: 0pt,
        form-mark-in("fading-" + str(i + 1), "check"),
      )
      #v(-1pt)
      #text(size: 5pt, weight: "semibold", fill: luma(80), str(i + 1))
      #v(-2pt)
      #text(size: 4.2pt, fill: luma(110), labels.at(i))
    ]),
  )
}

#let question-block(n) = {
  let q = "question-" + str(n)
  rect(width: 100%, stroke: 0.4pt + luma(140), radius: 2pt, inset: 4pt)[
    #grid(
      columns: (1fr, auto),
      column-gutter: 4pt,
      align: horizon,
      compact-field("Question", id: q + "-text"),
      state-box("Core", id: q + "-core"),
    )
    #form-mark-here(q + "-text-2", "text", 10pt)
    #v(8pt)
    #line(length: 100%, stroke: 0.3pt + luma(190))
    #v(5pt)
    #grid(
      columns: (auto, auto, auto, 1fr),
      column-gutter: 6pt,
      align: horizon,
      state-box("Sealed", id: q + "-sealed"),
      state-box("Glimpsed", id: q + "-glimpsed"),
      state-box("Recovered", id: q + "-recovered"),
      compact-field("Advance earned", id: q + "-advance"),
    )
    #v(5pt)
    #text(size: 5.5pt, smallcaps("Fragments & Clues"))
    #line(length: 100%, stroke: 0.3pt + luma(190))
    #form-mark-here(q + "-clues", "text", 10pt)
    #v(8pt)
    #line(length: 100%, stroke: 0.3pt + luma(190))
  ]
}

#let faction-row() = {
  let cell(id) = rect(
    width: 100%,
    height: 15pt,
    stroke: (bottom: 0.3pt + luma(190)),
    inset: 0pt,
    form-mark-in(id, "text"),
  )
  grid(
    columns: (3fr, 1fr, 1fr),
    column-gutter: 2pt,
    cell("faction-name"),
    cell("faction-standing"),
    cell("faction-debts"),
  )
}

// ══════════════════════════════════════════════════════════════════════
// PAGE 1 — Character
// ══════════════════════════════════════════════════════════════════════

#align(center, text(
  font: fonts.special,
  size: 18pt,
  fill: colors.pfgreen,
  weight: "semibold",
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
      val-box("HP", accent: colors.pfred, height: 36pt, id: "max-hp"),
      val-box("FP", accent: colors.pfnavy, height: 36pt, id: "max-fp"),
      val-box("EP", accent: colors.lightgreen, height: 36pt, id: "max-ep"),
      val-box(
        [#text(font: fonts.sans, size: 8pt, "ƒ")],
        accent: colors.pfbrown,
        height: 36pt,
        id: "feathers",
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
            inset: 0pt,
            form-mark-in("current-hp", "text"),
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
            inset: 0pt,
            form-mark-in("current-fp", "text"),
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
            inset: 0pt,
            form-mark-in("current-ep", "text"),
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
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "RANK"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "BONUS"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "RATING"),
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
        note-line(id: "resistances")
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
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "RANK"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "BONUS"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "RATING"),
    )
    v(2pt)
    stack(
      spacing: 2pt,
      skill-row("Acrobatics", "AGI+DEX"),
      skill-row("Athletics", "STR+WIL"),
      skill-row("Awareness", "PER+SGT"),
      skill-row("Deceive", "INT+PRS"),
      skill-row("Eerie", "ATT+SGT"),
      skill-row("Impose", "STR+PRS"),
      skill-row("Influence", "PRS+SGT"),
      skill-row("Investigate", "INT+PER"),
      skill-row("Subterfuge", "AGI+INT"),
      v(3pt),
      skill-row("Access", "DEX+SGT", trained: true),
      skill-row("Alchemy", "PER+ATT", trained: true),
      skill-row("Electronics", "DEX+INT", trained: true),
      skill-row("Magitek", "DEX+ATT", trained: true),
      skill-row("Occultism", "PRS+ATT", trained: true),
      skill-row("Piloting", "AGI+SGT", trained: true),
      skill-row("Ritual", "WIL+INT", trained: true),
      skill-row("Shop", "DEX+END", trained: true),
    )
    v(8pt)


    sheet-header("Languages")
    v(1pt)
    for i in range(6) {
      note-line(id: "language")
    }
  },

  // ── COLUMN 3: Active Effects + Notes (Permanent Effects) ─────────────────────────
  {
    sheet-header("Active Effects")
    v(4pt)
    for i in range(6) {
      note-line(id: "active-effect")
    }

    sheet-header("Notes & Permanent Effects (Items, Advances...)")
    v(8pt)
    for i in range(42) {
      note-line(id: "notes")
    }
  },
)

// ══════════════════════════════════════════════════════════════════════
// PAGE 2 — Advances
// ══════════════════════════════════════════════════════════════════════

#pagebreak()

#align(center, text(
  font: fonts.special,
  size: 18pt,
  fill: colors.pfgreen,
  weight: "semibold",
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
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "NAME"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "TIER"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "XP"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "HP"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "FP"),
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
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "NAME"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "TIER"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "XP"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "HP"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "FP"),
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
  font: fonts.special,
  size: 18pt,
  fill: colors.pfgreen,
  weight: "semibold",
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
      let w = "weapon-" + str(i + 1)
      grid(
        columns: (3fr, 1fr, 1fr, 1fr),
        column-gutter: 3pt,
        field("Name", height: 12pt, id: w + "-name"),
        field("Tier", height: 12pt, id: w + "-tier"),
        field("Price", height: 12pt, id: w + "-price"),
        field("Hands", height: 12pt, id: w + "-hands"),
      )
      grid(
        columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
        column-gutter: 3pt,
        field("Dmg", height: 12pt, id: w + "-dmg"),
        field("Pen", height: 12pt, id: w + "-pen"),
        field("Bulk", height: 12pt, id: w + "-bulk"),
        field("Chg", height: 12pt, id: w + "-chg"),
        field("Inc", height: 12pt, id: w + "-inc"),
        field("Range", height: 12pt, id: w + "-range"),
        field("FM", height: 12pt, id: w + "-fm"),
      )
      field(
        "Technology / Treatment / Enchantments / Keywords",
        height: 12pt,
        id: w + "-special",
      )
      v(4pt)
    }

    v(4pt)

    sheet-header("Armor Layers")
    v(2pt)
    for i in range(3) {
      let a = "armor-" + str(i + 1)
      grid(
        columns: (3fr, 1fr, 1fr, 1fr),
        column-gutter: 3pt,
        field("Name / Material", height: 14pt, id: a + "-name"),
        field("Tier", height: 12pt, id: a + "-tier"),
        field("Profile", height: 12pt, id: a + "-profile"),
        field("Price", height: 12pt, id: a + "-price"),
      )
      grid(
        columns: (1fr, 1fr, 1fr, 1fr, 1fr),
        column-gutter: 3pt,
        field("Armor", height: 12pt, id: a + "-armor"),
        field("Ward", height: 12pt, id: a + "-ward"),
        field("Eva", height: 12pt, id: a + "-eva"),
        field("Bulk", height: 12pt, id: a + "-bulk"),
        field("Chg", height: 12pt, id: a + "-chg"),
      )
      field("Enchantments / Special", height: 12pt, id: a + "-special")
      v(4pt)
    }

    v(4pt)

    sheet-header("Catalyst / Reliquary")
    for i in range(2) {
      let c = "catalyst-" + str(i + 1)
      v(2pt)
      grid(
        columns: (3fr, 1fr, 1fr, 1fr),
        column-gutter: 3pt,
        field("Name / Type", height: 12pt, id: c + "-name"),
        field("Tier", height: 12pt, id: c + "-tier"),
        field("Price", height: 12pt, id: c + "-price"),
        field("Hands", height: 12pt, id: c + "-hands"),
      )
      grid(
        columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
        column-gutter: 3pt,
        field("Dmg", height: 12pt, id: c + "-dmg"),
        field("Inc", height: 12pt, id: c + "-inc"),
        field("Bulk", height: 12pt, id: c + "-bulk"),
        field("Chg", height: 12pt, id: c + "-chg"),
        field("Class", height: 12pt, id: c + "-class"),
        field("Will", height: 12pt, id: c + "-will"),
        field("Favor", height: 12pt, id: c + "-favor"),
      )
      field(
        "Aspects / Enchantments / Specialized",
        height: 12pt,
        id: c + "-special",
      )
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
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "ITEM"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "BULK"),
    )
    v(1pt)
    for i in range(24) {
      grid(
        columns: (4fr, 1fr),
        column-gutter: 2pt,
        rect(
          width: 100%,
          height: 15pt,
          stroke: (bottom: 0.3pt + luma(190)),
          inset: 0pt,
          form-mark-in("gear-item", "text"),
        ),
        rect(
          width: 100%,
          height: 15pt,
          stroke: (bottom: 0.3pt + luma(190)),
          inset: 0pt,
          form-mark-in("gear-bulk", "text"),
        ),
      )
    }

    v(6pt)

    sheet-header("Consumables")
    v(2pt)
    grid(
      columns: (3fr, 1fr, 1fr),
      column-gutter: 2pt,
      align: (left + bottom, center + bottom, center + bottom),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "ITEM"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "QTY"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "BULK"),
    )
    v(1pt)
    for i in range(12) {
      grid(
        columns: (3fr, 1fr, 1fr),
        column-gutter: 2pt,
        rect(
          width: 100%,
          height: 15pt,
          stroke: (bottom: 0.3pt + luma(190)),
          inset: 0pt,
          form-mark-in("consumable-item", "text"),
        ),
        rect(
          width: 100%,
          height: 15pt,
          stroke: (bottom: 0.3pt + luma(190)),
          inset: 0pt,
          form-mark-in("consumable-qty", "text"),
        ),
        rect(
          width: 100%,
          height: 15pt,
          stroke: (bottom: 0.3pt + luma(190)),
          inset: 0pt,
          form-mark-in("consumable-bulk", "text"),
        ),
      )
    }
  },
)

// ══════════════════════════════════════════════════════════════════════
// PAGE 4 — Powers
// ══════════════════════════════════════════════════════════════════════

#pagebreak()

#align(center, text(
  font: fonts.special,
  size: 18pt,
  fill: colors.pfgreen,
  weight: "semibold",
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
      ..range(8).map(i => power-card(i)),
    )
  },

  // ── RIGHT: 5 power cards + rituals as lines ─────────────────────
  {
    sheet-header("Powers (cont.)")
    v(11.5pt)
    stack(
      spacing: 4pt,
      ..range(8, 13).map(i => power-card(i)),
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
    for i in range(15) {
      note-line(id: "ritual")
    }
  },
)

// ══════════════════════════════════════════════════════════════════════
// PAGE 5 — The Curse & Factions
// ══════════════════════════════════════════════════════════════════════

#pagebreak()

#align(center, text(
  font: fonts.special,
  size: 18pt,
  fill: colors.pfgreen,
  weight: "semibold",
  "Ashen — The Curse & Factions",
))

#v(6pt)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8pt,

  // ── LEFT: Anchor, keepsake, memory Questions ────────────────────
  {
    sheet-header("Soul Anchor & Keepsake")
    v(3pt)
    field("Soul Anchor (current location)", height: 14pt, id: "soul-anchor")
    v(2pt)
    field("Keepsake", height: 14pt)
    v(6pt)

    sheet-header("Memory Questions")
    v(2pt)
    text(
      size: 5.5pt,
      fill: luma(120),
      style: "italic",
      "3–5 Questions; mark one as Core (its answer is your Regret). The keepsake's Question starts Glimpsed. Recovering a Question clears all Fading and earns a Minor Legendary Advance.",
    )
    v(3pt)
    state-box(
      "Resonance spent this act (+3d Sealed / +6d Glimpsed, declare before rolling)",
      id: "resonance-spent",
    )
    v(3pt)
    stack(
      spacing: 5pt,
      ..range(5).map(i => question-block(i + 1)),
    )
    v(8pt)

    sheet-header("Leads & Recovery Notes")
    v(2pt)
    text(
      size: 5.5pt,
      fill: luma(120),
      style: "italic",
      "Places, people, and scenes that might hold answers — recovery happens in placed scenes, never on checks.",
    )
    v(1pt)
    for i in range(8) {
      note-line(id: "lead")
    }
  },

  // ── RIGHT: Fading, Recollection, factions, ventures ─────────────
  {
    sheet-header("Fading")
    v(2pt)
    text(
      size: 5.5pt,
      fill: luma(120),
      style: "italic",
      "Each mark: −10% max EP (round up, min. 1) and narrate what the curse takes. Mark on reincorporation, Fog saturation, and soul-damaging effects — never on spending EP.",
    )
    v(4pt)
    grid(
      columns: (3fr, 1fr),
      column-gutter: 6pt,
      align: (left + top, center + top),
      fading-track(box-size: 16pt),
      {
        align(center)[
          #text(size: 6pt, fill: luma(120), "Max EP penalty")
          #rect(
            width: 100%,
            height: 16pt,
            stroke: 0.5pt + luma(120),
            radius: 2pt,
            inset: 0pt,
            form-mark-in("max-ep-penalty", "text"),
          )
        ]
      },
    )
    v(4pt)
    text(size: 5.5pt, smallcaps("What the Curse Has Taken"))
    for i in range(6) {
      note-line(id: "curse-taken")
    }
    v(8pt)

    sheet-header("Recollection")
    v(2pt)
    grid(
      columns: (2fr, 3fr),
      column-gutter: 6pt,
      align: (center + top, left + top),
      val-box("Current dice", height: 26pt, id: "recollection"),
      text(
        size: 5.5pt,
        fill: luma(120),
        style: "italic",
        "Your former life's knowledge. Each Question: +1d when Glimpsed, +3d total when Recovered (doubled if you have only 3 Questions).",
      ),
    )
    v(6pt)

    sheet-header("Factions")
    v(2pt)
    grid(
      columns: (3fr, 1fr, 1fr),
      column-gutter: 2pt,
      align: (left + bottom, center + bottom, center + bottom),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "FACTION"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "STANDING"),
      text(size: 5.5pt, fill: luma(120), weight: "semibold", "DEBTS"),
    )
    v(1pt)
    for i in range(5) {
      faction-row()
    }
    v(3pt)
    text(size: 5.5pt, smallcaps("Obligations & Demands"))
    for i in range(4) {
      note-line(id: "obligation")
    }
    v(8pt)

    sheet-header("Intermission Ventures")
    v(2pt)
    text(
      size: 5.5pt,
      fill: luma(120),
      style: "italic",
      "Two per intermission: Faction Obligation · Communion (clear 1 Fading) · Pursue a Lead · Networking · Tend a Holding · Labor.",
    )
    v(3pt)
    grid(
      columns: (1fr, 1fr),
      column-gutter: 4pt,
      field("Venture 1", height: 14pt), field("Venture 2", height: 14pt),
    )
    v(8pt)

    sheet-header("Party Holdings")
    v(2pt)
    text(
      size: 5.5pt,
      fill: luma(120),
      style: "italic",
      "Holdings held by the party — remember the Hold cost (Tend a Holding).",
    )
    v(3pt)
    for i in range(3) {
      let h = "holding-" + str(i + 1)
      grid(
        columns: (3fr, 1.5fr, 1fr),
        column-gutter: 3pt,
        field("Name", height: 12pt, id: h + "-name"),
        field("Form", height: 12pt, id: h + "-form"),
        field("Tier", height: 12pt, id: h + "-tier"),
      )
      grid(
        columns: (1fr, 1fr),
        column-gutter: 3pt,
        field("Boons", height: 12pt, id: h + "-boons"),
        field("Hold", height: 12pt, id: h + "-hold"),
      )
      v(4pt)
    }
  },
)
