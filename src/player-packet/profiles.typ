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

#set page(columns: 1)

#chap-header([], "Character Profiles", "Pregenerated characters to pick from")

The following pages introduce seven ready-to-play characters.
Every one of them is built to the same budget, so no single one
is stronger than the others, but every character is good at different things.

As combat is the most complex part of the game, each character comes with
a more detailed explanation of what they can do in combat and how to play
them in a fight.

The names given to these playtest characters aren't set in stone: if you'd
prefer to play Juan the Warboar to Ushtang the warboar, or make any other
modifications, that is perfectly possible. For this reason, too, while ideally
every player would pick a different character, if more than one person
prefers to play the same character, then that character can simply be made into
two with a name change and perhaps one or two minor tweaks.

#float(pftab(
  "Character Overview",
  columns: (1fr, 1fr, 2.4fr, 0.8fr),
  align: (left, left, left, center),
  [*Name*],
  [*Kind*],
  [*Does what*],
  [*Fiddly?*],
  [Ushtang],
  [Warboar],
  [Hits things until they stop],
  [No],
  [Zamazaha],
  [Porcelain],
  [Duels, dances, punishes misses],
  [A little],
  [Pahak],
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
  [Mbazan],
  [Goldenbristle],
  [Gives orders, slows enemies],
  [Most],
))

#pagebreak()

#set page(columns: 2)

// =========================================================================
#profile-header("Ushtang", "Front Line")
Warboar Sootbeast --- _Never-Still, by way of a friend_

#quote-line["Usually when I go looking for someone it's just business. This
time it's quite personal."]

#portrait("ushtang.png", height: 50%)

#stat-line(
  ("HP", "19"),
  ("FP", "11"),
  ("EP", "11"),
  ("Evasion", "0"),
  ("Armor", "6"),
  ("Ward", "2"),
  ("Move", "7"),
)

#beat("Who You Are")[
  One of the peacekeepers who vanished outside Keshto was a friend. He was
  mortal, and so your friendship was always destined to end, but you are
  incensed at the way it did. The concerns of the Never-Still are not your
  concerns; you only came because somebody took something of yours, and you
  intend to make sure that the responsible parties are made to understand
  their transgressions.

  You are the largest, toughest member of the party, but you have no magic
  whatsoever. You have, so far, found that you do not need it.
]

#colbreak()

#beat("What You're Good At")[
  - *Hitting things.* Your Martial stat is 7 --- the best melee pool in the party.
  - *Not dying.* 19 HP, Armor 6, Ward 2. You are not going down any time soon.
  - *Momentum.* *Tide of Iron:* every kill hands you back up to 2 AP, so a good
    turn keeps going.
  - *Refusing to move.* +2 against anything that would shove, pull, or drag you,
    and +2 when you do it to someone else.
  - *Courage.* As a Warboar, you are simply immune to fear. A privilege when combined
    with immortality.
  - *Staying in.* Once per fight, 1 AP heals you and clears all ongoing damage.
  - *Dealing with terrain.* You have trained your body well. You have Athletics 7,
    Acrobatics 6. Climb it, jump it, break it.
]

#beat("What You Should Watch For")[
  - *Evasion 0.* Everything hits you. The armor helps, but it won't absorb everything.
  - *Range.* You have Marksmanship 3 and a hammer. If the fight is at a distance you are
    doing some walking.
  - *Poison.* Sootbeast flesh takes 50% extra poison damage and resists disease
    at +2 difficulty. Do not drink the strange liquid.
]

#beat("Combat tactics")[
  *Charge* --- 3 AP, move at the nearest enemy, attack with +4d. That is *11
  dice* on your opening swing. If the charge kills, Tide of Iron refunds up to 2 AP
  and you go again. Simple, but effective.
]

#pagebreak()

// =========================================================================
#profile-header("Zamazaha", "Front Line")
Porcelain Clockwork --- _A free agent, building her name_

#quote-line["I was made to pour tea. What excuse do you have?"]

#portrait("zamazaha.jpg", height: 50%)

#stat-line(
  ("HP", "16"),
  ("FP", "13"),
  ("EP", "11"),
  ("Evasion", "4"),
  ("Armor", "5"),
  ("Ward", "0"),
  ("Move", "7"),
)

#beat("Who You Are")[
  The Porcelains, it is said, were meant to be their Goddess' playmates, before they were repurposed as tools of war.
  In your case, you awoke with an encyclopaedic knowledge of tea ceremony and a bladed weapon in your hands. Finding
  little use for the former, you ended up making your living with the latter. 

  As a free agent, you take whatever contract pleases you. The ones with large amounts of feathers attached please you the most.
]

#colbreak()

