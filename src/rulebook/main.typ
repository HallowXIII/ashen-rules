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

#titlepage("Ashen", subtitle: "Role-Playing Game", description: "Core Rulebook")

#page(columns: 1, [
  #float(box[= Foreword])

  Ashen is a game born out of a simple emotion: the Game Master's frustration at not being able to design
  satisfying combat encounters for fear of killing player characters. What, I asked myself, could solve this
  problem? I considered many different answers, but the simplest, it seemed to me, was to make death irrelevant.

  The days of tabletop RPGs being primarily a form of survival horror game are long past --- some may regret
  the passing of this era, but to those who wish to feel the fear of violent death in their bones, I say:
  hie thee hence! For there are many games that are much better at doing this than the one you currently
  hold in your hands, and, indeed, Ashen owes not a small part of its rules to such games. But Ashen is not
  one such game.

  For better or for worse, this game is very much a product of its time: the intended gameplay is
  narrative-driven, with the player characters taking the principal roles in a slowly unfolding
  drama. There will be combat --- a lot of combat --- but it should serve narrative purpose. In many
  ways, the fact that the player characters are immortal Deathless clarifies some things that other,
  similar systems leave obscure, if only for force of habit. The expected outcome of a failed quest,
  a lost battle is not the death of the player characters; it is the continuation of the story, but
  with an outcome that hung in the balance now decided, a path not taken now forever closed.

  The characters themselves will be fine: after no more than a week or so of in-game time, they will
  all find themselves awoken by their soul-anchor, bound to the plane by their divine curse. As for
  the players, they will have to deal with the new situation.

  Naturally, such an approach means that not dying is not a sufficient motivator; the characters,
  and ultimately the players, must want something, and be it as vulgar as power and glory, to motivate
  them to continue to adventure, and their enemies must want substantially the same thing --- for
  if death is not enough to stop a rival, only taking their treasure before they do is.

  From this set of thoughts come most of the other rules in this game, directly or indirectly. The
  rules for structured time, the item-based progression, the way XP are awarded --- all of these flow
  out of the core question of how to make a game challenging in which a PC cannot meaningfully die.
  The resulting system is in many ways familiar ground: it covers substantially the same type of
  gameplay as some of the most popular games today --- but it differs greatly in the details.
  As you will come to discover, Ashen uses fairly different concrete mechanics to the popular
  fantasy RPGs, and while it is more outwardly similar to some of its colleagues in the science-fantasy
  genre, even here it makes substantially diffent choices in many regards.

  It is my fervent hope that you will find this game equal parts refreshing, challenging, and fun.
  These playtest rules, while minimalist, include a substantial portion of advice to both the players
  and the GM in hopes of easing them into the new game. You are encouraged, where you deem it good,
  not to follow it. You are equally encouraged to abuse the game wherever and whenever you manage to
  --- every person who breaks the game during its testing phase helps make doing the same slightly
  harder once it is fully released.

  With this out of the way, all I have left to do is to wish you happy gaming! _Ašavahttagohē!_
])

#outline(title: [Table of Contents], depth: 2, indent: 2em)

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




