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
  keywords: none,
  flavor: none,
  prerequisites: none,
  trigger: none,
  range: none,
  difficulty: none,
  cost: none,
  resistance: none,
  on-hit: none,
  miss: none,
  catalyst: none,
  tap: none,
) = { 
  set par(hanging-indent: 1em, first-line-indent: 1em)
  block[
  *#name* \
  _#if tier != none [Tier #tier] #power-type#if domain != none [ (#domain)]#if keywords != none [; #keywords]_ \
  #if flavor != none [_#flavor _] \
  #if prerequisites != none [_Prerequisites:_ #prerequisites \ ]
  #if trigger != none [_Trigger:_ #trigger \ ]
  #if range != none [_Range:_ #range \ ]
  #if difficulty != none [_Difficulty:_ #difficulty \ ]
  #if cost != none [_Cost:_ #cost \ ]
  _AP:_ #ap \
  #if resistance != none [_Resistance:_ #resistance \ ]

  _Effect:_ #effect \
  #if on-hit != none [_On Hit:_ #on-hit \ ]
  #if miss != none [_Miss:_ #miss \ ]
  #if catalyst != none [_Catalyst:_ #catalyst \ ]
  #if tap != none [_Tap:_ #tap]
]
}