#import "../../formatting/declarations.typ": *
#import "@preview/meander:0.4.2"

#let mirror = image("../../../graphics/illustrations/Mirror.png", height: 60%)
#let shade = image("../../../graphics/illustrations/Shade.png", height: 60%)

== Echoes
#flavor["High and Just-As-High were different from their sister. They were not
  content to play in silence by themselves, but made wonderful playgrounds for
  themselves, and filled them with playmates."]

#race-infobox(
  creature-type: "Fey",
  build: "Elfin; pointed ears, slender builds, elongated proportions",
)

Echoes are fey creatures, born of the capricious goddesses of Magic, Knowledge
and Fate. The sisters ruled over their own fey domains, twisted reflections of
the material world. The Echoes that inhabited them are themselves images of
humans, refracted through the lenses of their creator-goddesses.
The Echoes possess distinctly elfin features --- pointed ears, slender builds, elongated proportions
--- although especially the Mirrors can deviate from this stereotype. There is
always something exaggerated about them, something not quite human in their beauty or strangeness.
Though the faerie realms from which they hailed are long gone, the Echoes still
retain some of their old power within themselves.

All Echoes gain the following racial traits:

=== Vindictive
It was said that those who made enemies of the Fairies would never escape their
pursuers. When an enemy damages you, you can choose to hold a grudge against
that enemy. When you next attack or use a spell power against that enemy, you
gain 1 automatic success on your attack or spell check against him. You can only
hold a grudge against one creature at a time.

=== Sustained by Magic
In areas of Light Fog or denser, Echoes need no food or water --- ambient
magic suffices. In Clears, they eat and drink at the standard mortal-grade
rates.

=== Cold Iron Sensitivity
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


=== Fey Jaunt
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

=== Fog-Fragile
Echoes' ability to sustain
themselves with magic causes them to absorb the chaotic, roiling energies
of the Fog into their bodies more quickly, and they suffer its negative
effects faster as a result. Fog Exposure thresholds are halved for Echoes.

There are two kinds of Echoes: Mirrors and Shades. Every Echo character must
choose one of the following subtypes:

#set page(columns: 1)

#meander.reflow({
  import meander: *

  placed(
    bottom + right,
    boundary: contour.ascii-art(
      read("../../../graphics/illustrations/Mirror.png.contour"),
    ),
    mirror,
  )
  container(align: left, width: 50%)
  container(align: right, width: 50%)

  content[
    === Mirrors

    #race-infobox(
      creature-type: "Fey",
      senses: "Light-attuned (resist blinding; low light treated as darkness)",
      height: "120--210 cm",
      weight: "50--120 kg",
      build: "Exaggerated proportions; generally tall and broad-shouldered",
      coloring: "Vivid; tends toward darker skin tones, often luminous in sunlight",
    )

    The Mirrors, children of Might-Be, the Fateweaver, are the fairest of the
    humanoid races. They lived in the beautiful lands of Faerie, once, and like many
    of its denizens, they are adept at misleading their foes.

    Mirrors are humans in splendor: generally tall, broad-shouldered, vivid in coloring,
    almost luminous in sunlight. Even where they deviate from the ideal, everything
    about them is exaggerated -- a mirror might be unbelievably short or tall enough to
    rival a warboar, stocky to the point of comedy or have limbs lanky enough to count as
    a baboon. Their mother-goddess being the lady of day, they tend to darker skin tones
    and often seem to glow with internal light. Mirrors' heights range from 120 to 210 cm,
    although they cluster in the middle, and they weigh between 50 and 120 kg when healthy.
    Mirrors can and do become both underweight and obese, and they may be well outside
    the range of body weights given here when this happens.

    Mirrors gain the following racial traits:

    ==== Light-Attuned Senses
    Your mother-goddess is the lady of day, and your senses are tuned to her domain.
    You are immune to being blinded by bright light, including magical light effects.
    However, you treat low-light conditions as darkness --- in dim light, you cannot
    see without an additional light source.

    ==== Children of Day
    A Mirror gains +1d on Endurance checks while in direct sunlight.

    ==== Dance of the Spring Court
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
  ]
})

#meander.reflow({
  import meander: *

  placed(bottom + right, shade)
  container(align: left, width: 50%)
  container(align: right, width: 50%)

  content[
    === Shades

    #race-infobox(
      creature-type: "Fey",
      senses: "Blindsense 5m (hearing), Low-light vision; Light-sensitive",
      height: "165--190 cm",
      weight: "60--80 kg",
      build: "Middling height, slender; rarely overly portly or muscled",
      coloring: "Pale",
    )

    Shades were the favored companion of Once-Was, the Knower of Ways, Goddess of
    what is Hidden and Forgotten. They are said to have dwelt deep underground, in
    glorious palaces, until they rode out to hunt in the long winter nights of
    Faerie.

    Where Mirrors are everything humans are, but more, Shades are less -- nearly all
    Shades resemble each other more closely than any two humans do. They are pale,
    of middling height, and rare is the Shade who becomes overly portly or muscled.
    Shades nearly all cluster between 165-190 cm of height and 60-80 kg of body weight.

    As a Shade, you gain the following racial trait:

    ==== Hunt of the Autumn Court
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

    ==== Acute Hearing
    The huntresses of the Autumn Court stalked their prey through the endless dark of
    the deep fey. You have Blindsense out to 5 meters, allowing you to detect
    creatures and objects by sound alone without needing line of sight. However, you
    are light-sensitive --- in direct sunlight or equivalent magical brightness, you
    suffer --1d on Perception checks and attack rolls.

    ==== Children of Night
    A Shade gains +1d on Endurance checks while in dim light or darkness.]
})