#beat("What You're Good At")[
  - *Reaching and cutting.* Your weapon is a Force Glaive, 7+d6, *Penetration 2*,
     hits at 2 squares.
  - *Moving.* Your Move 7 is tied for the fastest in the party.
    Your *Vault* advance and *Graceful Form* trait let you walk through enemy
    squares as though they weren't there.
  - *Punishing misses.* When an enemy misses you in melee, you can hit them
    back with your *Riposte* before their turn is done.
  - *Not being hit.* Your Evasion of 4 make you able to dodge many attacks,
    and Armor 5 isn't bad either.
  - *Sensing magic.* Your ancestry gives you Magicsense out to 10m,
    and a bonus +1d on Eerie checks about arcane effects to boot.
]

#beat("What You Should Watch For")[
  - *Magic.* Your ability to resist magic is very low; try to get your friends
    to distract any spellcasters.
  - *The Fog.* Clockworks suffer at half the usual exposure thresholds, and Dense
    Fog can make you malfunction outright.
  - *Magnets and grit.* Strong magnetic fields and airborne particulates both
    give you stacking penalties.
  - *Questions.* You have Deceive 3. You are honest largely by construction.
]

#beat("Combat tactics")[
  Use 1 AP to move into reach at 2 squares, then 2 AP for *Measured Strike* (4 FP):
  full damage *and* +2 Evasion until your next turn: you swing first, and if the
  enemy attempts to hit back, you are likely to evade and *Riposte*. At 13 FP you can
  do this three times before you run out.
]

#pagebreak()

// =========================================================================
#profile-header("Pahak", "Heavy Weapons")
Ironhands Clockwork --- _On the Perfectors' secret service_

#quote-line["My orders are to observe and report. I have found that observation
  goes better with covering fire."]

#portrait("pahak.jpg", height: 50%)

#stat-line(
  ("HP", "17"),
  ("FP", "12"),
  ("EP", "11"),
  ("Evasion", "0"),
  ("Armor", "6"),
  ("Ward", "1"),
  ("Move", "6"),
)

#beat("Who You Are")[
  You are an agent of the Perfectors, that ancient order of gearsmiths
  pledged to the memory of Third, Mother-Goddess of arcane magic and machinery.
  They sent you to Keshto with instructions that are slightly vaguer than you
  would like. Something about the disappearances interests them, but your superior
  did not deign to share the details with you. Perhaps his superior hadn't either.

  As far as your teammates are concerned, though, you are mostly a weapons platform with legs.
  Your job is to make the range between the party and the enemy expensive to cross.
]

#colbreak()

#beat("What You're Good At")[
  - *Volume.* Your weapon is a Perfector Gatling Mk IV: 8+d8 at Long range,
    firing full auto from Marksmanship 6.
  - *Absorbing.* You're not quite as heavy as the Warboar, but you have 
    17 HP behind Armor 6 and Ward 1.
  - *Seeing through walls.* Your nature grants you Electroception out to 10m
    --- you sense powered and magnetic things through solid obstacles.
  - *Shooting and scooting.* With your *Gun and Run* power (5 FP, 2 uses), you
    can move up to half your Speed *as part of* an attack, for full damage.
  - *Getting in.* You have Access 6 and Shop 5 --- the party's best at locks, doors, and systems.
  And if brute strength is necessary, your Athletics rating is 6.
]

#beat("What You Should Watch For")[
  - *Evasion 0.* Your frame is not dodging anything. Use cover instead.
  - *A lack of stealth.* Your Subterfuge is only 3, and you weigh several hundred kilos.
    You are, in all likelihood, the reason the plan gets loud.
  - *Fog, magnets, dust.* All three degrade you, and Fog affects you at half the
    normal thresholds.
  - *Nuance.* Deceive 3, Eerie 3, Investigate 4 --- if you expect to have to lie, or
    be lied to, you'll want backup.
]

#beat("Combat tactics")[
  1 AP *Take Aim*, then 2 AP to fire the gatling at the largest threat you can
  see --- full auto, 7d to hit. Keep the last AP for a reaction-free
  reposition. If you need to change position and still shoot, use
  *Gun and Run* instead and do both for 2 AP.
]

#pagebreak()

// =========================================================================
#profile-header("Kalariyar", "Scout")
Shade Echo --- _On personal business_

#quote-line["The old sites remember me. I would rather find out why before
  somebody else does."]

#portrait("kalariyar.jpg", height: 50%)

#stat-line(
  ("HP", "14"),
  ("FP", "13"),
  ("EP", "11"),
  ("Evasion", "4"),
  ("Armor", "4"),
  ("Ward", "0"),
  ("Move", "6"),
)

