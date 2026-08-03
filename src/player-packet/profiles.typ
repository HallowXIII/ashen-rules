#import "../formatting/declarations.typ": *

// --- Local layout helpers -------------------------------------------------
//
// A profile is deliberately one page or less: header, portrait, three prose
// beats, and a stat line. Nothing here uses meander, so the packet builds
// without fetching preview packages.

#let art = "../../graphics/illustrations/"

#let profile-header(name, role) = {
  let head(it) = text(weight: "semibold", size: 1.4em, stretch: 50%)[#it]
  set text(font: fonts.sans)
  block(breakable: false)[
    #grid(
      columns: (1fr, auto),
      column-gutter: 0.5em,
      align: (left + bottom, right + bottom),
      head[#upper(name)],
      head[#upper(role)],
    )
    #line(stroke: 1pt, length: 100%)
  ]
}

#let quote-line(q) = block(width: 100%, inset: (y: 0.4em))[
  #set text(font: fonts.special, style: "italic", size: 11pt)
  #align(center)[#q]
]

#let portrait(file, height: 6.5cm) = align(
  center,
  box(inset: (y: 0.4em), image(art + file, height: height)),
)

// Compact one-line stat run, so a profile never spends a table on seven
// two-digit numbers.
#let stat-line(..pairs) = {
  let items = pairs.pos().map(p => [*#p.at(0)* #p.at(1)])
  note[
    #set text(font: fonts.sans, size: 0.9em)
    #align(center)[#items.join([ #sym.dot.c ])]
  ]
}

#let beat(title, body) = [
  #block(above: 1em, below: 1em)[
    #text(
      font: fonts.sans,
      weight: "bold",
      size: 1.5em,
      fill: colors.pfgreen,
    )[#upper(title)]
  ]
  #body
]

// --- Chapter -------------------------------------------------------------

#chap-header([], "The Seven", "Pick one and read one page")

Seven characters are ready to play. Every one of them is built to the same
budget, so no single one is stronger than the others, but every character
is good at different things.

As combat is the most complex part of the game, each character comes with
a more detailed explanation of what they can do in combat and how to play
them in a fight.

The names given to these playtest characters aren't set in stone: if you'd
prefer to play Juan the Warboar to Ushtâng the warboar, or make any other
modifications, that is perfectly possible. For this reason, too, while ideally
every player would pick a different character, if more than one person
must play the same character, then that character can simply be made into
two with a name change and perhaps one or two minor tweaks.

#float(pftab(
  "Pick a Character",
  columns: (1fr, 1fr, 2.4fr, 0.8fr),
  align: (left, left, left, center),
  [*Name*],
  [*Kind*],
  [*Does what*],
  [*Fiddly?*],
  [Ushtâng],
  [Warboar],
  [Hits things until they stop],
  [No],
  [Zamazaha],
  [Porcelain],
  [Duels, dances, punishes misses],
  [A little],
  [Pâhâk],
  [Ironhands],
  [Carries the machine gun],
  [No],
  [Kalariyar],
  [Shade],
  [Scouts, teleports, freezes],
  [Some],
  [Wishanya],
  [Porcelain],
  [Sets the room on fire],
  [Some],
  [Kho Prea],
  [Human],
  [Heals, blesses, saves rolls],
  [Some],
  [Mbazân],
  [Goldenbristle],
  [Gives orders, slows enemies],
  [Most],
))

#pagebreak()

// =========================================================================
#profile-header("Ushtâng", "Front Line")
Warboar Sootbeast --- _Never-Still, by way of a friend_

#quote-line["Sixty years I have been dying for other people's reasons. This one
  I picked."]

#portrait("ushtang.png", height: 50%)

#beat("Who You Are")[
  One of the peacekeepers who vanished outside Keshto was yours --- a century of
  campaigns together, the sort of debt that does not get itemised. You are not
  Never-Still and you do not care about restoring Faerie. You came because
  somebody took something of yours and you intend to be present when it is
  explained to them.

  You are the largest, toughest thing the party owns, and you have no magic
  whatsoever. This is not a weakness. It means your sheet has no moving parts
  and you never lose a turn looking something up.
]

#colbreak()

