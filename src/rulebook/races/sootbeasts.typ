#import "../../formatting/declarations.typ": *
#import "@preview/meander:0.4.1"

#set page(columns: 1)

#let sootbeasts = image("../../../graphics/illustrations/sootbeasts_nobg.png", height: 70%)

#meander.reflow({

  import meander: *

  placed(
    bottom + right,
    boundary: contour.ascii-art(
      read("../../../graphics/illustrations/sootbeasts_nobg.png.contour")
    ),
    sootbeasts
  )

  container(align: left, width: 50%)
  container(align: right, width: 50%)

content[=== Soot-Beasts
#flavor[“The Lion-Headed God of War, jealous of his brother, pawned his
  innocence to the Boar-Mother for creations of his own. Always itching for war,
  her work had the aspect of their mother, but the temperament of their
  father.”]

This diverse race of mostly green-skinned mostly humanoids has vexed many a
scholar and led to the banning of many books. Optimized for life on the
battlefield, many associate Sootbeasts with warlikeness and bravery. Although
not all forms of them display these traits, the ones presented here do.

There are two kinds of Sootbeasts: Warboars and Goldenbristles. Regardless of subtype, all Sootbeasts gain the following racial traits:

==== Asexual
Sootbeasts reproduce in idiosyncratic ways and therefore do not have the
capacity to feel attraction to others, even (or perhaps especially) other
Sootbeasts. You are immune to being seduced, even by magical effects.

==== Born for Battle
Bred to last in grueling campaigns that would wear down an army of any other
race, you can find reserves of energy within yourself no matter how bloodied you
are. Once per encounter, you can spend an action point to give yourself a second
wind. You immediately heal up to your healing rate and end all ongoing damage
effects affecting you.

==== Indomitable
You are the pride of your hive, a son of battle. You were born to the sound of
shields cracking under axes and the drum of gun-volleys in the air. You are
immune to fear effects of any kind and cannot be compelled to run away from
battle.

==== Hardier Stock
Soot-Beasts take only half the usual penalty from heat or cold weather
effects, forced marches, and sleep deprivation. Their bred-for-battle
resilience carries them through the wilderness as it does through campaigns.

==== Reduced Supply Needs
Hunger and thirst clocks tick at half the usual rate for a Soot-Beast; they
need food and water roughly every other day, and can go on short rations for
twice as long as other races before suffering penalties.

]})

#meander.reflow({

  import meander: *

  container(align: left, width: 50%)
  container(align: right, width: 50%)

content[
==== Tainted Flesh
The Soot-Beasts’ close ancestral link to the Boar-Mother makes them a
natural breeding ground for disease and a poor host for poisons. Difficulty
checks to resist disease are made at +2 difficulty against Soot-Beasts.
Poison damage against a Soot-Beast is increased by 50%, and ongoing poison
effects last one round longer than usual.

In addition, every Sootbeast must choose one of the following two subtypes:

==== Warboar

You are the epitome of what people picture when they hear the word “Sootbeast” spoken. Tough, strong, bristling with claw and tusk, you make your enemies tremble with your coming and your allies glad to have you by their side.

Warboars stand between 175 and 220 cm tall and weigh between 90 and 140 kg. Their skin is shades of green from Olive to Forest; their hair is often itself green, but can also come in shades of red, brown or black.

As a Warboar, you gain the following racial traits:

===== Unstoppable, Immovable
You gain a +2 resistance bonus against effects that would move you against your
will. When you make an attack or activate an effect that would move your target,
gain a +2 bonus to any roll made to activate that effect.

===== Tide of Iron
To see your enemies falter before you invigorates you. When you kill another
creature with an action, you immediately regain up to 2 AP for this turn. You
cannot regain more AP than you spent on the action that triggered this ability.]

colbreak()

content[==== Goldenbristle
Where there is brawn, there must be brain, or else the army will falter. While
nothing compels an Warboar to be stupid, and nothing compels a Goldenbristle to
weakness, their temperaments are by and large very different. Where a Warboar
longs to drown in the tide of battle, a Goldenbristle is content to hang back;
where a Warboar is happy (to a certain point) with taking orders, a
Goldenbristle is charismatic and imperious, reflecting their designated role as field commanders of Sootbeast armies.

Goldenbristles have a greater diversity of colors than other Sootbeasts, reflecting the greater influence of their divine Father. Their skin ranges from light green to yellow; the hair on their heads comes in similar colors as that of Warboars, but can be bright blonde as well.

Goldenbristles stand between 170-210 cm tall and weigh between 70 and 100 kg.

As a Goldenbristle, you gain the following
racial traits:

===== Born Leader
You have a natural talent at winning others’ respect, if not loyalty, and your
orders tend to be followed. You gain a +2 bonus on Command rolls to activate
Command Powers.

===== Time to strike!
You gain a +2 bonus to your Initiative roll. In addition, once per round, you
can swap places in the initiative order with one ally you can see.
]

})