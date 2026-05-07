# Ashen Rulebook — Illustration Prompt Guide

This document defines the visual language and prompting structure for generating illustrations for the Ashen RPG rulebook using Nano Banana (Gemini image generation).

## Visual Language

### Medium

Watercolor painting. Soft washes of pigment with visible paper texture. Edges bleed and feather rather than forming hard lines. Ink outlines should be absent or extremely minimal — the shapes are defined by value shifts and color boundaries, not linework. Think Turner's atmospheric landscapes or Yoshitaka Amano's looser watercolor work, not comic book inks with a color wash.

### Color Palette

Muted earth tones dominate: ochre, burnt sienna, raw umber, slate grey, faded olive, dusty rose, tarnished bronze. Color should feel like it has been left in the sun or washed by rain. Saturation is low overall, but not desaturated to the point of lifelessness — there is warmth in the browns and ambers, coolness in the blue-greys and greens.

Accents of stronger color appear sparingly and carry meaning:
- **Amber/gold glow**: magitek, blast furnaces, active technology, divine power
- **Cold blue-white**: the Fog, magical effects, the uncanny
- **Deep green**: nature reclaiming ruins, the Maiden's influence
- **Dull red/maroon**: blood, war, the Brotherhood, danger

The book's typographic palette (navy, grey, black) provides the industrial/structured frame. The illustrations, in earth tones and muted washes, provide the organic counterpoint. Together they create the synthesis: industry amid ruin, civilization amid wilderness.

### Atmosphere and Tone

The world of Ashen is post-apocalyptic fantasy with magitek. The key visual tension is:

- **The few vs. the vast**: small pockets of gleaming metal, the glow of a furnace, a lit settlement — set against enormous expanses of ruin, wild nature, empty sky, and creeping Fog.
- **The old beneath the new**: ancient stonework overgrown with vines, a rifle propped against a crumbling temple column, a skimmer parked in a ruined courtyard.
- **The sacred and the industrial**: reliquaries of dead gods next to magitek devices, prayers spoken over gun barrels, divine symbols stamped into factory-made armor.

Light sources matter. Natural light is diffuse and hazy (the Fog filters everything). Artificial light — furnace glow, magitek power cells, a lantern in the dark — is warm, localized, and precious. Scenes should feel like the light is hard-won.

Scale matters. Characters are small against the landscape. Ruins are vast. The Fog is everywhere. Even indoor scenes should suggest the weight of the world outside.

### What to Avoid

- Clean, bright, saturated fantasy art (no World of Warcraft aesthetic)
- Hard ink outlines or comic-book linework
- Overly detailed or photorealistic rendering
- Pristine or new-looking equipment and architecture
- Cheerful or heroic poses without context — the Deathless are weary immortals, not bright-eyed adventurers

## Prompt Structure

Follow the Nano Banana narrative prompt formula, adapted for the Ashen aesthetic:

```
[Subject] + [Action/Pose] + [Setting/Context] + [Composition] + [Style block]
```

### The Style Block

Append this (or a variation of it) to every prompt as the style anchor:

> Watercolor painting on textured cold-pressed paper. Soft pigment washes with visible brush marks and paper grain. No ink outlines. Muted earth-tone palette — ochre, burnt sienna, raw umber, slate grey, faded olive. Low saturation with selective warm accents. Atmospheric and hazy, with soft edges that bleed into the paper.

Adjust the style block for specific needs:
- For Fog-heavy scenes, add: "Diffuse blue-white mist bleeding into the edges of the composition, obscuring background detail."
- For magitek/industrial scenes, add: "Localized amber-gold glow from a single artificial light source, casting warm highlights against the muted background."
- For divine/sacred scenes, add: "Faint luminous quality to sacred objects, as if the paint itself is slightly translucent where divinity touches."
- For nature-reclaiming scenes, add: "Deep green and olive washes where vegetation creeps over stone and metal, wet-on-wet technique for organic growth."

### Composition Guidance

