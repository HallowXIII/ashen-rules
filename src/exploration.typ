#import "declarations.typ": *

= Exploration

The world of Ashen is vast and dangerous. Between battles, characters must
navigate hostile terrain, endure the elements, manage their resources, and
contend with the consequences of their immortal nature. This section provides
rules for everything that happens outside of structured combat.

== Overland Movement

Characters traveling overland cover distance based on their mode of
transportation and the terrain they are crossing.

#pftab(
  "Base Travel Speeds",
  columns: 3,
  align: (left, center, left),
  [*Mode*],
  [*Distance/Day*],
  [*Notes*],
  [On foot],
  [40 miles],
  [Standard marching pace],
  [Mounted],
  [80 miles],
  [Horse or equivalent beast of burden],
  [Vehicle (ground)],
  [100 miles],
  [Cart, carriage, or motorized ground vehicle],
  [Skimmer],
  [250–500 miles],
  [Magical/mechanical hover vehicle; speed varies by model],
  [Airship],
  [300–600 miles],
  [See Airship Combat section for details],
)

#pftab(
  "Terrain Modifiers",
  columns: 3,
  align: (left, center, left),
  [*Terrain*],
  [*Speed Modifier*],
  [*Examples*],
  [Road/Easy],
  [Normal],
  [Paved roads, open plains, well-maintained paths],
  [Medium (no roads)],
  [-25%],
  [Light forest, grassland without paths, gentle hills],
  [Difficult],
  [-60%],
  [Swamps, mountain passes, dense jungle, rubble-choked ruins],
  [Harsh],
  [-90%],
  [Vertical climbs, the Thorn Forest, active volcanic terrain],
)

=== Forced March

Characters can push beyond a normal day's travel (typically 8 hours of
movement). For each additional hour of travel, each character must make an
Endurance check (difficulty 4, increasing by 1 per additional hour). On failure,
the character gains the Exhausted condition until they complete a rest.

=== Navigation

When traveling off established roads, the party must designate a navigator who
makes an Investigate check at the start of each day. The difficulty depends on
the terrain and conditions:

- Open terrain with clear landmarks: 2
- Forest or hills with limited visibility: 4
- Swamp, dense jungle, or featureless desert: 6
- Inclement weather: +2 to difficulty
- No map or prior knowledge of the area: +2 to difficulty

On failure, the party veers off course, losing 25% of the day's travel distance.
On a critical failure (0 successes), the party becomes lost and must spend the
following day reorienting.

== Terrain

=== Terrain Types

*Open terrain* includes plains, roads, and cleared areas. Movement is
unimpeded and visibility is excellent.

*Forest* provides natural concealment but slows movement. Light forest is
medium terrain; dense forest is difficult terrain. Visibility is limited to
short range.

*Mountain* terrain ranges from medium (foothills, established passes) to harsh
(cliff faces, high peaks). Altitude above the treeline imposes a -1d penalty on
all physical checks unless the character is acclimatized.

*Swamp* is difficult terrain. Characters must make Endurance checks (difficulty
4) each day of travel through swamp or risk contracting disease.

*Desert* is medium terrain by day and presents extreme heat hazards.
Characters without adequate water must make Endurance checks (difficulty 4,
increasing by 1 per day) or become Exhausted.

*Arctic* terrain is medium to difficult. Extreme cold requires adequate
clothing or shelter; without it, characters take ongoing cold damage
(GM-adjudicated).

*Urban* terrain varies. Intact cities are easy terrain on streets, but
ruined or contested urban areas may be difficult terrain due to rubble,
barricades, or hostile inhabitants.

=== Terrain Hazards

Difficult and treacherous terrain affect both tactical and overland movement. See _Difficult and Treacherous Terrain_ in the Combat chapter for the full rules.

== Weather

Weather is determined by the GM or rolled randomly at the start of each day.
Roll 2D6 and consult the appropriate climate table.

=== Temperate Climate