#beat("Strong At")[
  - *Hitting things.* Martial 7 --- the best melee pool in the party. Roll 7d6.
  - *Not dying.* 19 HP, Armor 6, Ward 2. You have the most of all three.
  - *Momentum.* *Tide of Iron:* every kill hands you back up to 2 AP, so a good
    turn keeps going.
  - *Refusing to move.* +2 against anything that would shove, pull, or drag you,
    and +2 when you do it to someone else.
  - *Fear.* You are immune to it. Entirely. Walk at the thing.
  - *Second wind.* Once per fight, 1 AP heals you and clears all ongoing damage.
  - *Terrain.* Athletics 7, Acrobatics 6. Climb it, jump it, break it.
]

#beat("Watch Out For")[
  - *Evasion 0.* Everything hits you. That is the trade; your Armor eats it.
  - *Range.* Marksmanship 3 and a hammer. If the fight is at distance you are
    just walking.
  - *Poison.* Sootbeast flesh takes 50% extra poison damage and resists disease
    at +2 difficulty. Do not drink the strange liquid.
  - *Thinking.* Investigate 3. Let someone else read the ledger.
]

#beat("Your First Turn")[
  *Charge* --- 3 AP, move at the nearest enemy, attack with +4d. That is *11
  dice* on your opening swing. Spend the last AP on a 1-square step, or hold it.
  If the charge kills, Tide of Iron refunds up to 2 AP and you go again.
]

#stat-line(
  ("HP", "19"),
  ("FP", "11"),
  ("EP", "11"),
  ("Evasion", "0"),
  ("Armor", "6"),
  ("Ward", "2"),
  ("Move", "7"),
)

#pagebreak()

// =========================================================================
#profile-header("Zamazaha", "Front Line")
Porcelain Clockwork --- _Free agent, building a name_

#quote-line["I was made to pour tea. I have had a great deal of time to consider
  alternatives."]

#portrait("porcelain.png")

#beat("Who You Are")[
  You were built as a companion --- decorative, attentive, harmless --- and then
  the war came and you were rebuilt into something that carries a glaive.
  Nobody asked you about either decision. You take Black Guard contracts now
  because a contract is a thing you agree to, and the novelty has not worn off.

  You are the party's duelist: fast, hard to pin down, and best when you are
  the one choosing where the fight happens.
]

#beat("Strong At")[
  - *Reach and cut.* Force Glaive, 7+d6, *Penetration 2*, hits at 2 squares.
    Martial 6.
  - *Moving.* Move 7 --- the fastest in the party. *Vault* lets you walk through
    enemy squares as though they were merely awkward.
  - *Punishing misses.* *Riposte:* when an enemy misses you in melee, hit them
    back. This is free and it happens on their turn.
  - *Footing.* *Graceful Form:* you cannot be tripped and you ignore difficult
    and treacherous terrain entirely.
  - *Staying missed.* Evasion 4, Armor 5 --- best of both among the front line.
  - *Sensing magic.* Magicsense 10m, +1d on Eerie checks about arcane effects.
]

#beat("Watch Out For")[
  - *Ward 0.* Physical hits bounce; magic goes straight through. Do not tank the
    caster.
  - *Fog.* Clockworks suffer at half the usual exposure thresholds, and Dense
    Fog can make you malfunction outright.
  - *Magnets and grit.* Strong magnetic fields and airborne particulates both
    give you stacking penalties. Flagged when relevant.
  - *Talking.* Deceive 3. You are honest largely by construction.
]

#beat("Your First Turn")[
  1 AP to move into reach at 2 squares, then 2 AP for *Measured Strike* (4 FP):
  full damage *and* +2 Evasion until your next turn --- so you swing first and
  are harder to hit for the reply. You have 3 uses. The last AP buys a step
  back out of reach.
]

#stat-line(
  ("HP", "16"),
  ("FP", "13"),
  ("EP", "11"),
  ("Evasion", "4"),
  ("Armor", "5"),
  ("Ward", "0"),
  ("Move", "7"),
)

#pagebreak()

// =========================================================================
#profile-header("Pâhâk", "Heavy Weapons")
Ironhands Clockwork --- _Perfector business, not fully disclosed_

#quote-line["My orders are to observe and report. I have found that observation
  goes better with covering fire."]

#portrait("Ironhands.png", height: 6cm)

