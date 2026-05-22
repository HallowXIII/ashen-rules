#import "../../formatting/declarations.typ": *
#import "@preview/meander:0.4.2"

#let human = image("../../../graphics/illustrations/HumanFrontierPriest.png", height: 60%)

#set page(columns: 1)

#meander.reflow({

  import meander: *

  placed(
    center + bottom, 
    boundary: contour.ascii-art(read("../../../graphics/illustrations/HumanFrontierPriest.png.contour")),
    human
  )

  container(align: left, width: 50%)
  container(align: right, width: 50%)

content[=== Humans
#flavor["And thus it was that the first-born of the gods were doomed to spend
  their lives torn between themselves, for both the Boar-Mother and the
  Falcon-Headed Sun had laid their claims to them, and neither would relinquish
  theirs until the bitter end."]

#race-infobox(
  creature-type: "Humanoid",
  senses: "Spirit Sight",
  height: "150--200 cm",
  weight: "50--120 kg",
  build: "Diverse, depending on ancestry",
  coloring: "Diverse, depending on ancestry",
)

Humans were the first of the humanoid races, product of a Tryst between the God
of Crafts, whose name is now lost, and the Boar-Mother, the great goddess of
Life and Earth. When she slew her lover in a fit of jealous rage, it was the Sun
God Khâru who adopted the young race to shield them from her wrath. Their
natures have been divided ever since, but they are closer to the fading glory of
the Gods than any other race.

==== Spirit Sight
Your divine heritage grants you a faint awareness of spiritual
presences. You can passively sense consecrated or desecrated ground, the
proximity of undead or spirit creatures, active divine blessings or curses, and
the attention of the gods. This sense functions out to 20m. It provides awareness,
but not detail --- you know something is there, but not what. 
You gain +1d on Eerie checks to identify or analyze divine or spiritual phenomena.

==== Golden Apple
Your nature makes you beloved of the gods.
When you attune to a reliquary, you begin with 1 favor already earned --- the
gods recognize their firstborn. In addition, the first time you tap a prayer
each encounter, the tap costs 0 favor instead of 1. You also gain a +2 bonus
to Occultism checks whenever you interact with divine essence, relics of the
gods, or sacred sites.

==== Gift of the Sun
Falcon-Headed Khâru is a great and terrible father; he demands much, but he
rewards with pride the efforts of his children. Once per round, you may spend
2 Essence Points to add 2 automatic successes to any check you make. This
decision is made after rolling but before the result is determined.

==== Gift of the Earth
The Boar-Mother gives freely of her gift; but those who sup too greedily
discover that with debt comes obedience. Beneficial magical effects on you
whose duration is measured in rounds last two rounds longer than usual. However,
saving throws you make against hostile magical effects require 3 successes
instead of the usual 2.

==== Children of the Land
Your mortal ancestry ties you to the living earth. When you take a long rest in cultivated or living land, you recover 4 EP per day. In barren waste, or zones of Dense or Extreme Fog, you recover only 2 EP per day.

==== Adapted Stock
Human biology is uniquely resistant to Fog exposure. Your Fog Exposure thresholds (see _Fog Exposure_ in the Exploration chapter) are doubled. This ability applies to both Dense and Extreme Fog exposure.]

})