#import "../../formatting/declarations.typ": *
#import "@preview/meander:0.4.2"

#let mirror = image("../../../graphics/illustrations/Mirror.png", height: 60%)
#let shade = image("../../../graphics/illustrations/Shade.png", height: 60%)

#set page(columns: 1)

#meander.reflow({

  import meander: *

  placed(bottom + left, boundary: contour.ascii-art(read("../../../graphics/illustrations/Mirror.png.contour")), mirror)
  container(align: left, width: 50%)
  container(align: right, width: 50%)

content[=== Echoes
#flavor[“High and Just-As-High were different from their sister. They were not
  content to play in silence by themselves, but made wonderful playgrounds for﻿
  themselves, and filled them with playmates.”]

Echoes are fey creatures, born of the capricious goddesses of Magic, Knowledge
and Fate. The sisters ruled over their own fey domains, twisted reflections of
the material world. The Echoes that inhabited them are themselves images of
humans, refracted through the lenses of their creator-goddesses. Though these
faerie realms are long gone, the Echoes still retain some of their old power
within themselves.

All Echoes gain the following racial traits:

==== Vindictive
It was said that those who made enemies of the Fairies would never escape their
pursuers. When an enemy damages you, you can choose to hold a grudge against
that enemy. When you next attack or use a spell power against that enemy, you
gain 1 automatic success on your attack or spell check against him. You can only
hold a grudge against one creature at a time.

==== Sustained by Magic
In areas of Light Fog or denser, Echoes need no food or water --- ambient
magic suffices. In Clears, they eat and drink at the standard mortal-grade
rates.]

colbreak()

content[==== Cold Iron Sensitivity
Cold-iron weapons deal 50% more damage to Echoes, and cold-iron restraints
cannot be escaped via Fey Jaunt or any other short-range teleportation
effect.

#note[*Cold Iron* is iron worked entirely without forge fire --- cold-hammered
  into shape through ritual percussion, or drawn from meteoric sources that
  never melted in any human furnace. It is brittle, expensive to produce, and
  useless against modern armor. Its only practical
  application in the Age of Ash is as a fey-bane: shotgun slugs, restraints,
  ritual blades, and hunter's daggers specifically intended to harm or hold
  Echoes. Anti-fey orders, certain Mortefactors, and Echo-hunting bounty crews
  keep small caches; few others bother. A cold-iron weapon is typically a small
  backup item, drawn only when an Echo is the target, and using it typically
  requires aiming for an unarmored spot on the victim's body.]


==== Fey Jaunt
You gain the following power:

#power-description(
  "Fey Jaunt",
  "Psychic 0",
  none,
  "Move Action, 2 AP",
  "Select one square within your move range. You teleport to it.",
  domain: "Warp",
  keywords: ("Innate",),
  cost: "6 FP",
)

==== Fog-Fragile
Fog Exposure thresholds are halved for Echoes --- the inverse of humans. The
raw, undirected Fog is hostile to fey beings whose realms it destroyed.

There are two kinds of Echoes: Mirrors and Shades. Every Echo character must
choose one of the following subtypes:]})

#meander.reflow({

  import meander: *

  placed(bottom + right, shade)
  container(align: left, width: 50%)
  container(align: right, width: 50%)

content[==== Mirrors
The Mirrors, children of Might-Be, the Fateweaver, are the fairest of the
humanoid races. They lived in the beautiful lands of Faerie, once, and like many
of its denizens, they are adept at misleading their foes.

Mirrors gain the following racial trait:

===== Dance of the Spring Court
The old, hidden world of the fey is dead, but you can still call up its echoes
to bewilder your foes. You gain the following power:

#power-description(
  "Dance of the Spring Court",
  "Psychic 0",
  none,
  "Reaction (Immediate Interrupt)",
  "You may immediately teleport to any free space within 2 meters. This power does not stop the triggering attack; apply the rules for a missing target.",
  domain: "Warp",
  keywords: ("Innate",),
  cost: "6 FP",
  trigger: "You are targeted by an attack",
)

===== Children of Day
A Mirror gains +1d on Endurance checks while in direct sunlight.

==== Shades
Shades were the favored companion of Once-Was, the Knower of Ways, Goddess of
what is Hidden and Forgotten. They are said to have dwelt deep underground, in
glorious palaces, until they rode out to hunt in the long winter nights of
Faerie.

As a Shade, you gain the following racial trait:

===== Hunt of the Autumn Court
In days of old, the goddess Came-To-Pass was worshipped as an unerring huntress.
You retain some of her essence.

You gain the following power:

#power-description(
  "Hunt of the Autumn Court",
  "Psychic 0",
  none,
  "2 AP",
  "Target one enemy within range that you or your allies can see. You place a mark upon it; while it is marked, your ranged attacks against the target ignore obscuration and partial cover. Additionally, whenever you use your Fey Jaunt power, you can choose to appear in a square adjacent to your enemy instead, even if the enemy would otherwise be out of range.",
  keywords: ("Innate", "Unerring"),
  cost: "6 FP per Tier",
  range: "15; one target",
)

===== Children of Night
A Shade gains +1d on Endurance checks while in dim light or darkness.]
})