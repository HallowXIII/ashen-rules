#import "declarations.typ": *

= Skills
Skills represent your character’s abilities and aptitudes that are not directly
related to their performance in combat.

== Trained and Untrained Skills

Skills are divided into untrained and trained skills. Untrained skills are
available to every character, and start at rank 1. Trained skills, as the name
suggests, require special training. Characters without training in a trained
skill have 0 ranks in it and cannot make skill checks using that skill.

== Gaining and Improving Skills

Characters improve their skills by spending *skill points (SP)*. Every
character begins the game with *11 SP* (10 base and 1 from their starting 1000 XP). 
During play, characters earn 1 additional SP for every 1000 XP they accumulate.

Skill points can be spent during character creation or during intermissions to
improve your skills in the following ways:

- *Learn a trained skill* (rank 0 $arrow$ 1): 1 SP. This represents acquiring
  the basic training needed to use the skill, whether through instruction from a
  mentor, self-study, or hard-won experience. Characters may choose 
- *Improve a skill by one rank*: The cost to raise a skill from rank N to rank
  N+1 is equal to N skill points.

#pftab(
  "Cost per skill rank",
  columns: (1fr, 2fr, 3fr),
  align: center,
  [*Rank*], [*SP Cost*], [*Cumulative (from rank 1)*],
  [2], [1], [1],
  [3], [2], [3],
  [4], [3], [6],
  [5], [4], [10],
  [6], [5], [15],
)

The maximum rank in any skill is 6, representing absolute mastery. A skill’s
total *rating* --- the number of dice you roll for skill checks --- equals your
ranks in the skill plus your ranks in its two linked attributes, for a maximum
of 18.


== Using skills

Skills are usually called upon in situations where unusual danger must be
confronted or special knowledge is required. As such, using a skill requires
making a skill check.

To roll a skill check, first determine your total *rating* for that skill. Every
skill is associated with two attributes; add up your skill ranks with your ranks
in those attributes to obtain your total rating. The end result will be a number
between 3 and 18. This is the total number of dice you have to roll. If the
number of successes you roll beats the difficulty indicated by your GM, your
skill check was successful.

The modalities of your skill check depend on the circumstances and your
character’s training. Some advances or items can grant you a bonus to your skill
check, while some external circumstances may increase the difficulty of your
task. As an example, if you are making an athletics check to climb up a cliff
face, you may benefit from a bonus to your check if you have taken along proper
mountaineering equipment. Conversely, if you are surprised by a sudden storm,
your skill check may become more difficult than you expected.


There are also some special ways you can use your skills that are not making the
usual skill check.

=== Taking the Average
If you are not otherwise distracted or endangered, you can choose to take the
average of your skill rather than roll. If you do so, you can automatically
attempt to succeed at a skill check with a number of successes equal to half
your rating in that skill (rounded down). This usually results in an automatic
success for many routine tasks.

You cannot take the average if you are in combat or in another situation that
makes it impossible for you to devote your full concentration to the skill
check. You also cannot take the average on skill checks made as part of skill
challenges. At your GM’s discretion, you may also not be allowed to take the
average on intrinsically dangerous or high-stakes skill checks, even if you have
a high rating in the skill.

Taking the average is risk-free but also routine --- it does not represent a
moment of growth or challenge for your character.

=== Taking the Maximum
If you have plenty of time, and failing a skill check does not entail any
particular consequences (i.e., you can retry it indefinitely) then you can elect
to treat the result of your skill check as equal to your rating in it.

Doing so takes 10 times as long as making a single check, as it is assumed that
your character fails at, and retries, the task several times before arriving at
a satisfactory outcome; that is, if you keep making skill checks, eventually you
will roll your rating’s worth of successes or higher.

Taking the maximum assumes your character spends the time to get the job done
right, failing and retrying as needed until they arrive at a satisfactory
outcome.

=== Helping Another
Some tasks are amenable to being performed in groups. If you decide to join
another in making such a skill check, then you can grant them a bonus to their
check. The first helper adds a +2 bonus, every helper after that a +1 bonus. In
order to qualify to help another in their skill check, your skill rating must be
at least equal to the difficulty of the task. For example, to help somebody in a
ritual with difficulty 6, your Ritual rating must be 6 or higher.

You cannot help another with a task requiring a trained skill if you are not
yourself trained in that skill.


== Difficulty

The skill descriptions below include a set of sample skill checks along with
their difficulties. If a particular use of a skill is not listed in these
chapters, apply the following guidelines:

*The merely hard is difficulty 0*

An immortal is by nature far above the powers of ordinary mortals. Any task that
would be readily learnable by a mortal of average talent and skill does not
require a skill check from a character, unless the circumstances are truly
adverse.

*One level of difficulty equals two dice*

When determining difficulties, consider the skill level of the character the
challenge ought to be appropriate for. At the absolute minimum level, three
dice, a character will statistically pass a check of difficulty 2 50% of the
time. Every two dice above that, the cutoff for passing 50% of the time
increases by one.

For determining the chance of success at different dice pools, consider the
following chart:

#pftab(
  "Success Chances",
  columns: 6,
  align: center,

  [*Pool Size*],
  [< 10%],
  [~25%],
  [50%],
  [~75%],
  [>90%],
  "3",
  "5",
  "3",
  "2",
  "1",
  "-1",
  "5",
  "6",
  "5",
  "3",
  "1",
  "0",
  "7",
  "8",
  "6",
  "4",
  "2",
  "0",
  "9",
  "9",
  "7",
  "5",
  "3",
  "1",
  "11",
  "11",
  "8",
  "6",
  "4",
  "1",
  "13",
  "12",
  "9",
  "7",
  "5",
  "2",
  "15",
  "13",
  "10",
  "8",
  "6",
  "3",
  "17",
  "15",
  "12",
  "9",
  "6",
  "3",
  "19",
  "16",
  "13",
  "10",
  "7",
  "4",
  "21",
  "17",
  "14",
  "11",
  "8",
  "5",
  "23",
  "18",
  "15",
  "12",
  "9",
  "6",
)

== Skill List

=== Untrained Skills

*Acrobatics (U; AGI + DEX)* \
Control your body, maintain your balance.

*Athletics (U; STR + END)* \
Perform feats of strength and speed.

*Awareness (U; PER + SGT)* \
Know your surroundings, detect and avoid threats.

*Deceive (U; INT + PRS)* \
They didn’t need to know that. Or maybe they did.

*Eerie (U; SGT + ATT)* \
Use your sixth sense.

*Impose (U; PRS + WIL)* \
Leave a lasting impression.

*Influence (U; PRS + INT)* \
Give people really good advice.

*Investigate (U; INT + PER)* \
Perform research.

*Subterfuge (U; DEX + INT)* \
Steal, hide, cheat, and all other such sporting activities.

=== Trained Skills
*Access (T; DEX + INT)* \
Circumvent locks, access control systems and structurally unsound walls.

*Alchemy (T; INT + PER)* \
Straw to gold, lead to uranium, grapes into illegal booze.

*Electronics (T; DEX + INT)* \
Deal with sentient creatures’ worst mistake.

*Magitek (T; INT + ATT)* \
Figure out how that magical gizmo works.

*Occultism (T; SGT + ATT)* \
Commune with your Luigi Board and other things inhabited by a supernatural
presence.

*Piloting (T; DEX + PER)* \
Control high-speed vehicles of all kinds.