- Use **positive framing**: describe what is present, not what is absent.
- **Lead with the subject**, then place it in context.
- Specify **camera angle and framing** using plain language: "viewed from below," "wide establishing shot," "close portrait framing from chest up," "overhead view."
- For book illustrations, prefer **portrait orientation (3:4)** for full-page pieces and **landscape (4:3 or 16:9)** for chapter headers and spreads.
- Describe **materiality and texture**: not "armor" but "battered plate armor, its surface pitted and scratched, with a faded regimental marking barely visible on the pauldron." Not "a rifle" but "a long-barreled bolt-action rifle, its wooden stock cracked and wrapped in leather cord."

### Lighting Direction

Always describe the lighting explicitly:
- **Outdoor, general**: "Diffuse grey daylight filtered through high thin cloud or distant Fog. Soft shadows, no harsh contrasts."
- **Outdoor, dramatic**: "Low sun breaking through a gap in the Fog, casting long amber shadows across the ruins. Strong directional light from the left/right."
- **Indoor, settlement**: "Warm amber lamplight from a single source, deep brown shadows in the corners. The light catches dust motes and metal surfaces."
- **Underground/ruin**: "Near-darkness with a single point of light — a lantern, a glowing magitek device, a reliquary's faint divine radiance."
- **Combat**: "Muzzle flash and the brief flare of a power activating, sharp against the muted surroundings."

## Illustration Categories

### Chapter Headers (landscape, 16:9 or 4:3)

Wide establishing shots that set the mood for a chapter. Minimal or no characters. Emphasis on environment, scale, and atmosphere.

