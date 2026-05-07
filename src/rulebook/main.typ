#import "../formatting/declarations.typ": *
#set page(paper: "a4")
#show: pf-stylization
#set document(title: "Ashen Rulebook")

#set document(
  title: "Ashen Rules",
  author: "Hallow XIII",
  description: "The Ashen Rulebook",
  keywords: (),
  date: datetime(
    day: 29,
    hour: 15,
    minute: 8,
    month: 3,
    second: 0,
    year: 2026,
  ),
)

#titlepage("A s h e n", subtitle: "Role-Playing Game", description: "Core Rulebook")

#include "foreword.typ"

#pagebreak()

#chap-header([], "Table of contents", [])
#outline(title: [], depth: 2, indent: 2em)

#pagebreak()

#include "introduction.typ"

#pagebreak()

#include "characters.typ"

#pagebreak()

#include "skills.typ"

#pagebreak()

#include "advances.typ"

#pagebreak()

#include "powers.typ"

#pagebreak()

#include "equipment.typ"

#pagebreak()

#include "combat.typ"

#pagebreak()

#include "exploration.typ"

#pagebreak()

#include "setting.typ"

#pagebreak()

#include "gmguide.typ"

#pagebreak()

#include "character-sheet.typ"