#beat("Who You Are")[
  Your soul sits in a magi-mechanic core bolted inside a walking frame, and the
  Perfectors --- who believe the world is a machine that can be repaired ---
  paid for the frame. They sent you to Keshto with instructions that are
  slightly vaguer than you would like. Something about the disappearances
  interests them, and they did not say what.

  You are a weapons platform with legs. Your job is to make the range between
  the party and the enemy expensive to cross.
]

#beat("Strong At")[
  - *Volume.* Perfector Gatling Mk IV: 8+d8 at Long range, *full auto*.
    Marksmanship 6.
  - *Absorbing.* 17 HP behind Armor 6 and Ward 1, and the gun is *Integrated* so
    its Bulk costs you nothing.
  - *Seeing through walls.* Electroception 10m --- you sense powered machinery,
    live circuits, and big metal through solid obstacles. This is a scouting
    tool; use it.
  - *Shoot and scoot.* *Gun and Run* (5 FP, 2 uses): move up to half your Speed
    *as part of* the attack, for full damage.
  - *Getting in.* Access 6 --- the party's best at locks, doors, and systems.
    Athletics 6, Shop 5.
]

#beat("Watch Out For")[
  - *Evasion 0.* Your frame is not dodging anything. Use cover instead.
  - *Stealth.* Subterfuge 3, and you weigh several hundred kilos. You are the
    reason the plan gets loud.
  - *Fog, magnets, dust.* All three degrade you, and Fog affects you at half the
    normal thresholds.
  - *Nuance.* Deceive 3, Eerie 3, Investigate 4.
]

#beat("Your First Turn")[
  1 AP *Take Aim*, then 2 AP to fire the gatling at the largest threat you can
  see --- full auto, 6d6 to hit. Keep the last AP for a reaction-free
  reposition, or bank it. If you need to change position and still shoot, use
  *Gun and Run* instead and do both for 2 AP.
]

#stat-line(
  ("HP", "17"),
  ("FP", "12"),
  ("EP", "11"),
  ("Evasion", "0"),
  ("Armor", "6"),
  ("Ward", "1"),
  ("Move", "6"),
)

#pagebreak()

// =========================================================================
#profile-header("Kalariyar", "Scout")
Shade Echo --- _Personal business in the Weald_

#quote-line["The old sites remember me. I would rather find out why before
  somebody else does."]

#portrait("Shade.png", height: 7cm)

#beat("Who You Are")[
  You are an Echo --- a fragment of the vanished Faerie Realms, still walking
  around in the Age of Ash. Shades hunted the long winter nights of Faerie for
  the Goddess of what is Hidden and Forgotten, and you have kept the instinct if
  not the memory.

  The fey sites around Venna Weald are the closest thing you have to a
  biography. Somebody is killing people next to them, and you want to know
  whether that is coincidence.

  You are the party's eyes, and its answer to armour.
]

#beat("Strong At")[
  - *Noticing.* Awareness 7 --- the best in the party by two. Investigate 6,
    Subterfuge 6.
  - *Hearing in the dark.* Blindsense 5m: you detect things by sound with no
    line of sight at all. +1d on Stamina checks in dim light.
  - *Punching through armour.* Cryo Pistol, 7+d8, *Penetration 4* --- far and
    away the party's best answer to a heavily armoured target.
  - *Freezing.* Every hit forces a Stamina check; failure means *Slowed*, and
    hitting an already-Slowed target *Freezes* it outright.
  - *Point blank.* *Pistoleer* gives +2d at 3 squares or less (*7 dice*), and
    *CQB Specialist* means shooting inside melee does not provoke.
  - *Going where you like.* *Fey Jaunt* (6 FP): teleport anywhere within your
    move range, as a move.
]

#beat("Watch Out For")[
  - *Daylight.* --1d on Perception checks *and attack rolls* in direct sunlight.
    You are a night and interior operator.
  - *Being hit.* 14 HP, Ward 0. Evasion 4 is good; use it and cover.
  - *Cold iron.* Weapons of cold-worked iron do 50% more damage to you, and
    cold-iron restraints block teleporting out.
  - *Lifting things.* Strength 1, Endurance 1. Athletics 3, Grit 3.
  - *Fog.* Halved exposure thresholds.
]

