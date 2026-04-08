#import "formatting/style.typ": *

// Pulled from https://github.com/typst/typst/issues/2196
#let to-string(it) = {
  if type(it) == str {
    it
  } else if type(it) != content {
    str(it)
  } else if it.has("text") {
    it.text
  } else if it.has("children") {
    it.children.map(to-string).join()
  } else if it.has("body") {
    to-string(it.body)
  } else if it == [ ] {
    " "
  }
}

#let roll-result(it) = {
  let output = false
  if to-string(it).starts-with("Critical Success") {
    output = true
  } else if to-string(it).starts-with("Success") {
    output = true
  } else if to-string(it).starts-with("Failure") {
    output = true
  } else if to-string(it).starts-with("Critical Failure") {
    output = true
  } else if to-string(it).starts-with("Heightened (") { output = true }
  return output
}

#let pftraits(traits) = {
  if traits != ([],) {
    for trait in traits [
      #let style = if (
        trait == "tiny"
          or trait == "small"
          or trait == "medium"
          or trait == "large"
      ) {
        rgb("#3a7a58") // Size Green
      } else if trait == "uncommon" {
        orange
      } else if trait == "rare" {
        navy
      } else if trait == "unique" {
        rgb("#871F78") // Dark Purple
      } else {
        colors.pfnavy
      }
      #box(
        fill: style,
        stroke: (
          left: colors.pfwhite + 2pt,
          right: colors.pfwhite + 2pt,
          top: colors.pfwhite + 1pt,
          bottom: colors.pfwhite + 1pt,
        ),
        inset: 4pt,
      )[#text(weight: "semibold", size: .8em, fill: white)[#upper[#trait]]]
    ]
  }
}

#let pfi(body) = par(first-line-indent: 0.5em, hanging-indent: 0.5em)[#body]

#let feathers = text(font: ("Libre Baskerville",), size: 10pt, "ƒ")

#let flavor(body) = {
  set text(font: ("Libre Baskerville",), style: "italic", size: 10pt)
  box[#body]
  v(0.5em)
}

#let ritual-description(
  name,
  tier,
  skill,
  difficulty,
  magnitude,
  sacrifice,
  casting-time,
  effect,
  aspects: none,
  failure: none,
  modifiers: none,
  flavor: none,
) = {
  set par(hanging-indent: 1em, first-line-indent: 1em)
  block[
    *#name* \
    _Tier #tier Ritual_ \
    #if flavor != none [_#flavor _] \
    _Skill:_ #skill \
    _Difficulty:_ #difficulty, _Magnitude:_ #magnitude \
    #if aspects != none [_Aspects:_ #aspects \ ]
    _Sacrifice:_ #sacrifice \
    _Casting Time:_ #casting-time \

    _Effect:_ #effect \
    #if modifiers != none [_Difficulty Modifiers:_ #modifiers \ ]
    #if failure != none [_Failure:_ #failure]
  ]
}

#let item-description(
  name,
  item-type,
  tier,
  keywords: none,
  flavor: none,
  body,
) = {
  set par(hanging-indent: 1em, first-line-indent: 1em)
  block[
    *#name* \
    _#if tier != none [Tier #tier] #item-type#if keywords != none [; #keywords]_ \
    #if flavor != none [_#flavor _] \

    #body
  ]
}