*Ritual (T; WIL + ATT)* \
Perform pious and/or blasphemous invocations to the spirits and cast really
fancy spells.

*Shop (T; DEX + STR)* \
Welding, riveting, lathing… the works!


= Skill Descriptions

Skill descriptions adhere to the following guidelines.

*Skill Name*: The name of the skill. \
*Training required*: Whether a skill is untrained (“U”) or trained (“T”). *Key
Attributes*: The name line also includes the abbreviations of the attributes
that contribute to your skill rating. \
*Check*: What a character (“you” in the skill description) can do with a
successful skill check and the usual difficulties (D) of such checks. \
*Action*: The amount of AP or the amount of time required for a check. \
*Try Again*: Any conditions that apply to successive attempts to use the skill
successfully. If the skill doesn’t allow you to attempt the same task more than
once, or if failure carries an inherent penalty, you can’t take the maximum. If
this paragraph is omitted, the skill can be retried without any inherent penalty
other than the additional time required. \
*Special*: Any extra facts that apply to the skill.

== Untrained Skills

=== Acrobatics (U; AGI + DEX)

Your ability to move securely through space. This skill covers keeping your
balance on particularly treacherous ground (such as tightropes), performing
feats of jumping or tumbling, and even avoiding or lessening injury when you
take a fall.

==== Checks

_Balance_: You can make an acrobatics check to balance across narrow surfaces,
highly slippery or uneven ground, or a surface in motion.

Some general modifiers apply to checks made to balance. These modifiers stack
between categories, but only the most severe penalty per category applies. Thus,
trying to run across a narrow (0,75 m) walkway that is iced over and slopes
slightly upward carries a total difficulty of 9 (D 1 base + D 3 icy + D 1
slope + D 4 running speed).

#pftab(
  "Balance Difficulties",
  columns: 2,
  align: (left, center),

  [*Terrain Condition*],
  [*Difficulty Modifier*],
  [Severely Obstructed (cavern, rubble)],
  [+1],
  [Slightly Slippery (wet)],
  [+1],
  [Severely Slippery (icy)],
  [+3],
  [Slightly Sloped (\<45°)],
  [+1],
  [Severely Sloped (>45°)],
  [+3],
  [Slightly Unsteady (boat in rough water)],
  [+1],
  [Mildly Unsteady (boat in a storm)],
  [+2],
  [Severely Unsteady (earthquake)],
  [+4],
  [Move at full speed on narrow or uneven surfaces],
  [+2],
  [Run across narrow or uneven surfaces (double speed)],
  [+4],
)

The base difficulties for narrow surfaces are given below.

#pftab(
  "Narrow Surface Difficulties",
  columns: 2,
  align: (left, center),

  [*Surface Width*],
  [*Base Acrobatics Difficulty*],
  [Greater than 1 m wide],
  [0],
  [0,4-1 meters wide],
  [1],
  [20-40 cm wide],
  [2],
  [5-20 cm wide],
  [3],
  [Less than 5 cm wide],
  [4],
)

_Jumping_: The acrobatics skill also allows you to make jumps and aerobatic
maneuvers.

#pftab(
  "Jump Difficulties",
  columns: 2,
  align: (left, center),

  [*Attempted Jump*],
  [*Difficulty (Modifier)*],
  [High Jump (2 m)],
  [2],
  [High Jump (per additional meter)],
  [+2],
  [Long Jump (Quarter Speed)],
  [2],
  [Long Jump (Half Speed)],
  [4],
  [Long Jump (per quarter speed)],
  [+2],
  [Running start],
  [-2],
  [Wearing Medium or Heavy armor],
  [+Bulk of the armor],
)

_Tumbling and Rolling_: You can make acrobatics checks to perform various
maneuvers while in mid-air. Usually, these checks are made in reaction to
another event, either a previous Acrobatics check to jump, or because something
knocked you away.

If you make an acrobatics check to bypass an obstacle while moving quickly, you
lose some speed: an obstacle counts as difficult terrain. You can make your
check with an additional +2 difficulty to keep moving at your original speed.

#pftab(
  "Maneuver Difficulties",
  columns: 2,
  align: (left, center),

  [*Maneuver*],
  [*Difficulty (Modifier)*],
  [Vault an Object],
  [Corresponding High Jump difficulty +2],
  [Slide under an obstacle while moving (0.5-1m of space)],
  [2],
  [Slide under an obstacle while moving (30-50 cm of space)],
  [4],
  [Cartwheels, somersaults or twists while jumping],
  [Jump difficulty + 1 per turn],

  [Kick off a wall to keep moving],
  [4 (+ high jump difficulty if moving upwards)],

  [Land on your feet after being knocked over],
  [2],
  [Roll to absorb fall damage],
  [1 per meter fallen],
)

==== Action

None. Acrobatics checks are made as reactions or as part of move actions. They
do not take additional time.

==== Try Again

Varies. An Acrobatics check that doesn't put you in physical danger can be
retried indefinitely. If you would fall a dangerous distance on failure, you
cannot retry before resolving the effects of the fall (you cannot take the
maximum on such checks).

==== Special

Porcelains' _Graceful Form_ ability also affects their Acrobatics checks. A
porcelain treats every conditional modifier to an Acrobatics check made to
balance on narrow or uneven as 1 lower than it actually is, and does not take a
penalty to Acrobatics checks to perform a movement at full speed. If the check
difficulty is reduced to 0 in this way, they do not need to make a check. For
example, Porcelains can move across a wet floor or a 30 centimeter wide plank at
full speed without requiring an acrobatics check, and only need to succeed at a
D 6 Acrobatics check to cross a frozen tightrope without falling.

Any other effects that allow a character to ignore penalties from difficult
terrain have the same influence on their Acrobatics checks.

=== Athletics (U; STR + END)

Athletics measures your skill at exerting force on the world. Where proficiency
in Acrobatics allows you to jump and wheel freely to the world, proficiency in
Athletics lets you lift great weights, throw objects very far, climb up sheer
cliff faces and swim swiftly through rough waters.

==== Checks

_Climb_: You can make an Athletics check to climb up or down surfaces that are
too steep to traverse normally. You can also climb horizontally across walls or
traverse a chasm or gap hanging off overhead handholds.

#pftab(
  "Climbing Difficulties",
  columns: 2,
  align: (left, center),

  [*Example Surface or Activity*],
  [*Check Difficulty*],
  [... on very wet or otherwise slippery surfaces],
  [+2],
  [... in strong wind],
  [+2],
)

_Lift and Throw_: Your athletics checks also allow you to exert strength and
move objects, whether by lifting, throwing, or even just pushing.

#pftab(
  "Lifting and Throwing Difficulties",
  columns: 2,
  align: (left, center),

  [*Example activity*],
  [*Check Difficulty*],
  [Push your body weight],
  [2],
  [... per additional times your weight],
  [+2],
  [Lift half your body weight overhead],
  [2],
  [... per additional half times],
  [+2],
  [Throw (per quarter body weight)],
  [2],
)

_Swim_: You can use an Athletics check to swim. In calm conditions with no
external dangers, characters usually require no check to swim (except if they
would otherwise sink due to their composition); to swim in adverse conditions or
to move particularly quickly, a check is required.

A character without an innate Swim speed moves half their land speed by default
when swimming. They can exert themselves to swim twice as fast, but this always
requires a check.