#beat("Your First Turn")[
  The signature play: 2 AP *Hunt of the Autumn Court* (6 FP) to mark an enemy
  within 15 --- your shots then ignore its cover and obscuration --- then 2 AP
  to shoot it. Later, *Fey Jaunt* can drop you *adjacent to the mark at any
  distance*, which is how you reach the enemy's back line. You have Focus for
  two innate powers today, so pick the moment.
]

#stat-line(
  ("HP", "14"),
  ("FP", "13"),
  ("EP", "11"),
  ("Evasion", "4"),
  ("Armor", "4"),
  ("Ward", "0"),
  ("Move", "6"),
)

#pagebreak()

// =========================================================================
#profile-header("Wishanya", "Arcane")
Porcelain Clockwork --- _Following the method, not the money_

#quote-line["Whoever is doing this is a competent alchemist. That is the part
  that worries me."]

#portrait("porcelain.png")

#beat("Who You Are")[
  The Just-So built the Porcelains as companions and then remade them into
  conduits for raw magical force. You went further on your own initiative: you
  read. Alchemy, ritual, magitek, whatever survived the war in a condition worth
  reading.

  You took this contract because the little you have heard about the
  disappearances sounds *methodical*, and methodical means a practitioner, and
  you would like to see their notes.

  You are the party's artillery and its library.
]

#beat("Strong At")[
  - *Area damage.* *Flamethrower:* a Cone *11* of Thermal damage (8+d4) plus 3
    ongoing burn that lasts until saved against. Arcane 6 to cast.
  - *Knowing things.* Investigate 7 --- best in the party. Alchemy 6, Eerie 6,
    Magitek 5, Ritual 5. If it is written down or magical, it is yours.
  - *Sensing magic.* Magicsense 10m, +1d on Eerie about arcane effects.
  - *Free Focus.* *Spell Capacitor:* every time you spend Focus, roll a d6 ---
    on a 5 or 6 you get it all back. Cast as though you had more than you do.
  - *Footing.* *Graceful Form:* untrippable, and difficult terrain does not slow
    you.
  - *Sneaking.* Subterfuge 6, which is unusual for artillery.
]

#beat("Watch Out For")[
  - *Fragility.* 13 HP, Ward 0, Move 5. You are the squishiest thing here and
    the slowest. Stand behind Ushtâng.
  - *Friendly fire.* A Cone 11 is enormous. Check who is standing in it *before*
    you roll --- the party's melee are usually in front of you.
  - *Melee.* Martial 3 and a pistol for a backup. Do not get engaged.
  - *Fog and magnets.* Standard Clockwork frailties, at half thresholds.
]

#beat("Your First Turn")[
  Wait for two enemies to line up, then 2 AP *Flamethrower* (8 FP): Cone 11,
  difficulty 3, resisted by each target's Dodge against your cast. Full Thermal
  damage plus 3 ongoing. You have Focus for *two* casts --- more if Spell
  Capacitor is kind --- so the first one should catch at least two targets.
]

#stat-line(
  ("HP", "13"),
  ("FP", "16"),
  ("EP", "11"),
  ("Evasion", "3"),
  ("Armor", "4"),
  ("Ward", "0"),
  ("Move", "5"),
)

#pagebreak()

// =========================================================================
#profile-header("Kho Prea", "Divine Support")
Human --- _Children of the Flame_

#quote-line["The Clear is thinning at the western edge. Nobody in Keshto has
  mentioned it. I find that interesting."]

#portrait("HumanFrontierPriest.png", height: 7cm)

#beat("Who You Are")[
  Humans were adopted by the Sun God Khâru when their own mother turned on them,
  and you have made a career of that inheritance. The Children of the Flame keep
  the Clears alive; you are the one they send when a Clear's edge starts
  behaving badly and the cause is probably a person.

  You carry Khâru's Ember, a sun-catalyst, and a rifle, because faith and
  logistics are not opposites.

  You are the reason the party survives its mistakes.
]

#beat("Strong At")[
  - *Healing.* *Mend Wounds* (5 FP, 3 casts): an ally within 15 recovers 4+d3
    HP. *Tap* it to double that. Command 7 to cast --- the biggest pool in the
    party.
  - *Making someone else terrifying.* *Sunfire Blessing:* an ally's weapon gains
    half your damage roll as bonus Thermal damage; tapped, the full roll.
  - *Rescuing any roll.* *Gift of the Sun:* spend 2 EP to add *2 automatic
    successes to any check* --- and you decide *after seeing the dice*. Once per
    round. This is the party's emergency button, and it works on other people's
    problems only through your own checks, so speak up early.
  - *Free taps.* *Golden Apple:* you start attuned with 1 favor, and the first
    tap each encounter costs nothing.
  - *Ward 4.* The best magical defence in the party.
  - *Being useful out of combat.* Investigate 6, Ritual 6, Deceive 6,
    Athletics 6, Alchemy 5. Spirit Sight senses consecrated ground, undead, and
    divine attention out to 20m --- which will matter here.
]