Example structure:
> A wide landscape showing [environment]. [Key visual detail that signals the chapter's theme]. [Atmospheric conditions]. [Composition: wide shot, low horizon line, vast sky]. [Style block].

### Character & Race Portraits (portrait, 3:4)

Medium or close-up shots of representative figures. Should convey the race/archetype's essential quality through posture, equipment, and setting — not through action.

Example structure:
> A [race/type] [brief physical description], [pose and expression]. They wear [equipment/clothing with material detail]. [Setting context — where are they standing, what is behind them]. [Composition: medium shot from waist up / close portrait from chest up]. [Style block].

### Equipment Illustrations (square or portrait, 1:1 or 3:4)

Single items or small arrangements, rendered with attention to material and wear. Equipment should look used, repaired, and lived-with.

Example structure:
> A [item] resting on [surface]. [Material and condition details — scratches, patina, repairs, wear patterns]. [Lighting — directional to emphasize texture and form]. [Composition: centered, close framing, shallow implied depth]. [Style block].

### Creature Illustrations (portrait, 3:4)

Creatures in their natural environment, conveying threat and scale. Emphasis on silhouette and posture over anatomical detail (the watercolor medium handles this naturally).

Example structure:
> A [creature] [action/posture] in [environment]. [Key physical details — size relative to surroundings, distinctive features, movement]. [Atmospheric detail — Fog, light, weather]. [Composition: the creature dominates the frame / is partially obscured by environment]. [Style block].

### Action Scenes (landscape or portrait depending on scene, 4:3 or 3:4)

Moments of tension or violence. Favor the instant before or just after the decisive action over the action itself — the raised weapon, the aftermath, the moment of recognition.

Example structure:
> [Characters] in [environment], [the moment being captured]. [Key action detail — a weapon raised, a power manifesting, a shield catching a blow]. [Environmental reaction — dust, Fog swirling, debris]. [Composition and angle]. [Style block with combat lighting addition].

### Landscapes & Locations (landscape, 16:9 or 4:3)

Environments without focal characters. These establish the world. Emphasis on the contrast between ruin and reclamation, industry and wilderness, the small and the vast.

Example structure:
> A wide view of [location]. [Key architectural or natural features]. [Signs of age, ruin, or nature's reclamation]. [The Fog — where it sits, how thick, what it obscures]. [Atmospheric conditions and lighting]. [Composition: wide shot with strong foreground/background separation]. [Style block].

## Setting-Specific Visual References

When prompting, draw on these concrete details from the setting:

- **The Fog**: not a uniform white mist. It is luminous, faintly blue-white, and it moves with unsettling purpose. It pools in low places and thins at altitude. Inside the Fog, shapes are half-seen and wrong.
- **Clears**: settlements exist in pockets where the Fog has receded. The boundary between a Clear and the Fog is visible and sharp — civilization on one side, the unknown on the other.
- **Magitek**: technology powered by ambient magical energy. It glows amber or gold when active. It is robust, industrial, often ugly — function over form. Think diesel-punk more than clean sci-fi.
- **The Deathless**: immortal beings who reincorporate after death. They are weary, scarred (though scars fade with each return), and ancient in bearing even if their bodies appear young. Their eyes should suggest depth of experience.
- **Echoes**: the most human-like of the non-human races, with distinctly elfin features — pointed ears, slender builds, elongated proportions. There is always something exaggerated about them, something not quite human in their beauty or strangeness. **Mirrors** are humans in splendor: tall, broad-shouldered for elves, vivid in coloring, almost luminous in sunlight. Everything about them is heightened — brighter eyes, richer skin tones, hair that catches the light. They are creatures of summer and daylight. **Shades** are the opposite pole: pale or grey-skinned, often thin to the point of gauntness, with muted hair tones (ash, silver, dark grey). Their most striking feature is large eyes with cat-like slit pupils — creatures of midnight and the dark realms of faerie. Where Mirrors radiate, Shades absorb.
- **Soot-Beasts**: a race of green-skinned, bestial humanoids bred for war by the Lion-Headed God of War. The name refers to their coloration, not their composition — they are flesh and blood. Both subtypes have cutting claws for nails. **Warboars** are large and heavily porcine: prominent tusks, a boar's snout or even a full boar's head on a hulking humanoid body. Think less "green-skinned human" and more "bipedal war-boar." **Goldenbristles** are more human in build — muscular, upright, and imperious — but with distinctly leonine features: a flat broad snout, fangs, and voluminous hair (often blonde or red) that suggests a mane. They are the officers and commanders, and carry themselves accordingly.
- **Clockworks**: constructed beings, machines with souls. **Ironhands** are obviously robotic — hulking frames of steel and synfiber sinew, with cabling and ducts visible beneath gaps in their armor plating. Their shells have an Art Deco quality: chrome and brass decorations, geometric panel lines, once-gleaming surfaces now marred with dirt, grime, and field repairs. Their actual body is a magi-mechanic core housed inside the combat frame. **Porcelains** are doll-like: alabaster-white outer shells with visible ball-and-socket jointing at the limbs, like a life-sized porcelain doll. In their undisguised forms they can have wholly unnatural coloring — blue or green hair, yellow or red eyes — alongside more biological tones. They are lithe, graceful, and uncanny.
- **Humans**: the firstborn race, torn between the Boar-Mother (earth, life) and the Falcon-Headed Sun (fire, authority). Visually they are human — the most relatable figures in any illustration — but they carry a weight of divine heritage. They are the race most associated with reliquaries and divine magic. Depict them as worn, determined, and marked by the tension of their dual inheritance.
- **Reliquaries**: remnants of dead gods. They glow with a faint, cold divine light — not magitek amber, but something older and less certain.
- **Weapons**: high-contrast science fantasy. At the low end, automatic rifles and shotguns (think AK-47, not muskets); at the high end, plasma rifles, power swords that cut hardened steel, and anti-vehicle rocket launchers. Melee weapons exist and are viable because magitek-powered blades and shields can compete with firearms. The aesthetic is not clean sci-fi — weapons are battered, field-repaired, and often ancient — but the technology itself is advanced and sometimes futuristic. Armor combines physical plate with magitek shielding generators.
- **Architecture**: the old world's buildings were grand — temples, fortresses, palaces. What remains is broken, overgrown, repurposed. New construction is practical, often built inside or on top of old ruins.
- **Skimmers**: magitek vehicles that hover above the ground. Industrial, utilitarian, often battered. They are the primary means of long-distance travel.