#pftab(
  "Swimming Difficulties",
  columns: 2,
  align: (left, center),

  [*Water Condition*],
  [*Check Difficulty*],
  [Calm],
  [0],
  [Rough],
  [2],
  [Very Rough\*],
  [4],
  [Storm\*],
  [6],
  [... moving at full speed],
  [+2],
  [... with flotsam in the water],
  [+2],
  [... with heavy flotsam or underwater obstacles\*],
  [+4],
)

\* These conditions are hazardous and characters cannot take the average to swim

==== Special

Constructs do not float. Constructs automatically fail any checks made to swim
and sink to the bottom of any body of water unless equipped with flotation
devices (or effects) capable of handling their weight.

=== Awareness (U; SGT + PER)

The awareness skill allows a character to maintain awareness of their
surroundings and notice changes or oddities that less trained observers might
miss. It's used to navigate unfamiliar environments, spot hidden objects and
creatures, and notice inconsistencies in narrative.

In general, Awareness is the skill used for spontaneous perception, whereas
Investigation is the skill used for directed search and research.

The GM might call for an Awareness check when:

- ... a character fears an ambush
- ... a character must find their way in a place they've not been to before
- ... a character is attempting to spot a hidden individual or item
- ... a character is attempting to evaluate whether a narrative is plausible

Sample Awareness difficulties:

- Detecting the approach of a large vehicle: 2
- Spotting an acquaintance in a crowded pub: 3
- Finding your way around a maze: 4
- Noticing a well-laid ambush: 5
- Detecting that you are being followed by someone in thermal camo: 8

=== Deceive (U; INT + PRS)

The Deceive skill measures a character's ability to mislead others. Characters
with a high rating in Deceive are adept at strategically omitting information,
convincing others of half-truths and untruths, and pretending to be who they are
not.

The GM may call for a Deceive check when:

- ... a character attempts to pass themselves off as someone else or mislead
  another as to their motives
- ... a character wishes to tell a story from which they are omitting crucial
  details
- ... a character is trying to bluff their hand at a game of cards

A Deceive check is usually opposed by the victim's Eerie or Awareness. Both
parties might receive modifiers to their checks based on the outrageousness of
the attempted fib and the pre-existing relationship between them.

==== Opposing a Deceive Check

Two skills can oppose Deceive: Awareness and Eerie. Awareness can help a
character notice logical errors or factual inconsistencies, while Eerie acts to
allow another to sense the Deceive user's intentions.

If the defender has no reason to mistrust the Deceive user, they might be able
to detect the Deceive user's unfriendly motives with their passive Eerie skill.
Alternatively, if they are somewhat well-informed about the facts in question,
they might be able to notice that something is being misrepresented using their
Awareness. In general, if the victim is well-disposed toward the Deceive user,
the GM should use the lower of those two numbers. If the victim is already
suspicious, the GM should use the higher of the two numbers.

==== Sample Deceive Difficulties

- Lie to a suspicious mortal: 2
- Successfully pass yourself off as a locally known figure: 4
- Bluff a table of professional card-players: 6
- Successfully pass yourself off as an intimate acquaintance of your
  interlocutor: 8
- Lie to an extremely adept psychic: 11

=== Eerie (U; SGT + ATT)

The Eerie skill represents a character's aptitude for sensing things not
entirely amenable to mundane senses. This includes the presence of magical or
otherworldly energies as well as the motivations of an interlocutor.

==== Detect Magic

You can make an Eerie check to determine the presence of magical energy. The
difficulty of such a check varies with the intensity of the magical energy as
well as whether any attempts were made to hide its presence.

==== Sense Motive

You can make an Eerie check in order to discern the intentions of another by
sensing their aura. A successful Eerie check to sense motive allows you to
divine whether your interlocutor is lying or speaking the truth, and whether he
is well- or ill-disposed towards you. Eerie checks to sense motive are opposed
by the target's Deceive.

==== Detect Danger

A character with a high Eerie rating may feel a sense of impending doom when
about to confront a significant danger. Characters may roll Eerie to attempt to
sense danger; the difficulty to detect danger is 12 - the threat's level.

For significant threats, the GM may opt to compare the threat's level against
characters' passive Eerie, even if the characters do not explicitly make a
check.

Sample Eerie difficulties:

- Detect the presence of powerful magic: 2
- Detect a malicious lie: 3
- Detect the presence of subdued magic: 5
- Detect the presence of very well-disguised magic: 8
- Detect a lie from an extremely adept manipulator: 9

=== Impose (U; PRS + WIL)

The Impose skill measures a character's ability to impress another. It can be
used to browbeat, intimidate or otherwise overpower another in a test of wills.
It also serves as the skill governing a character's ability to captivate and win
over others.

The GM might call for an impose check when:

- ... a character gives an impassioned speech
- ... a character wishes to force another to do their bidding
- ... a character is interrogating another and pressures them to reveal
  information

Sample Impose difficulties:

- Browbeating a hapless mortal: 2
- Winning over a neutral crowd: 4
- Winning over a hostile crowd: 7
- Blackmailing a powerful immortal: 9

=== Influence (U; INT + PRS)

The influence skill measures a character's proficiency at the subtler arts of
social conduct. Negotiation, diplomacy, manipulation -- everything requiring a
good sense of decorum, tact, and charisma.

The GM might call for an Influence check when:

- ... a character is attempting to negotiate the price of goods or services
- ... a character is arguing a legal case
- ... a character is attempting to establish friendly relations with an
  important figure

Sample influence difficulties:

- Haggling down an inexperienced seller: 2
- Securing a favor from an important figure: 4
- Arguing an extremely difficult case in court: 7
- Negotiating a ceasefire between two Immortal Orders: 9

=== Investigate (U; INT + PER)

The investigate skill allows a character to research, collate and correlate
information. It is the skill used for searching through dusty tomes for clues as
to the whereabouts of a long-lost temple, making sense of an archaic electronic
records system, or poring over ledgers in search of a specific transaction. It
is also the skill used for cultivating informants within a city, tracking the
movements of a target, and distilling actionable intelligence from diverse
sources.

A specialized use of the skill is to attempt to recall information that a
character might have accidentally come by in their previous
information-gathering efforts. The more widely read and traveled a character is,
after all, the more likely it is they might have seen something before.

==== Checks

_Research Documents_: A character can use the Investigate skill to attempt to
find information in documents of some kind, be they books in a library or
entries in an electronic database. The difficulty of doing so is generally
related to how concretely the information the character is looking for is
available within the documents, if at all.

Sample Research difficulties:

- Information is somewhat obscure: 2
- Information is very obscure and requires specialist knowledge to understand
  and extract: 4
- Information is highly arcane and requires intricate knowledge to extract: 6
- Information has been deliberately suppressed and must be reconstructed from
  traces: 8
- Character does not entirely know what they are looking for: +3
- Information must be gathered from several different information stores: +2

_Develop and Use Contacts_: A character can use the Investigate skill to
research and identify useful people to know. Once they have built a relationship
with such people (a matter for the Influence skill) they can use Investigate to
attempt to use their network to obtain information. Such information can include
dirt on a person of interest, information on the markets in a city or area, as
well as, of course, introductions to people in other areas.

Sample Contacts difficulties:

- Obtain insight into the goings-on within a city: 2
- Gain information on the schedule and whereabouts of a public figure: 4
- Gain information on the schedule and whereabouts of a highly secretive person:
  6
- Obtain insight into the secret agendas of Immortal factions: 8

The GM may, at their discretion, call for an Influence check alongside the
Investigate check when the character attempts to call in favors. The results of
that Influence check decide how the character's actions affect their ability to
use Investigate in this fashion in the future.