#beat("Watch Out For")[
  - *Armor 2, Evasion 2.* Physical attacks land and hurt. Keep bodies between
    you and them.
  - *Hostile magic.* *Gift of the Earth* cuts both ways: your buffs last two
    rounds longer, but your saves against hostile magic need *3* successes
    instead of 2.
  - *Being the only healer.* You are. There is one other healing potion in the
    party. Budget accordingly.
]

#beat("Your First Turn")[
  Open with *Sunfire Blessing* on whoever is about to swing hardest --- Ushtâng
  or Pâhâk --- for 2 AP and 5 FP, and tap it for free because it is your first
  tap this encounter. Then 2 AP to shoot, or hold the AP so you can react. Keep
  at least 5 FP in reserve at all times; that is somebody's life later.
]

#stat-line(
  ("HP", "15"),
  ("FP", "15"),
  ("EP", "11"),
  ("Evasion", "2"),
  ("Armor", "2"),
  ("Ward", "4"),
  ("Move", "6"),
)

#pagebreak()

// =========================================================================
#profile-header("Mbazân", "Command")
Goldenbristle Sootbeast --- _Never-Still, and senior about it_

#quote-line["I have lost patrols before. I have never lost them quietly. That is
  what is wrong here."]

#portrait("sootbeasts.png", height: 7cm)

#beat("Who You Are")[
  Goldenbristles were bred as the field commanders of Sootbeast armies, and the
  Never-Still gave you a real command to go with the instinct. The missing
  peacekeepers were *your* patrol. You were not there. You have been sent to
  Keshto to work with the faction's local contact and put that right, and you
  are aware that this is a courtesy rather than a promotion.

  You do not fight well. You make other people fight better, and you decide
  when they do it.
]

#beat("Strong At")[
  - *Talking.* Influence 7 --- the best in the party. Impose 6. You are the one
    who deals with the Reeve, the factions, and anyone who needs handling.
  - *Command powers.* *Rally* (4 FP): an ally within 10 gets +2 on their next
    attack or resistance check, and may immediately shake off fear. *Born
    Leader* gives +2 on the roll to activate it.
  - *Breaking tempo.* *Slow* (5 FP, 3 casts): a target within 12 loses Movement
    Speed and Initiative if it fails a Potential check. Psychic 6.
  - *Owning the initiative.* +2 to your Initiative roll, and *once per round you
    may swap places in the initiative order with any ally you can see.* This is
    quietly the strongest thing on this page --- you can hand your turn to
    whoever needs to go now.
  - *Fear.* Immune, like all Sootbeasts. Also a second wind once per fight for
    1 AP.
  - *Ward 4.* Tied best in the party.
]

#beat("Watch Out For")[
  - *Fragility.* 13 HP, Evasion 2, Move 5 --- lowest HP and slowest feet, in one
    package. Stay behind the line.
  - *Fighting.* Martial 3, Marksmanship 3. The rifle is for when you have
    nothing better to do, which should be rare.
  - *Poison and disease.* Sootbeast Tainted Flesh: +50% poison damage,
    disease resisted at +2 difficulty.
  - *Investigating.* Investigate 3. Ask Wishanya or Kalariyar.
]

#beat("Your First Turn")[
  Before you do anything, look at the initiative order and consider swapping
  with whoever is badly placed --- it is free and it is once per round. Then 2 AP
  *Rally* on the ally about to make the important attack, and 2 AP *Slow* on
  whatever is closing on your casters. You have Focus for roughly three casts
  plus Rallies, and 17 FP is the largest pool in the party.
]

#stat-line(
  ("HP", "13"),
  ("FP", "17"),
  ("EP", "11"),
  ("Evasion", "2"),
  ("Armor", "2"),
  ("Ward", "4"),
  ("Move", "5"),
)