#let power-description(
  name,
  power-type,
  tier,
  ap,
  effect,
  domain: none,
  keywords: (),
  flavor: none,
  prerequisites: (),
  trigger: none,
  range: none,
  duration: none,
  difficulty: none,
  cost: none,
  resistance: none,
  on-hit: none,
  miss: none,
  catalyst: none,
  tap: none,
  augments: (),
) = {
  set par(spacing: .6em, first-line-indent: 0em) // hanging-indent: 1em)
  let final-traits = if keywords == none {
    if domain == none { () } else { (domain,) }
  } else {
    if domain == none { keywords } else {
      (..keywords, domain)
    }
  }
  let header(body) = {
    box(
      text(weight: "extrabold", size: 1.4em, stretch: 50%)[#upper(name)],
    )
    h(1fr)
    sym.wj
    box(text(weight: "extrabold", size: 1.4em, stretch: 50%)[
      #upper(body) #tier
    ])
  }
  block[
    #v(1em)
    #header[#power-type]
    #line(stroke: 1pt, length: 100%)
    #pftraits(final-traits) \
    #if flavor != none [_#flavor \ #v(0.5em)_]
    #if prerequisites != () {
      "Prerequisites:" 
      list(for req in prerequisites {
        par(first-line-indent: 1em)[#req\ ]
      })
    } \
    #if trigger != none [_Trigger:_ #trigger \ ]
    #if range != none [_Range:_ #range \ ]
    #if duration != none [_Duration:_ #duration \ ]
    #if difficulty != none [_Difficulty:_ #difficulty \ ]
    #if cost != none [_Cost:_ #cost \ ]
    _AP:_ #ap \
    #if resistance != none [_Resistance:_ #resistance \ ]

    _Effect:_ #effect \
    #if on-hit != none [_On Hit:_ #on-hit \ ]
    #if miss != none [_Miss:_ #miss \ ]
    #if catalyst != none [_Catalyst:_ #catalyst \ ]
    #if tap != none [_Tap:_ #tap]
    #if augments != ([],) {
      for aug in augments {
        par(hanging-indent: 1em)[*Augment #aug.cost*: #aug.effect \ ]
      }
    }
  ]
}

#let spell(spl) = [
  #v(1em)
  #set par(spacing: .6em, first-line-indent: 0em) // hanging-indent: 1em)
  #let creature_header(body) = {
    box(
      text(weight: "extrabold", size: 1.4em, stretch: 50%)[#upper(spl.name)],
    )
    h(1fr)
    sym.wj
    box(text(weight: "extrabold", size: 1.4em, stretch: 50%)[#upper(body)])
  }
  #creature_header[#spl.type]
  #line(stroke: 1pt, length: 100%)
  #pftraits(spl.traits)

  #for req in spl.reqs {
    par(hanging-indent: 1em)[#req\ ]
  }
  #line(stroke: 1pt, length: 100%)
  #for effect in spl.effect {
    if to-string(effect).starts-with("•") {
      par(hanging-indent: 1.7em, first-line-indent: 1em)[#effect]
    } else if roll-result(effect) {
      par(hanging-indent: 1em, first-line-indent: 0em)[#effect]
    } else if effect == [---] or effect == [line] {
      line(stroke: 1pt, length: 100%)
    } else { par(hanging-indent: 0em, first-line-indent: 1em)[#effect] }
  }
]

#let feat(feat) = [
  #v(1em)
  #set par(spacing: .6em, first-line-indent: 0em) // hanging-indent: 1em)
  #set text(size: 10pt)
  #let maybe_format_header(is_header, text_content) = {
    if is_header {
      text(weight: "extrabold", size: 1.4em, stretch: 50%)[#text_content]
    } else {
      text(stretch: 50%)[#text_content]
    }
  }
  #let split_format(left, right, is_header: false) = {
    box(
      maybe_format_header(is_header, left)
    )
    h(1fr)
    sym.wj
    box(maybe_format_header(is_header, right))
  }
  #split_format(upper(feat.name), upper([Tier #feat.level (#feat.xp XP)]), is_header: true)
  #line(stroke: 1pt, length: 100%)
  #pftraits(feat.traits)
  
  #split_format([Prerequisites: #feat.reqs], [#feat.hp HP, #feat.fp FP])
  #line(stroke: 1pt, length: 100%)
  #for effect in feat.effect {
    if roll-result(effect) {
      par(hanging-indent: 1em)[#effect]
    } else {
      par(hanging-indent: 0pt, first-line-indent: 1em)[#effect]
    }
  }
  #if feat.special != [] {
    line(stroke: 1pt, length: 100%)
    par(hanging-indent: 1em)[#feat.special\ ]
  }
]

#let advance-block(name, tier, xp, hp, fp, prerequisites, body, traits: ()) = feat((
  name: name,
  reqs: prerequisites,
  level: tier,
  xp: xp,
  hp: hp,
  fp: fp,
  traits: traits,
  effect: (body,),
  special: none,
))

// #let advance-block(name, tier, xp, hp, fp, prerequisites, body) = {
//   set par(hanging-indent: 1em, first-line-indent: 1em)
//   set box(fill: eastern, stroke: 1pt, outset: 5pt, radius: 10%)
//   block[
//     *#name* #linebreak()
//     _Tier #tier Advance #linebreak()_
//     _Cost:_ #xp XP #linebreak()
//     _HP:_ #hp, _FP:_ #fp #linebreak()
//     _Prerequisites:_ #prerequisites
// 
//     #body
//   ]
// }

// Action Icons
//#let A = (
//  box(image("style/action-icons/single.svg", height: 1em))
//)
//#let AA = (
//  box(image("style/action-icons/double.svg", height: 1em))
//)
//#let AAA = (
//  box(image("style/action-icons/triple.svg", height: 1em))
//)
//#let R = (
//  box(image("style/action-icons/reaction.svg", height: 1em))
//)
//#let F = (
//  box(image("style/action-icons/free.svg", height: 1em))
//)

#let box-top(info) = [
  #text(size: 1.3em, weight: "extrabold")[#align(center)[#info\ ]]
]

#let pftab(name, columns: (1fr, 4fr), breakable: false, ..contents) = [
  #v(1em)
  #block(breakable: breakable)[
    *#smallcaps(text(size: 1.3em)[#upper(name)])*
    #v(-.5em)
    #table(
      columns: columns,
      align: (col, row) => if col == 0 { center } else { center },
      fill: (col, row) => if row == 0 { colors.pfnavy } else if calc.odd(
        row + 1,
      ) { colors.pfwhite } else { colors.otherRow },
      inset: 5pt,
      stroke: none,
      // align: horizon,
      ..contents
    )
    #v(1em)
  ]]