_Search for Tracks_: A character can use the Investigate skill to analyze a
scene, looking for any traces and tracks left behind by others. They can also
use this skill to track down a creature and attempt to follow it or surmise its
whereabouts.

Sample Tracks difficulties:

- Tracking an animal in unfavorable conditions: 2
- Tracking a Mist Creature in unfavorable conditions: 4
- Tracking a human in a city: 6
- Discovering the route taken by someone through a town a week before: 8
- Tracking down a professional deploying countermeasures in a city: 11

=== Subterfuge (U; DEX + INT)

The Subterfuge skill allows a character to move quietly and avoid detection, as
well as perform feats of sleight of hand, such as pickpocketing or unseen
manipulation of objects. The difficulty of a Subterfuge check generally depends
on the scrutiny placed upon a character. Forging a document that nobody will pay
too close attention to while nobody is watching is a much easier feat than
sneaking through a fortress equipped with CCTV in order to lift an artifact from
a heavily guarded vault.

Subterfuge is generally opposed by Awareness, but can be opposed by Investigate
(where the objective of the Subterfuge check is to conceal, destroy, or alter
evidence or records). If a Subterfuge check is being made to evade automated or
magical countermeasures, the GM sets the difficulty of that check as a function
of the sophistication of these devices.

==== Checks

_Hide and Sneak_: A character may use Subterfuge to move around undetected. As a
special case of this use of the Subterfuge skill, a character may also attempt
to lose pursuers. Making such a check requires that the character have
concealment from any hostile creatures or countermeasures. If a character is
being pursued and wishes to evade their pursuers, they must find a hiding place.

The sensory spectrum of the threat determines whether a character counts as
having concealment; see *Senses* for more.

Sample Sneak difficulties:

- Evade a simple CCTV system: 2
- Evade the attention of professional guards equipped with night vision or IR
  goggles: 4
- Slip through the cracks of a magical intrusion detection system: 6
- Infiltrate a facility protected by multiple redundant high-power surveillance
  systems: 8
- Lose a highly skilled pursuer equipped with multi-spectrum sensorics: 10

_Sleight of Hand_: A character may use the Subterfuge skill to perform a sleight
of hand. This includes pickpocketing, planting an item on another, concealing
the presence of an item (such as a weapon) on themselves under search, or
cheating at card games.

Sample Sleight of Hand difficulties:

- Perform a simple magic trick: 2
- Steal a small item from an observant victim: 4
- Conceal an item on someone conversing with you without them noticing: 6
- Smuggle a weapon past a high-security checkpoint: 8

_Forgery_: A character may use the Subterfuge skill to alter, replace or falsify
physical documents or evidence. Making such a check is a protracted affair, and
requires the character to manufacture the forgery ahead of time or, if it is
possible to perform the manipulation on site, bring the appropriate tooling with
them. If the item to be forged is particularly difficult to manufacture, the
character might need to make an appropriate crafting check or, if they do not
have the requisite training in the skill required, find someone who can help
them.

Sample Forgery difficulties:

- Manipulate an invoice or other unsecured document: 2
- Forge a watermarked or holo-secured document: 4
- Duplicate a well-known piece of art: 6
- Forge a cryptographic access token: 8

== Trained Skills

=== Access (T; DEX + INT)

The Access skill allows a character to circumvent security systems of various
kinds, using more or less violent means. With sufficient training, a character
trained in Access can pick locks, hack into computers, place breaching charges,
disable traps, and generally go where they are not supposed to go.

The Access skill is by nature somewhat interdisciplinary, and proficiency in
skills such as Subterfuge, Electronics or Shop is helpful when using it.

==== Checks

_Lockpicking_: The Access skill can be used to bypass locks of all kinds.
Effectively using the skill in this way requires a set of appropriate tools for
the job at hand (for which see the Equipment chapter). While better tools
usually lead to better results, even improvised tools have to do sometimes. In
this case, raise the difficulty of the job by 2.

A character who has no tools whatsoever on them may be unable to bypass a lock
regardless of how well they roll on their check, at the GM's discretion.

Sample Lockpicking difficulties:

- Picking a well-made lock with improvised tools: 4
- Picking a high-security lock: 6
- Bypassing a multi-modal access control system: 8
- Bypassing a magically reinforced, mastercrafted multi-lock: 10

_Hotwiring and Hacking_: The Access skill can be used to manipulate electric and
electronic systems of all kinds, whether by crude bypasses or more subtle
methods. When attempting more sophisticated attacks, especially against computer
systems, the GM may rule that a successful Electronics check is also required to
subdue the recalcitrant machine.

Sample Hacking difficulties:

- Hotwiring a simple motor or electronic lock: 2
- Gaining unauthorized access to a simply secured computer system: 4
- Performing a privilege escalation attack on a well-secured computer system: 6
- Mechanically suborning an AI core: 10

_Traps_: A character trained in the Access skill can detect and disable traps.
The difficulties for doing so are similar to lockpicking.

=== Alchemy (T; INT + PER)

The alchemy skill allows a character to study, analyze and perform chemical
reactions in or outside of the presence of magical energies. Successfully using
the Alchemy skill requires having access to the appropriate equipment for the
job at hand; even the most experienced alchemist cannot work without a
laboratory.

Proficiency in Occultism and Eerie is helpful when working with magically
charged substances, while Shop assists in crafting and modifying alchemical
equipment and containers.

==== Checks

_Analyzing Substances_: A character trained in Alchemy can use their skills to
analyze substances and detect certain components or alchemical-magical
properties within them. The difficulty of doing so depends on the number of
distinct components making up the substance as well as the number and
concentration of components to be detected.

Sample Analyzing difficulties:

- Identify whether a common substance has been tampered with: 2
- Identify the active components of an unfamiliar compound: 4
- Detect trace quantities of a rare reagent within a complex mixture: 6
- Fully analyze an unknown substance of extraplanar or magical origin: 8

_Synthesizing Substances_: A character can use their Alchemy skill to perform
alchemical procedures --- combining, refining, and transforming materials to
produce compounds with specific properties. This subsumes everything from
distilling poisons to crafting alchemical reagents for use in rituals.

When synthesizing a known recipe, the difficulty is set by the recipe itself.
When working without a recipe --- improvising or experimenting --- the GM sets a
difficulty appropriate to the desired effect and the character's available
materials.

Consumable reagents and equipment are spent whether or not the synthesis
succeeds.

Sample Synthesizing difficulties:

- Brew a simple stimulant or sedative from common materials: 3
- Prepare a ritual reagent of moderate power: 5
- Synthesize a compound with precisely calibrated alchemical-magical properties:
  7
- Produce a substance of legendary potency or unprecedented effect: 10

_Alchemical Rituals_: When performing an alchemical recipe, Alchemy is the only
applicable skill --- Ritual and Occultism do not apply (see _Rituals and
Recipes_).

=== Electronics (T; DEX + INT)

The Electronics skill covers the hands-on diagnosis, repair, modification, and
construction of electronic devices and systems --- from simple motors and locks
to computing hardware and AI subsystems. It is the skill of the engineer and the
scrapper alike.

Access is the natural complement when the goal is bypassing or subverting a
system rather than understanding it; Magitek applies where magical and
electronic systems are intertwined; Investigate can assist when researching
technical documentation or an unfamiliar device's design.

==== Checks