#beat("Who You Are")[
  You are a Shade; an erstwhile denizen of the realms of Faerie, and companion 
  of the Midnight Princess. Shades hunted the long winter nights of Faerie for
  the Goddess of what is Hidden and Forgotten, and you have kept the instinct, if
  not the memory.

  The fey sites around Venna Weald are your best chance at remembering something
  of your past. Somebody is killing people next to them, and you want to know
  whether that is coincidence.
]

#colbreak()

#beat("What You're Good At")[
  - *Noticing.* You have an Awareness of 7, the best in the party by two.
    Your Shade ancestry grants you Blindsense out to 5m: you detect things by
    sound with no line of sight at all.
  - *Dealing with armor.* Your Cryo Pistol has *Penetration 4*, far and away
     the party's best answer to a heavily armored target. Even better, every hit
     forces a Stamina check; failure means *Slowed*, and hitting an
     already-Slowed target *Freezes* it outright.
  - *Point blank.* *Pistoleer* gives +2d at 3 squares or less (*7 dice*), and
    *CQB Specialist* means shooting inside melee does not provoke.
  - *Going where you like.* *Fey Jaunt* (6 FP): teleport anywhere within your
    move range, as a move.
]

#beat("What You Should Watch For")[
  - *Daylight.* You take --1d on Perception checks *and attack rolls* in direct sunlight.
    You are a night and interior operator.
  - *Being hit.* You're a bit more fragile than some others. Evasion 4 is good,
    but cover is also your friend.
  - *Physical exertion.* At Strength 1 and Endurance 1, brawn is not your forte.
]

#beat("Combat Tactics")[
  You have a signature move: use 2 AP for *Hunt of the Autumn Court* (6 FP) to mark an enemy
  within 15 --- your shots then ignore its cover and concealment --- then 2 AP
  to shoot it. Later, *Fey Jaunt* can drop you *adjacent to the mark at any
  distance*, which is how you reach the enemy's back line. You have Focus for
  two innate powers per scene, so choose wisely when to make use of it.
]

#pagebreak()

// =========================================================================
#profile-header("Wishanya", "Arcane")
Porcelain Clockwork --- _Following the method_

#quote-line["Whoever is doing this knows what they're doing. That makes it predictable."]

#portrait("wishanya.jpg", height: 50%)

#stat-line(
  ("HP", "13"),
  ("FP", "16"),
  ("EP", "11"),
  ("Evasion", "3"),
  ("Armor", "4"),
  ("Ward", "0"),
  ("Move", "5"),
)

#beat("Who You Are")[
  Just-So, Goddess of Magic, built the Porcelains as conduits for raw magical force.
  You went further on your own initiative: you read voraciously; Alchemy, Ritual, Magitek,
  whatever survived the war in a condition worth reading.

  You took this contract because the little you have heard about the
  disappearances sounds methodical, and methodical means a practitioner.
  You would quite like to see their notes.
]

#colbreak()

#beat("What You're Good At")[
  - *Area damage.* Your *Flamethrower* is an 11 meter Cone of Thermal damage (8+d4)
    plus 3 ongoing burn that lasts until saved against.
  - *Dealing with magic.* Your Porcelain ancestry gives you Magicsense to 10m and
    a bonus to your Eerie checks; your Skills mean you have an easy time researching
    and understanding magical workings. 
  - *Free Focus.* Your *Spell Capacitor* lets you roll a d6 every time you spend Focus,
    on a 5 or 6 you get it all back.
]

#beat("What You Should Watch For")[
  - *Friendly fire.* A Cone 11 is enormous. Be careful not to burn the rest of the party.
  - *Melee.* Between your magic and your pistol, you prefer staying at range.
  - *Fog and magnets.* The frailties of every Clockwork.
]

#beat("Combat Tactics")[
  Wait for two enemies to line up, then 2 AP *Flamethrower* (8 FP): Cone 11,
  difficulty 3, resisted by each target's Dodge against your cast. Full Thermal
  damage plus 3 ongoing. You have Focus for *two* casts --- more if Spell
  Capacitor is kind --- so the first one should catch at least two targets.
]

#pagebreak()

// =========================================================================
#profile-header("Kho Prea", "Divine Support")
Human --- _Sent by the Children of the Flame_

#quote-line["The Clear is thinning at the western edge. Nobody in Keshto has
  mentioned it. I find that interesting."]

#portrait("kho-prea.jpg", height: 50%)

#stat-line(
  ("HP", "15"),
  ("FP", "15"),
  ("EP", "11"),
  ("Evasion", "2"),
  ("Armor", "2"),
  ("Ward", "4"),
  ("Move", "6"),
)