#pftab(
  columns: 2,
  align: (center, left),
  [*2D6*],
  [*Weather*],
  [2],
  [Storm — heavy rain/snow, strong winds. Visibility reduced to short range. -40% travel speed. Ranged attacks at -2d.],
  [3–5],
  [Precipitation — rain or light snow. Light concealment at long range.],
  [6–8],
  [Normal — clear or partly cloudy. No effects.],
  [9–11],
  [Overcast — cloudy, mild. No mechanical effects.],
  [12],
  [Fog — heavy concealment beyond 5 squares. -25% travel speed.],
)

=== Mountain Climate

#pftab(
  columns: 2,
  align: (center, left),
  [*2D6*],
  [*Weather*],
  [2–3],
  [Storm — blizzard or thunderstorm. Travel in harsh terrain becomes impossible. -60% in other terrain.],
  [4–6],
  [Showers — intermittent rain or sleet.],
  [7–8],
  [Normal — clear, cold.],
  [9–10],
  [Fog — as temperate fog.],
  [11–12],
  [Strong wind — ranged attacks at -2d. Flight-based travel at -25%.],
)

=== Tropical / Swamp Climate

#pftab(
  columns: 2,
  align: (center, left),
  [*2D6*],
  [*Weather*],
  [2–3],
  [Thunderstorm — as storm, plus lightning hazard (GM-adjudicated).],
  [4–6],
  [Sweltering heat — Endurance check (difficulty 3) per 4 hours of activity or gain Exhausted.],
  [7–8],
  [Normal — hot and humid. No mechanical effects.],
  [9–12],
  [Rain — light concealment at long range. Swamp terrain becomes harsh.],
)

== Vision, Light, and Senses

=== Light Levels

*Bright light* is the default in open daylight, well-lit interiors, or within
the radius of a strong light source. No penalties apply.

*Dim light* includes twilight, candlelight, moonlight, or the edge of a light
source's radius. Dim light provides light concealment (-2d to hit targets in dim
light from bright light). Scrutiny checks at medium range or beyond take a -2d
penalty.

*Darkness* is the absence of light — underground, sealed rooms, moonless
nights. Darkness provides heavy concealment (-4d to hit). Creatures without
darkvision or another sense capable of replacing sight are effectively Blinded.

=== Special Senses

*Darkvision* allows a creature to see in darkness as if it were dim light,
out to a specified range (typically 20 squares). Darkvision is monochrome and
cannot perceive color. It does not function in magical darkness.

*Lifesense* allows a creature to detect the presence and location of living
creatures within a specified range. Lifesense penetrates walls and obstacles but
is blocked by more than 1 meter of solid stone or metal, or by effects that
mask a creature's vital signs. Lifesense does not detect undead, constructs, or
other non-living entities.

*Magicsense* allows a creature to perceive active magical effects, enchanted
objects, and creatures with an active magical aura within a specified range.
This is the sense used by the Eerie skill. Magicsense can determine the
approximate tier and school of a detected effect with a successful Eerie check.

