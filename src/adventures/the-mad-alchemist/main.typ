#import "../../formatting/declarations.typ": *
#import "creatures.typ": *

#set page(paper: "a4")
#show: pf-stylization

#set document(
  title: "The Mad Alchemist",
  author: "Hallow XIII",
  description: "A Tier 1 Adventure for the Ashen Role-Playing Game",
)

#titlepage("The Mad Alchemist", subtitle: "A Tier 1 Adventure", description: "For the Ashen Role-Playing Game")

#outline(depth: 2)

#include "introduction.typ"

#pagebreak()

#include "keshto-village.typ"

#pagebreak()

#include "dump-site.typ"

#pagebreak()

#include "ritual-site.typ"

#pagebreak()

#include "faerie-ruin.typ"

#pagebreak()

#include "appendix.typ"
