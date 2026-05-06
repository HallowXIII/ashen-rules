// Based on https://typst.app/universe/package/pf2e-style

#let colors = (
  pfgreen: rgb("#002a16"),
  pfred: rgb("#4e1b0e"),
  pfmaroon: rgb("#5d0000"),
  lightgreen: rgb("#015d4e"),
  pfwhite: rgb("#efefe7"),
  pfnavy: rgb("#002b6f"),
  otherRow: rgb("#f4eee0"),
  pfyellow: rgb("#dac285"),
  pfbrown: rgb("#644117"),
)

#let fonts = (
  sans: ("Barlow"),
  serif: ("Source Serif 4"),
  special: ("EB Garamond 08"),
)

#let pf-stylization(doc) = {
  // General page layout
  set page(
    paper: "a4",
    columns: 2,
    margin: (left: 12mm, right: 12mm, top: 12mm, bottom: 12mm),
    numbering: "1",
    fill: tiling(image(width: 5cm, "../../graphics/textured-paper.png")),
  )
  set text(
    font: fonts.serif, // General font family
    size: 12pt,
    stretch: 80%,
  )
  set par(
    spacing: .6em,
    justify: true,
    first-line-indent: 1em,
  )
  show <s>: set par(first-line-indent: 0em)

  /// Headers
  show heading.where(level: 1): it => {
    set par(first-line-indent: 0em)
    text(
      font: fonts.sans,
      size: 1.6em,
      fill: colors.pfgreen,
      weight: "bold",
      upper(it.body),
    )
  }
  show heading.where(level: 2): it => {
    set par(first-line-indent: 0em)
    v(0.5em)
    text(
      font: fonts.sans,
      weight: "semibold",
      size: 1.3em,
      upper(it.body),
    )
    v(0.25em)
  }
  show heading.where(level: 3): it => {
    set par(first-line-indent: 0em)
    v(0.5em)
    text(
      font: fonts.sans,
      size: 1.4em,
      fill: colors.pfnavy,
      weight: "semibold",
      it.body,
    )
  }
  show heading.where(level: 4): it => {
    set par(first-line-indent: 0em)
    v(0.5em)
    text(
      font: fonts.sans,
      size: 1.25em,
      fill: colors.lightgreen,
      weight: "medium",
      it.body,
    )
    v(0.25em)
  }
  show heading.where(level: 5): it => {
    set par(first-line-indent: 0em)
    v(0.25em)
    text(
      size: 1.1em,
      font: fonts.sans,
      weight: "medium",
      it.body,
    )
    v(0.1em)
  }

  // Struggled to get this. Work around found here -> https://github.com/typst/typst/issues/3640
  show table.cell.where(y: 0): it => (
    text(fill: white, weight: "semibold")[#it]
  )
  doc
}
