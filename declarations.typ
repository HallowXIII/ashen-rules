// Custom functions
#let flavor(body) = {
  set text(style: "italic")
  box[#body]
}

#let advance-block(name, tier, xp, hp, fp, prerequisites, body) = {
  set par(hanging-indent: 1em, first-line-indent: 1em)
  set box(fill: eastern,stroke: 1pt, outset: 5pt, radius: 10%)
  block[
    *#name* #linebreak()
    _Tier #tier Advance #linebreak()_
    _Cost:_ #xp XP #linebreak()
    _HP:_ #hp, _FP:_ #fp #linebreak()
    _Prerequisites:_ #prerequisites
    
    #body
  ]
}

#let power-description(body) = {
  set text(style: "italic")
  set box(fill: aqua, stroke: 1pt, outset: 5pt, radius: 10%)
  set par(hanging-indent: 1em, first-line-indent: 2em)
  box[#body]
}