_Repair & Maintenance_: A character trained in Electronics can diagnose
malfunctions and restore damaged or broken devices to working order. The
difficulty depends on the complexity of the device and the severity of the
damage.

Sample Repair difficulties:

- Fix a common appliance or simple motor: 2
- Restore a damaged circuit board or control system: 4
- Bring a sophisticated computing system back online after catastrophic failure:
  6
- Reconstruct a destroyed AI subsystem from salvaged components: 8

_Modification & Construction_: A character can use Electronics to alter existing
devices or build new ones from salvaged or raw parts. When building something
with no reference design, the GM may require a prior Investigate or Magitek
check to establish the specifications.

Sample Modification & Construction difficulties:

- Jury-rig a simple bypass or adapter: 2
- Build a functional device from salvaged parts: 4
- Modify military-grade hardware for unauthorized use: 6
- Construct a novel electronic component with no reference design: 8

_Assisted Hacking_: When using the Access skill to attack sophisticated computer
systems, the GM may additionally call for an Electronics check to manipulate the
underlying hardware --- particularly when physical access to the machine is
available.

=== Magitek (T; INT + ATT)

The Magitek skill covers understanding, operating, and working with technology
that incorporates magical components or principles --- the ancient relics,
enchanted machinery, and hybrid devices that populate a world where magic and
technology were once unified.

Electronics handles the non-magical circuitry within a magitek device; Eerie can
supplement Magitek when sensing a device's magical state or charge; Alchemy and
Ritual are relevant when a magitek device's function overlaps with alchemical or
ritual processes.

==== Checks

_Identifying Magitek_: A character trained in Magitek can examine an unknown
device to determine its function, origin, and magical properties. The difficulty
depends on the complexity of the device and how much information is being
sought.

Sample Identifying difficulties:

- Identify the function of a simple magitek tool: 2
- Determine the magical properties of an unfamiliar device: 4
- Analyze a magitek device of ancient or unknown design: 6
- Reverse-engineer a unique magitek artifact: 8

_Operating Magitek_: Using a familiar magitek device does not require a check.
Checks arise when the device is unfamiliar, damaged, unstable, or actively
resisting the user --- or when the character is attempting to use it in a way it
was not designed for.

Sample Operating difficulties:

- Operate an unfamiliar but standard magitek device: 2
- Safely activate an unstable or partially damaged device: 4
- Override a device's magical safeguards: 6
- Operate a device fundamentally hostile or incompatible with the user: 8

_Repair & Modification_: A character can use Magitek to restore damaged devices
or alter their function, including re-seating magical cores and recalibrating
enchantments. Electronics may be required alongside Magitek when the damage
extends to non-magical components.

Sample Repair & Modification difficulties:

- Repair a lightly damaged magitek device: 3
- Restore a device with a damaged magical core: 5
- Modify a device to function outside its intended parameters: 7
- Integrate two incompatible magical systems within a single device: 9

_Crafting Magitek_: A character with sufficient expertise can attempt to create
new magitek devices. Magitek provides the overall design and integration of
magical and technical systems, but is rarely sufficient on its own: crafting the
physical components typically requires Shop, the electronic elements require
Electronics, and the magical workings require Ritual or Occultism. Substantial
facilities are also required --- improvised or field-expedient construction
raises difficulties significantly, and some projects may be impossible without a
proper workshop.

=== Occultism (T; SGT + ATT)

Where Ritual treats magic as a natural force to be studied and reproduced,
Occultism is the practice of engaging with forces that resist systematic
understanding: spirits, divine powers, and the deeper currents of Fate and the
Void. The effects it produces can be profound, but the forces involved are
capricious --- failure is not merely a lack of result, and a catastrophic
failure may invite consequences far beyond what the caster intended.

Occultism is primarily the skill of Divine magic, and applies to Psychic magic
of an esoteric or entropic nature, such as the Fate and Void domains. Eerie is a
natural complement, helping a character sense and interpret the presences they
are dealing with. Ritual, by contrast, is not interchangeable with Occultism ---
the two approaches are fundamentally different in method.

==== Checks

_Identifying Supernatural Entities_: A character trained in Occultism can
attempt to recognize the nature, origin, and intent of a spirit or divine
presence. This typically precedes any attempt to commune with or bind it.

Sample Identifying difficulties:

- Identify the broad category of a supernatural presence (spirit, divine
  fragment, etc.): 2
- Determine the domain or allegiance of a known type of entity: 4
- Assess the disposition and intent of an unfamiliar entity: 5
- Identify a rare, concealed, or actively deceptive supernatural presence: 8

_Communing_: A character can use Occultism to contact or negotiate with a spirit
or divine force. Unlike ritual casting, the outcome of a communion is not
guaranteed even on a success --- the entity retains its own will. On a failure,
the entity may ignore the character, respond with hostility, or extract a price
of its own choosing.

_Divination_: A character trained in Occultism can petition the forces of Fate
or Void for glimpses of the past, present, or future. The specificity and
reliability of the vision depends on the difficulty; Fate can be consulted but
not commanded.

Sample Divination difficulties:

- Seek a broad impression of a past event: 3
- Seek a clear image of a specific past event: 5
- Request a vision of a probable future: 6
- Seek precise knowledge of a hidden or deliberately obscured truth: 9

_Warding & Binding_: A character can use Occultism to ward a location against
supernatural intrusion or to bind a spirit, constraining its actions. The
difficulty depends on the power of the entity and the scope of the constraint.

Sample Warding & Binding difficulties:

- Ward a small space against minor spirits: 3
- Bind a willing or weakened entity: 4
- Ward against a powerful or persistent supernatural presence: 6
- Bind an unwilling and powerful entity: 9

_Casting Rituals_: Occultism may be used in place of Ritual for the casting of
rituals that draw on Divine or esoteric Psychic magic, such as those of the Fate
and Void domains. All other rules for ritual casting apply (see _Rituals and
Recipes_). Unlike ritual casting with the Ritual skill, a failed check using
Occultism may produce unintended consequences beyond the loss of reagents.

=== Piloting (T; DEX + PER)

The Piloting skill covers the operation of vehicles of all kinds --- ground
vehicles, aircraft, and watercraft alike. A trained pilot can push a vehicle to
its limits, navigate hostile conditions, and fight from behind the wheel or
controls. Routine travel under safe conditions does not require a check; rolls
arise when speed, hazards, or hostile action demand precise control.

Electronics and Magitek are useful when diagnosing or improvising repairs to a
vehicle's systems while in motion.

==== Checks

_Hazardous Navigation_: A character can use Piloting to traverse difficult
terrain, severe weather, or complex environments at speed. The difficulty
depends on the combination of speed, conditions, and the demands of the route.

Sample Navigation difficulties:

- Navigate a damaged road or choppy water at speed: 2
- Pilot through dense terrain, storm conditions, or heavy traffic: 4
- Thread through a collapsing structure or tight urban canyon at speed: 6
- Pilot a badly damaged vehicle through extreme or rapidly changing conditions:
  8

_Pursuit & Evasion_: When one vehicle is chasing or fleeing another, both pilots
make opposed Piloting checks. The victor gains or maintains positional
advantage. The GM may call for multiple checks over the course of a prolonged
chase, with environmental hazards adding to the difficulty.

_Combat Maneuvers_: A character can use Piloting to perform aggressive or
evasive maneuvers in a fight --- ramming a target, breaking away from a pursuer,
or positioning to give allies a firing advantage. These are typically opposed
checks or checks against a fixed difficulty set by the GM based on the target's
speed and maneuverability.