#beat("Who You Are")[
  Humans were adopted by the Sun God Kharu when their own mother turned on them.
  You have elected to show your appreciation for this inheritance.
  The Children of the Flame keep the Clears alive; when this one started showing
  signs of destabilizing, you were sent to keep an eye on it. All the easier to
  do so if the cause might be a person.

  You carry with you an ember of the Sun-God's flame, light and warmth unto
  the wretched; you also carry a gun, for the especially wretched.
]

#colbreak()

#beat("What You're Good At")[
  - *Healing.* *Mend Wounds* (5 FP, 3 casts) is your staple prayer. An ally within 15
    squares of you recovers 4+d3 HP. *Tap* it to double that. At Command 7, you have
    a very good chance of the God-Shard coming to your aid. 
  - *Strengthening your allies.* With *Sunfire Blessing*, an ally's weapon gains
    half your damage roll as bonus Thermal damage, and when tapped, the full roll.
  - *Rescuing any roll.* Your Human ancestry comes with the *Gift of the Sun:*
    spend 2 EP to add *2 automatic successes to any check*. And you decide
    *after seeing the dice*! 
  - *Free taps.* *Golden Apple:* you start attuned with 1 favor, and the first
    tap each encounter costs nothing.
  - *Ward 4.* The best magical defence in the party.
  - *Being an all-rounder out of combat.* Investigate 6, Ritual 6, Deceive 6,
    Athletics 6, Alchemy 5. You have a lot of useful skills in a lot of domains.
]

#beat("What You Should Watch For")[
  - *Physical attacks.* At Armor and Evasion 2, both gun and sword land and hurt.
    Keep something between you and them.
  - *Hostile magic.* Your *Gift of the Earth* cuts both ways: your buffs last two
    rounds longer, but your saves against hostile magic need *3* successes
    instead of 2.
  - *Being the only healer.* Everyone else has at most a potion. Your magic may 
    come in more than handy. 
]

#beat("Combat Tactics")[
  Open with *Sunfire Blessing* on whoever is about to swing hardest, for 2 AP and 5 FP;
  tap it for free because it is your first tap this encounter. You can spend 2 AP to shoot,
  or move to reposition. You'll probably want to keep 5 FP in reserve at all times; 
  those are cheaper than a death.
]

#pagebreak()

// =========================================================================
#profile-header("Mbazan", "Command")
Goldenbristle Sootbeast --- _The most directly concerned_

#quote-line["I have lost patrols before. I have never lost them quietly. That is
  what is wrong here."]

#portrait("mbazan.jpg", height: 50%)

#stat-line(
  ("HP", "13"),
  ("FP", "17"),
  ("EP", "11"),
  ("Evasion", "2"),
  ("Armor", "2"),
  ("Ward", "4"),
  ("Move", "5"),
)

#beat("Who You Are")[
  Goldenbristles were bred as the field commanders of Sootbeast armies, and the
  Never-Still gave you a real command to go with the instinct. You are in charge
  of policing in a different village; when Keshto began losing patrols, you applied
  to come and help --- better solve this problem here, before it's your men on the line.

  You don't fight that well on your own, but that's fine. Every team needs at least one team
  player. 
]

#colbreak()

#beat("What You're Good At")[
  - *Talking.* You have Influence 7 --- the best in the party, and a respectable
    Impose 6. You are good at dealing with anyone who needs to be convinced, one way or the other.
  - *Command powers.* With *Rally* (4 FP), an ally within 10 meters gets +2 on their next
    attack or resistance check, and may immediately shake off fear. *Born
    Leader* gives +2 on the roll to activate it.
  - *Breaking tempo.* You're not just a leader of men, but a psychic to boot ---
    with *Slow* (5 FP, 3 casts), a target within 12 loses Movement 
    Speed and Initiative if it fails its Potential check.
  - *Owning the initiative.* As a Goldenbristle, you get +2 dice to your Initiative
    roll, and *once per round you may swap places in the initiative order with any
    ally you can see.* With judicious use of this ability, the battle is yours to control.
    1 AP.
  - *Facing Magic.* With 4 Ward, you're tied for best magic resist in the party.
]

#beat("What You Should Watch For")[
  - *Physical Attacks.* With 13 HP and 2 Armor, you have the least ability to absorb
    damage, in one package with rather middling dodging ability.
  - *Missing.* You have both Martial and Marksmanship at 3. The rifle shouldn't be
    your first choice. 
  - *Poisons.* Your Sootbeast ancestry makes you vulnerable to Chemical damage.
]

#beat("Combat Tactics")[
  Before you do anything, look at the initiative order and consider swapping
  with whoever is badly placed --- it is free and it is once per round. Then 2 AP
  *Rally* on the ally about to make the important attack, or 2 AP *Slow* on
  whatever is closing on your casters. You have Focus for roughly three casts
  plus Rallies, and 17 FP is the largest pool in the party.
]