#let chap-header(num, title, desc) = place(
  center + top,
  // dx: 55%,
  dy: -5%,
  scope: "parent",
  float: true,
  clearance: -0.5em,
)[
  #set text(fill: colors.pfgreen)
  #layout(size => {
    let content = text(weight: "extrabold")[
      #text(1.5em, font: "Taroca")[#upper(num)] \
      #text(2em, font: "Taroca")[#upper(title)] \
      #text(1.2em, style: "italic")[#desc]
    ]

    block(
      fill: rgb("#f4eee0"),
      stroke: (
        bottom: 3pt + rgb("#664200"),
        rest: none,
      ),
      width: 115%,
      inset: 1em,
      outset: 1em,
      align(center, content),
      // outset: (x: 200%, y: (m.height / 2)),
    )
  })
]

#let note(info) = [
  #v(1em)
  #box(
    fill: rgb("#e2d7d3"),
    inset: 7pt,
    // outset: 2pt,
  )[
    #show heading: it => align(center)[#it]
    #info
  ]
]

#let attention(content) = [
  #v(1em)
  #box(
    fill: rgb("#eadcb7"),
    stroke: (1pt + black),
    inset: 4pt,
  )[
    #show heading: it => align(center)[#it]
    #content
  ]
]

#let aloud(content) = [
  #v(.5em)
  #line(stroke: 1pt + colors.pfbrown, length: 100%)
  #text(fill: colors.pfbrown)[#content]
  #line(stroke: 1pt + colors.pfbrown, length: 100%)
  #v(.5em)
]

#let encounter(comp) = [
  #v(1em)
  #set par(spacing: .6em, first-line-indent: 0em) // hanging-indent: 1em)
  #let creature_header(body) = {
    box(
      text(weight: "extrabold", size: 1.3em, stretch: 50%)[#upper(comp.name)],
    )
    h(1fr)
    sym.wj
    box(text(weight: "extrabold", size: 1.3em, stretch: 50%)[#upper(comp.type)])
  }
  #creature_header[]
  #line(stroke: 1pt, length: 100%)
  #pftraits(comp.traits)
  #for entry in (comp.details) {
    if entry == [---] or entry == [line] {
      line(stroke: 1pt, length: 100%)
      continue
    }
    if roll-result(entry) {
      par(hanging-indent: 1em)[#entry]
      continue
    }
    if (
      comp.type == [Complication]
        or comp.type == [Opportunities]
        or comp.type == []
        or comp.type == [Obstacle]
    ) {
      par(hanging-indent: 0em)[#entry]
      continue
    }
    if comp.type == [Background] {
      par(hanging-indent: 0em, first-line-indent: 1em)[#entry]
      continue
    }
    // if entry.has(<r>) {entry;continue}
    par(hanging-indent: 1em)[#entry]
  }
  // #line(stroke: 1pt, length: 100%)
  // #comp.trigger
  // #line(stroke: 1pt, length: 100%)
  // #comp.effect
]