Sample Combat Maneuver difficulties:

- Ram a stationary or slow-moving target: 2
- Execute a precise intercept or blocking maneuver: 4
- Perform a high-speed attack run through hostile fire: 6
- Execute a maneuver against a vastly more agile vehicle: 8

=== Ritual (T; WIL + ATT)

The Ritual skill represents a character's command of magic as a natural,
learnable force. Ritual magic is systematic and reproducible --- its effects are
well-scoped and knowable, and a sufficiently skilled practitioner can analyze an
unfamiliar working and reverse-engineer it almost like a piece of technology.
Ritual is primarily the skill of Arcane magic, and applies to Psychic magic of a
structural or physical nature, such as the Space and Time domains.

Where Ritual treats magic as a force to be understood and controlled, Occultism
deals with the ineffable: spirits, divine powers, and forces that do not follow
predictable rules. Characters trained in Eerie may find it easier to sense the
presence and nature of active ritual effects.

Note that alchemical recipes, while mechanically similar to rituals, use the
Alchemy skill exclusively --- Ritual does not apply to them (see _Rituals and
Recipes_).

==== Checks

_Casting Rituals_: The primary use of the Ritual skill is the casting of
rituals, for which see the full rules in _Rituals and Recipes_. Ritual applies
to any non-alchemical ritual that draws on Arcane or structurally-oriented
Psychic magic.

Because ritual magic is well-understood and bounded, a failed Ritual check
typically results in nothing happening and the consumption of reagents --- not
in uncontrolled or catastrophic effects.

_Identifying & Reading Magic_: A character trained in Ritual can examine an
active magical effect, a ritual circle, or an arcane inscription and attempt to
understand what it does. The difficulty depends on the complexity of the working
and how well it has been obscured.

Sample Identifying difficulties:

- Identify the school or broad domain of an active magical effect: 2
- Determine the function and approximate power of a ritual circle: 4
- Fully analyze a complex or layered arcane working: 6
- Decode a deliberately obfuscated or alien magical inscription: 8

=== Shop (T; DEX + STR)

The Shop skill covers the creation, repair, and modification of physical objects
--- from welding and machining to woodworking, leatherworking, and general
fabrication. DEX provides the precision for fine work; STR handles the heavy
labour of raw construction. A character trained in Shop is equally at home in a
forge or a field workshop, and can turn salvaged materials into functional
equipment given enough time and tools.

Electronics and Magitek are natural complements when working on devices with
technical or magical components; Access benefits from Shop when physical bypass
work --- cutting, breaking, or fabricating parts --- is required.

==== Checks

_Repair_: A character can use Shop to restore damaged or broken physical items
to working order. The difficulty depends on the severity of the damage and the
complexity of the object.

Sample Repair difficulties:

- Repair a simple tool or piece of equipment: 2
- Restore a damaged weapon or piece of armour: 4
- Rebuild a complex mechanical device from partial components: 6
- Reconstruct a badly damaged or intricate item with missing parts: 8

_Fabrication_: A character can use Shop to create new items from raw or salvaged
materials. Working from known plans or patterns reduces the difficulty;
improvising a design or working without proper tools increases it.

Sample Fabrication difficulties:

- Fabricate a simple tool or fitting: 2
- Craft a functional weapon or piece of armour: 4
- Construct a complex mechanical assembly: 6
- Produce a masterwork item requiring exceptional skill and materials: 9

_Appraisal_: A character trained in Shop can assess the quality, provenance, and
condition of physical objects. This covers identifying fine craftsmanship,
detecting structural flaws, and recognizing forgeries or unusual construction
techniques.

Sample Appraisal difficulties:

- Assess the general quality of a common item: 2
- Identify a notable flaw or point of weakness in a well-made object: 4
- Determine the origin or maker of an unusual or deliberately disguised item: 6
- Detect a masterfully executed forgery: 8

== Rituals and Recipes

In the mystical realms of Ashen, the casting of rituals is an intricate and
powerful art. To bring forth the desired magical effects, players must navigate
the complexities of difficulty, magnitude, and available power. Alchemical
recipes function as rituals do, so for the purposes of the following rules,
"rituals" includes them.

The rules for rituals are as follows:

=== 1. Difficulty and Magnitude

A ritual is defined by two essential factors: difficulty and magnitude.

*Difficulty:* This represents the base challenge level of the ritual, reflecting
the innate complexity of the magical task at hand.

*Magnitude:* The magnitude sets the minimum total power value required to
successfully cast the ritual. Players can harness power from various sources,
including reagents, implements, locations, or unique circumstances like magical
terrain or alchemical laboratories.

=== 2. Power Management

Every point of available power beyond the ritual's magnitude is a boon to the
caster. Surplus power can be derived from a variety of sources and contributes
to making the ritual easier.

*Power Sources:* Reagents, implements, locations, and circumstantial factors all
contribute to the available power pool.

*Difficulty Reduction:* For each point of available power exceeding the ritual's
magnitude, the difficulty of the ritual is reduced by 1, down to the tier of the
ritual.

=== 3. Skill Checks

Executing a ritual requires a careful balance of knowledge, skill, and finesse.
Players can employ one of the following skills for the ritual's casting: Ritual,
Occultism, or Alchemy. The appropriate skill depends on the nature of the
ritual.

=== 4. Casting and Success Conditions

Success hinges on the outcome of a skill check against the adjusted difficulty.

*Success:* If the result of the check equals or exceeds the adjusted difficulty,
the ritual is successful. The desired magical effects manifest as intended.

*Failure:* Should the skill check fall short, the ritual fails. Despite the
failure, consumable power sources like reagents are still expended. Depending on
the ritual, there may be additional consequences.

=== 5. Consequences of Failure

Failing a ritual doesn't come without repercussions. In addition to the
consumption of consumables, other consequences may unfold, varying based on the
specific nature of the ritual. Players should be prepared for the unexpected in
the arcane arts.

=== Ritual List

#ritual-description(
  "Rite of Opening",
  1,
  "Ritual",
  "3",
  "3",
  "Components (#feathers 100)",
  "5 minutes",
  "The Rite of Opening creates a physical path between you and a location of your choosing whose approximate whereabouts are known to you. The Rite is potentially destructive but never creative: it can tear down barriers, but it cannot construct bridges. When opening artificial obstacles like locked doors, the rite may open simple obstacles non-destructively, but may simply unhinge a door equipped with a complex magical lock. It can burrow or blast through natural barriers that are sufficiently thin.",
  modifiers: "Target guarded by magical barriers: +(tier of barrier) per barrier. Target behind rock or earth: +2 per meter. Target behind steel: +2 per 10 cm. Target known to within <10 m accuracy: +2. Target known to within <50 m: +5. Target >30 m away: +1 per 10 m.",
  flavor: "With the final twist of your implement, you open a path to your destination.",
)

#ritual-description(
  "Ward of Alarm",
  1,
  "Ritual",
  "3",
  "2",
  "Components (#feathers 50)",
  "10 minutes",
  "You inscribe a ward on a doorway, window, or area up to Burst 3. For the next 8 hours, if any creature of size 1 or larger crosses the ward, the caster is immediately alerted, even if asleep. The alert is mental and silent — only the caster perceives it. The ward is invisible but can be detected with Eerie (difficulty 4).",
  failure: "The ward is created but is unstable — it triggers once randomly during the duration, then fails.",
)