*Tremorsense* allows a creature to detect the location of creatures and objects
in contact with the same surface (ground, floor, wall) within a specified range.
Tremorsense is defeated by flight, levitation, or very light movement
(Infiltration check vs. the detecting creature's Awareness).

*Blindsight* allows a creature to perceive its surroundings without relying on
sight, through echolocation, magical awareness, or other means. Blindsight
functions in darkness and is not affected by concealment, but is defeated by
total cover. Range is specified per creature.

=== Concealment

Concealment represents visual obstruction that makes a target harder to hit.

- *Light concealment:* -2d to attack rolls against the target. Caused by dim
  light, light rain, smoke, or partial visual obstruction.
- *Heavy concealment:* -4d to attack rolls against the target. Caused by
  darkness (for creatures without darkvision), heavy fog, or dense smoke.
- *Total concealment:* The target cannot be targeted by attacks that require
  line of sight.

=== Cover

Cover represents physical obstruction between an attacker and a target. When a
creature behind cover is hit by an attack, they make a cover save (roll 3 dice)
before the attack is resolved. If the save succeeds, the attack misses.

- *Light cover:* Save succeeds on 3 or more successes. Examples: low walls,
  thin pillars, sparse vegetation.
- *Normal cover:* Save succeeds on 2 or more successes. Examples: solid walls
  with firing slits, overturned tables, doorways.
- *Heavy cover:* Save succeeds on 1 or more successes. Examples: fortified
  positions, arrow slits, thick barricades.
- *Total cover:* The creature cannot be targeted directly while behind total
  cover. The creature must leave total cover to attack.

== Types of Transportation

*On foot* is the default mode of travel. Characters on foot can navigate any
terrain passable to a humanoid and carry their own equipment.

*Mounted travel* uses horses or other beasts of burden. Mounted characters
double their base travel speed on roads and open terrain. Mounts can carry
approximately 200–300 lbs depending on size and breed. Mounts require food and
water and may panic in combat without training.

*Ground vehicles* include carts, motorized carriages, and armored transports.
They offer higher capacity and speed on roads but are restricted to terrain the
vehicle can physically traverse. Fuel-cell-powered vehicles require regular
refueling.

*Skimmers* are magical or magitek hover vehicles that travel at high speed
above the ground. They can cross most terrain types but are affected by severe
weather and cannot operate in enclosed spaces. Skimmer speed varies by model
(250–500 miles/day).

*Airships* are large flying vessels capable of long-distance travel above most
hazards. See the _Airship Combat_ section for rules regarding airship
encounters.

== Disease, Hunger, and Exhaustion

=== Disease

Diseases can be contracted from environmental hazards (swamps, contaminated
water), from creatures (venomous bites, plague carriers), or from magical
effects (the Diseased condition). A contracted disease follows this progression:

+ *Exposure:* The character is exposed to a disease source. They must make an
  Endurance check against the disease's difficulty or become Diseased.
+ *Diseased:* The character gains the Diseased condition. The specific effects
  are determined by the source (see _Status Conditions_). Unless otherwise
  specified, healing received by a Diseased creature is halved.
+ *Treatment:* Disease can be treated with an Alchemy check (difficulty = the
  disease's difficulty), the Antidote recipe (for toxin-based diseases), the
  Cleansing Light prayer, or other curative effects.

=== Hunger and Thirst

Deathless characters are more resilient than mortals but are not immune to
deprivation. A character that goes without adequate food or water suffers the
following effects:

- After 3 days without food: the character gains the Weakened condition.
- After 5 days without food: the character gains the Exhausted condition
  (stacks with Weakened).
- After 1 day without water in normal conditions (or 4 hours in extreme heat):
  the character gains the Exhausted condition.

These conditions persist until the character eats or drinks adequately.

=== Exhaustion

Exhaustion can result from forced marches, sleep deprivation, environmental
exposure, or running out of resources. The Exhausted condition (-2d on all
checks, half movement speed) persists until the character completes a rest.

=== Essence as a Survival Resource

Essence Points (EP) are the fundamental resource that limits Deathless
characters over extended expeditions. EP is spent to fuel powers, revive from
death, and recover during rests. Characters recover only 3 EP per day of rest,
and scarce consumable items are the only way to accelerate this recovery.

Managing EP is the central survival challenge: a party that burns through EP in
combat may lack the resources to revive fallen members or recover from injuries
during travel.

== Currency and Economy

=== Feathers ( #feathers )

The universal unit of account in the world of Ashen is the *Feather* (#feathers) ---
literal metallic angel feathers that are occasionally found in the ruins of the
old world. Their scarcity, durability, and the impossibility of forging
counterfeits make them an ideal currency. Feathers are accepted everywhere,
though remote settlements may prefer barter for everyday transactions.

=== Purchasing Power Guide

#pftab(
  columns: 2,
  align: (left, left),
  [*Item / Service*],
  [*Approximate Cost*],
  [Simple meal at a tavern],
  [_#feathers 2_],
  [Comfortable lodging (1 night)],
  [_#feathers 5_],
  [Fuel cell recharge (standard vehicle)],
  [_#feathers 20_],
  [Vehicle rental (1 day)],
  [_#feathers 50_],
  [Passage on a skimmer (short journey)],
  [_#feathers 100_],
  [Passage on an airship (long journey)],
  [_#feathers 500_],
  [Horse (trained riding horse)],
  [_#feathers 300_],
  [Mechanical repair (minor)],
  [_#feathers 30_],
  [Mechanical repair (major)],
  [_#feathers 200_],
  [Medical treatment (professional)],
  [_#feathers 50_],
  [Information (street level)],
  [_#feathers 10–50_],
  [Mercenary hire (1 day)],
  [_#feathers 100_],
  [Skilled artisan labor (1 day)],
  [_#feathers 30_],
)

For equipment prices, see the _Equipment Tables_ section.

== Lodging and Resting

=== Short Rest

A short rest takes approximately 1 hour and requires a reasonably safe location.
During a short rest, a character may spend EP to recover:

- *1 EP:* Recover HP equal to 25% of maximum HP.
- *1 EP:* Recover Focus equal to 50% of maximum Focus.

A character may spend multiple EP during a single short rest. This is the only
way to spend EP for recovery outside of powers or items.

=== Long Rest

A long rest takes 8 hours (at least 6 hours of sleep and up to 2 hours of
light activity such as keeping watch). At the end of a long rest:

- The character recovers all HP and Focus (this costs EP as with a short rest,
  but the full recovery is automatic).
- The character recovers 3 EP naturally.

=== Resting Conditions

*Comfortable rest* requires adequate shelter (inn, building, or camping kit in
fair weather). A comfortable rest provides full short or long rest benefits.

*Rough rest* occurs without adequate shelter — sleeping on bare ground, in
extreme weather without protection, or in a hostile environment. A rough rest
provides only the benefits of a short rest, regardless of duration.

*Blessed ground* — certain locations saturated with ambient magical energy
(leyline nexuses, ancient temples, sacred groves) provide additional benefits.
When resting on blessed ground, a character recovers 1 additional EP. The GM
determines which locations qualify.

== Death and Revival

=== The Deathless

Player characters in Ashen are Deathless --- immortal beings whose essence
persists beyond the destruction of their physical form. For a Deathless
character, death is not the end, but it carries real and significant costs.

=== Revival with EP

When a Deathless character dies, they may spend 5 EP to revive on the spot.
If they choose to do so, they return to life at the start of the next round
with 1 HP at the location where they fell. A character who revives this way is
Dazed for 1 round as they reorient.

Revival powers such as _Breath of Resurrection_ bypass this EP cost entirely,
allowing allies to bring back fallen comrades without the dead character spending
their own EP. This is the primary value of resurrection powers.

=== Soul Anchors

Every Deathless character has a *soul anchor* --- a location their essence is
bound to. A character can bind to a new soul anchor by resting at that location
and performing a brief binding ritual (10 minutes, no check required). Each
character can have only one active soul anchor at a time. By default, a
character's soul anchor is the last settlement where they completed a long rest.

If a Deathless character dies and has no EP remaining (or chooses not to spend
EP), their essence travels to their soul anchor, where they slowly
reincorporate over the course of 3 to 7 days. While dead and reincorporating,
a character recovers only 1 EP per day (instead of the usual 3). Once they
accumulate enough EP to sustain a physical form (5 EP), they reincorporate at
the anchor with 1 HP and no Focus.

=== Mortal Death

Non-Deathless creatures (mortal NPCs, animals, most enemies) die permanently
when reduced to 0 HP. The _Resurrection Rite_ (a Tier 5 ritual) is the only
known means of restoring a mortal creature to life.

=== Effects That Prevent Revival

Certain powers and effects can delay or prevent revival. A creature affected by
an effect that "prevents revival" cannot spend EP to revive and does not begin
reincorporating until the effect ends. The _Noble Eightfold Blade_ and _World
Serpent's Embrace_ are examples of such effects.
