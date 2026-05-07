#import "../../formatting/declarations.typ": *
#import "@preview/meander:0.4.2"

#let ironhands = image("../../../graphics/illustrations/Ironhands.png", height: 50%)
#let porcelain = image("../../../graphics/illustrations/porcelain.png", height: 50%)

#set page(columns: 1)

#meander.reflow({

  import meander: *

  placed(left + bottom, ironhands)

  container(align: left, width: 50%)
  container(align: right, width: 50%)

content[=== Clockwork

#flavor[“The Goddess Third loved toys and tinkers, and when she took up arms,
  her toys marched alongside her.”]

You are a construct, a machine of supreme elegance, the watchmaker’s art united
with that of the wizard. Powered by the energy of your soul-anchor and the
arcane workings of your mechanism, you were once created for love of art and
science, and once reforged in your maker’s tears to fight like no creature could
fight.

There are two kinds of clockworks: Ironhands and Porcelains. All clockworks have
the following traits:

==== Construct

You are a machine, and thus do not need to eat, breathe, or sleep. You are
immune to poison and disease. In practical terms: hunger, thirst, and sleep
deprivation are not tracked for you; you are unaffected by poison gas, smoke
inhalation, and suffocation; and ambient temperature within survivable ranges
has no effect on you. You still benefit from short and long rests by entering
a low-power maintenance mode. However, you are treated as a machine and are
subject to all effects that target machines.

==== Wind-Up
You are powered by the soul-anchor you carry within your body, which drives the
mechanism that moves you. When the connection to the soul-anchor is interrupted,
you become an inanimate object after three rounds until the connection is
restored. This effect can be staved off for up to one hour by winding up your
mechanism manually from the outside. After this time, you lose consciousness and
winding up has no further effect until the underlying problem is fixed.

==== Magnetic Vulnerability
Strong magnetic fields disrupt the delicate circuitry that drives your
mechanism. Such fields are found near unshielded magitek power plants, in the
shadow of certain ruined industrial sites, and during the magnetic storms that
occasionally roll through Dense Fog regions.
- *Moderate field:* --1d to all checks while in the field.
- *Strong field:* --2d to all checks; at the start of each round of exposure,
  you must succeed on a Grit check (difficulty 5) or be Stunned until the end
  of your next turn.
- *Severe field:* --3d to all checks; on a failed Grit check, you shut down
  for one stretch and must be carried clear. A successful Shop check
  (difficulty 6) by an ally can stave off the next failure.

==== Particulate Vulnerability
Sandstorms, ash fall, silt-laden air, and the interior of certain ruined
factories deposit superfine particles that

]})

#meander.reflow({

  import meander: *

  placed(center + bottom, porcelain)

  container(align: left, width: 50%)
  container(align: right, width: 50%)

content[work their way into your joints
and gears. After 4 hours of exposure without adequate sealing, you take --1d
on physical checks; this penalty accumulates by another --1d every 4 hours,
to a maximum of --3d. The penalty is removed by 1 hour of dedicated
maintenance per --1d incurred (a Shop check, GM's discretion), or by a long
rest in a clean environment. Sealed face plates, oiled joint covers, and
similar gear extend the time before the first penalty applies.

==== Fog Sensitivity
Clockworks are themselves a form of magitek, and react to elevated Fog
densities much more strongly than biological creatures. Your Fog Exposure
thresholds (see _Fog Exposure_ in the Exploration chapter) are halved ---
the inverse of humans. In addition, at the start of each stretch spent in
Dense or Extreme Fog, you must succeed on a Grit check (difficulty 5 in Dense
Fog, difficulty 7 in Extreme Fog) or suffer a malfunction: you are Stunned
until the end of your next turn, or, at the GM's option, suffer a randomly
determined minor effect (a stuck servo, a spell capacitor misfire, a limb
that briefly ceases to obey).

In addition, every clockwork must choose one of the following two subtypes:

==== Ironhands
You are a walking suit of armor, made to wield heavy weapons and crush your foes
in melee. Your actual body is a magi-mechanic core that powers the limbs and
weapons of your iron form.

You gain the following racial traits:

===== Walking Armor
You cannot normally wear armor. Instead, your core is built to be fit into
combat walker frames called Construct Bodies. You begin the game with a
construct body available to you. If at any point you wish to switch to a new
one, your core must be uninstalled from your current body and inserted into the
new one. This is an operation that takes significant time -- the engineer
conducting it must roll Shop against the Equipment Rank of the construct body,
with every roll taking one day.

===== Integrated Weapons
You can mount weaponry and gear to your construct body up to its total bulk
rating. When you do this, you ignore the bulk rating on the mounted equipment.
Your charge use is calculated as normal.

==== Porcelain
Where the Ironhands are brute force, the Porcelains are effortless grace. Lithe,
youthful figures, they were originally crafted as companions for the reclusive
Just-So. When the war came, she remade them as conduits for raw magical might.

You gain the following racial traits:

===== Graceful Form
You move with supernatural grace. While you are animated, the magic within you
disguises your nature as a clockwork until someone touches your cold skin. You
are immune to effects that would trip you and you ignore movement penalties from
Difficult and Treacherous terrain.

===== Spell Capacitor
Your inner workings are optimized to focus arcane energy into destructive force.
Whenever you expend Focus, roll a d6. On a 5 or 6, you immediately regain the
lost Focus.]
})