#ritual-description(
  "Arcane Lock",
  2,
  "Ritual",
  "5",
  "4",
  "Components (#feathers 300)",
  "10 minutes",
  "You seal a door, chest, window, or other closeable object with arcane energy. The lock can only be opened by the caster, by a creature they designate during casting, or by a successful Rite of Opening or Magitek check against a difficulty equal to the caster's casting check result. The lock persists until dispelled or broken.",
  failure: "The lock is created but is brittle — its effective difficulty is halved.",
)

#ritual-description(
  "Circle of Binding",
  3,
  "Ritual",
  "7",
  "6",
  "Components (#feathers 1000)",
  "30 minutes",
  "You inscribe a circle of binding on a surface up to 3 squares in diameter. Any summoned, extraplanar, or undead creature that enters or is summoned into the circle cannot leave it by any means (including teleportation) unless the circle is physically broken or the creature succeeds on a D8 Potential check at the start of each of its turns. The circle persists for 24 hours or until broken.",
  failure: "The circle appears complete but has a hidden flaw. The first creature bound in it may attempt to escape with a D4 Potential check instead.",
)

#ritual-description(
  "Planar Gate",
  5,
  "Ritual",
  "12",
  "11",
  "Components (#feathers 8000) + Essence (5 Strain)",
  "8 hours",
  "You tear open a portal to another plane of existence. The portal is a circle up to 3 squares in diameter and remains open for 1 minute per success on the casting check. Creatures can pass through in both directions. The caster may close the portal early as a free action. The destination must be a plane the caster has visited or possesses a fragment of (a physical object originating from that plane).",
  aspects: "Key, Mist",
  failure: "The portal opens to an unintended location on the target plane, or to the wrong plane entirely. The caster takes an additional 5 Strain.",
)

#ritual-description(
  "Resurrection Rite",
  5,
  "Ritual",
  "11",
  "10",
  "Components (#feathers 10000) + Essence (8 Strain)",
  "12 hours",
  "You perform a lengthy rite that revives all dead creatures within the ritual circle at no EP cost to them. Each revived creature returns with full HP and full Focus, with all status conditions removed. This ritual can revive creatures whose remains have been destroyed, as long as a personal belonging or fragment of the creature is available as a focus. Uniquely, this ritual can also restore mortal creatures to life — an effect not otherwise available through any power or prayer. The ritual cannot revive creatures affected by effects that prevent revival (such as Noble Eightfold Blade's death effect).",
  aspects: "Scarab",
  failure: "The ritual fails. Components are consumed. Creatures remain dead. If the check fails by 5 or more, a hostile entity may be drawn to the ritual site.",
)

==== Enchantment Rituals

The following rituals apply enchantments to items (see _Enchantments_ in the Equipment chapter). In each case, the listed difficulty is the base; half the tier of the target item (rounded up) is added to the difficulty. For example, applying Moontouched (base difficulty 3) to a tier 5 weapon requires a difficulty 6 check. If the item already has an enchantment in the slot being used, replacing it increases the difficulty by 2.

#ritual-description(
  "Enchant Weapon — Moontouched",
  2,
  "Ritual",
  "3 + half item tier",
  "4",
  "4 Magnitude (moonstone dust or similar lunar reagent)",
  "4 hours",
  "You imbue a weapon with captured moonlight. On a successful hit, the target is surrounded by a halo of moonlight: attacks against it gain a +2 bonus and it cannot benefit from invisibility until the end of the wielder's next turn.",
  failure: "The enchantment is unstable — it functions normally but fades after 1d6 encounters.",
)

#ritual-description(
  "Enchant Weapon — Spacerender",
  3,
  "Ritual",
  "5 + half item tier",
  "6",
  "6 Magnitude (void essence or spatial reagent)",
  "8 hours",
  "You fold the space around a melee weapon, extending its effective reach. The weapon gains Reach 2.",
  failure: "The spatial fold is unstable. The weapon gains Reach 2, but on any attack roll where no successes are scored, the enchantment collapses and must be reapplied.",
)

#ritual-description(
  "Enchant Armor — Lightbender",
  2,
  "Ritual",
  "3 + half item tier",
  "4",
  "4 Magnitude (prismatic glass or light-aspected reagent)",
  "4 hours",
  "You treat a piece of armor to bend light around its wearer. When the wearer is fighting in bright light, the armor's Evasion bonus increases by 1.",
  failure: "The treatment is imprecise — the Evasion bonus applies, but the armor glows faintly, imposing a -2d penalty on Subterfuge checks in darkness.",
)

#ritual-description(
  "Enchant Armor — Deflecting",
  3,
  "Ritual",
  "5 + half item tier",
  "6",
  "6 Magnitude (warding sigils or abjuration reagent)",
  "6 hours",
  "You inscribe magical deflection patterns onto a piece of armor. When the wearer is targeted by an area-effect spell or magical ability, the armor grants light cover against that effect.",
  failure: "The sigils are flawed — the deflection works, but each time it activates there is a 1-in-6 chance the sigils burn out permanently.",
)

#ritual-description(
  "Enchant Implement — Resonating",
  4,
  "Ritual",
  "7 + half item tier",
  "8",
  "8 Magnitude (harmonic crystal or resonance reagent)",
  "12 hours",
  "You attune a catalyst or weapon to resonate with the caster's magical frequency. For every spell channeled through the implement on a given turn, its casting bonuses increase by 1, up to a maximum of its base bonus + 3.",
  failure: "The resonance is erratic — the bonus increases as normal but resets to 0 at the start of each round instead of persisting.",
)

#ritual-description(
  "Enchant Implement — Manabind",
  5,
  "Ritual",
  "9 + half item tier",
  "10",
  "10 Magnitude (essence of a counterspell or antimagic reagent)",
  "1 day",
  "You bind an implement with counter-magical properties. The implement grants a +6 bonus to counterspelling. If used to perform a successful counterspell, the wielder recovers Focus equal to the cost of the countered spell.",
  failure: "The binding is incomplete — the counterspell bonus is only +3, and Focus recovery is halved (round down).",
)

=== Occultism Ritual List

#ritual-description(
  "Augury",
  1,
  "Occultism",
  "4",
  "2",
  "Components (#feathers 50)",
  "10 minutes",
  "You perform a divination to glimpse the near future. Ask the GM one question about a specific course of action you plan to take within the next hour. The GM answers with one of: Weal (good outcome), Woe (bad outcome), Weal and Woe (mixed), or Nothing (no significant consequence). The GM is not required to reveal details — only the general tenor of the outcome.",
  failure: "The augury gives a misleading answer (GM's choice).",
)

#ritual-description(
  "Scrying",
  3,
  "Occultism",
  "7",
  "6",
  "Components (#feathers 800)",
  "30 minutes",
  "You observe a creature or location remotely. You must have either met the target creature, visited the target location, or possess an object closely associated with either. On success, you perceive the target's immediate surroundings (sight and sound) for up to 10 minutes. The target may sense the scrying with a D6 Potential check — on success, they know they are being observed and by whom.",
  modifiers: "Target possesses anti-scrying wards: +(tier of ward). Target is on another plane: +4. You possess a piece of the target (hair, belonging): -2.",
  failure: "The scrying fails and the target is automatically alerted to the attempt.",
)

