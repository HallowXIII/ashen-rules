#import "../../formatting/declarations.typ": *
#import "creatures.typ": *

#set page(paper: "a4")
#show: pf-stylization

#set document(
  title: "The Mad Alchemist",
  author: "Hallow XIII",
  description: "A Learn-to-Play Adventure for the Ashen Role-Playing Game",
)

#titlepage(
  [The Mad \ 
  Alchemist],
  subtitle: "A Learn-to-Play Adventure",
  description: "One session for seven new players --- for the Ashen Role-Playing Game",
)

#set page(columns: 1)
#outline(depth: 2)

#pagebreak()
#set page(columns: 2)

#include "introduction.typ"

#pagebreak()

#include "investigation.typ"

#pagebreak()

#include "dump-site.typ"

#pagebreak()

#include "recluse.typ"

#pagebreak()

#include "sanctum.typ"

#pagebreak()

#include "appendix.typ"