#ritual-description(
  "Commune",
  4,
  "Occultism",
  "10",
  "9",
  "Components (#feathers 2000) + Essence (3 Strain)",
  "2 hours",
  "You open a channel of communication with an otherworldly entity — a god, a powerful spirit, or an echo of a dead deity. You may ask up to three questions, which the entity answers truthfully but not necessarily completely. The entity may demand a price for its knowledge (additional Essence, a future favor, or information in return). The nature of the entity contacted depends on the circumstances and location of the ritual.",
  aspects: "Moon",
  failure: "The channel opens but connects to an unintended entity. The entity may lie, demand payment, or be hostile.",
)

#ritual-description(
  "Fate Unraveling",
  6,
  "Occultism",
  "14",
  "14",
  "Components (#feathers 20000) + Essence (10 Strain) + Influence (Skull 8, Moon 6)",
  "1 day",
  "You unravel the threads of fate surrounding one subject — a person, an object, an event, or a place. The GM reveals the complete truth about the subject: its history, its current state, its connections, and its most likely future. This information is absolute and cannot be obscured by any magic short of divine intervention. The caster experiences the revelation as a trance-vision lasting several hours.",
  aspects: "Moon, Skull",
  failure: "The revelation is partial and fragmented. The caster takes the full Strain and Influence cost. The caster is Dazed for 24 hours from the psychic backlash.",
)

==== Occultism Enchantment Rituals

As with the Ritual enchantments above, half the tier of the target item (rounded up) is added to the base difficulty. Replacing an existing enchantment increases the difficulty by 2.

#ritual-description(
  "Enchant Weapon — Bloodthirst",
  2,
  "Occultism",
  "3 + half item tier",
  "4",
  "4 Magnitude (fresh blood of a predatory creature)",
  "4 hours",
  "You awaken a hunger for blood in a weapon. If the weapon successfully deals damage to a living target, the wielder gains a +2 bonus to the next attack with the weapon.",
  failure: "The hunger is indiscriminate — the bonus applies, but the wielder must also make a D4 Grit check after each combat or attack the nearest living creature (friend or foe) once.",
)

#ritual-description(
  "Enchant Weapon — Cursebringer",
  4,
  "Occultism",
  "7 + half item tier",
  "8",
  "8 Magnitude (cursed relic or hexed remains) + Essence (2 Strain)",
  "12 hours",
  "You bind a malevolent curse into a weapon. On a successful hit that deals damage, the target must make a Potential save at difficulty equal to the weapon's tier + 2. On failure, the target takes a -2 curse penalty to all of its rolls (save ends).",
  aspects: "Skull",
  failure: "The curse is bound but unstable — it functions normally, but each time it activates, the wielder takes 1 Strain.",
)

#ritual-description(
  "Enchant Weapon — Souldrinker",
  4,
  "Occultism",
  "7 + half item tier",
  "8",
  "8 Magnitude (soul gem or essence of the dying) + Essence (3 Strain)",
  "12 hours",
  "You bind the weapon with soul-draining properties. On a successful hit that deals damage, the target must make a Potential save at difficulty equal to the weapon's tier + 2. On failure, the target loses 1 EP and Focus equal to 3 × the weapon's tier.",
  aspects: "Skull",
  failure: "The drain is reversed — on a failed save, the target loses the EP and Focus as normal, but the wielder also loses Focus equal to the weapon's tier.",
)

=== Alchemical Recipe List

#ritual-description(
  "Healing Potion",
  1,
  "Alchemy",
  "3",
  "2",
  "Components (#feathers 150)",
  "10 minutes",
  "You brew a potion that restores HP equal to 100% of the catalyst used in its creation. The potion can be consumed as a 1 AP action. Potions expire after one week.",
  failure: "The potion is inert — it has no effect but is otherwise harmless.",
)

#ritual-description(
  "Antidote",
  1,
  "Alchemy",
  "3",
  "2",
  "Components (#feathers 100)",
  "10 minutes",
  "You brew a potion that removes the Poisoned condition from the drinker. If the poison is of a tier higher than this recipe's tier, the difficulty increases by 2 per tier difference. The antidote can be consumed as a 1 AP action.",
  failure: "The antidote is ineffective.",
)

#ritual-description(
  "Stimulant Draft",
  2,
  "Alchemy",
  "5",
  "4",
  "Components (#feathers 300)",
  "20 minutes",
  "You brew a stimulant that sharpens the drinker's abilities. When consumed (1 AP action), the drinker chooses one skill. They gain +2d on checks with that skill for 1 hour. A creature cannot benefit from more than one stimulant at a time; consuming a second replaces the first.",
  failure: "The stimulant works but inflicts a -1d penalty on all other skills for its duration.",
)

#ritual-description(
  "Weapon Oil",
  2,
  "Alchemy",
  "5",
  "4",
  "Components (#feathers 400)",
  "15 minutes",
  "You create an oil that can be applied to a weapon (1 AP action). The weapon gains a damage type of your choice (Thermal, Cold, Electric, or Acid) for 1 encounter. While active, the weapon's damage is treated as that type for the purposes of resistances and vulnerabilities. Only one oil can be active on a weapon at a time.",
  failure: "The oil is unstable — it lasts only 3 rounds instead of 1 encounter.",
)

#ritual-description(
  "Paralytic Poison",
  3,
  "Alchemy",
  "7",
  "6",
  "Components (#feathers 800)",
  "30 minutes",
  "You create a dose of paralytic poison (3 applications). The poison can be applied to a weapon (1 AP action) or slipped into food/drink. On the next hit (or when ingested), the target must pass a D6 Stamina check or be Stilled (save ends). Whether the save succeeds or fails, the application is consumed.",
  failure: "The poison is weak — the resist DC is reduced to D4.",
)

#ritual-description(
  "Elixir of Fortitude",
  4,
  "Alchemy",
  "9",
  "8",
  "Components (#feathers 2500)",
  "1 hour",
  "You brew a powerful protective elixir. When consumed (1 AP action), the drinker gains +3 Armor and +3 Ward for 1 encounter. Additionally, the drinker gains +2d on Stamina resistance checks for the duration. A creature cannot benefit from more than one elixir at a time.",
  failure: "The elixir provides only +1 Armor and +1 Ward, and its duration is halved.",
)

#ritual-description(
  "Philosopher's Reagent",
  5,
  "Alchemy",
  "12",
  "10",
  "Components (#feathers 6000) + Essence (5 EP)",
  "8 hours",
  "You create a single universal reagent of extraordinary purity, worth 8 Magnitude for the purpose of any ritual. This exceeds the magnitude of any readily obtainable reagent (capped at 6 for standard materials). The Philosopher's Reagent does not expire and can provide any single aspect at up to magnitude 4 when used as Influence.",
  aspects: "Mist, Forge",
  failure: "The reagent is created but is flawed — it is worth only 5 Magnitude and cannot provide aspect Influence.",
)

==== Alchemical Enchantment Recipes

#ritual-description(
  "Silver a Weapon",
  1,
  "Alchemy",
  "2 + half item tier",
  "2",
  "2 Magnitude (alchemical silver)",
  "2 hours",
  "You coat a weapon in alchemical silver through a chemical bonding process. The weapon gains the Silvered keyword: it bypasses immunity or resistance to non-silvered weapons, and deals bonus damage to undead creatures equal to 50% of its base damage. Silvering is permanent but can be stripped by re-treating the weapon with a different material. This recipe can alternatively be performed as a Shop check at the same difficulty.",
  failure: "The silver coating is thin and uneven — it functions but wears off after 1d6 encounters.",
)
