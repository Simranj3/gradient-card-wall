---
name: gradient-card-wall
description: Creates polished, text-free HTML/CSS/Canvas gradient cards or full-bleed backgrounds from a user's color descriptions. Use when the user names gradient-card-wall or asks for soft grainy gradients, animated color fields, SVG line patterns, cards, or backgrounds.
---

# Gradient Card Wall

Create a self-contained HTML deliverable from the appropriate asset template. The user may specify colors in ordinary language; translate them into harmonious CSS colors rather than requiring hex values.

## Required first question

Before generating anything, determine the format. If the user has not already chosen one, ask exactly:

> Should this be a card or a background?

Wait for the answer. Do not infer the format from dimensions, color descriptions, or earlier examples.

- **Card:** use `assets/template.html`; default to a responsive 3-by-2 wall of square cards.
- **Background:** use `assets/background-template.html`; default to one full-viewport, edge-to-edge composition.

## Input contract

Accept any subset of:

- One palette for the full composition, or up to six palettes for a card wall in reading order.
- A different grid size, card size, pattern set, mood, or motion intensity.

If details are omitted, infer tasteful defaults. Do not pause for color codes. Preserve the user's color words in a short palette comment near each card's CSS variables.

## Workflow

1. Confirm card or background, then copy the matching template to the requested output location.
2. Replace palette variables. Prefer 4–6 colors per composition drawn from adjacent regions of the color wheel; neutrals may bridge neighboring hues.
3. Adjust the cool/light top and warm/dark bottom linear base to support the palette.
4. Keep four oversized radial color patches per composition. In card mode, vary placement, size, blur, and animation duration so the cards feel related but not duplicated.
5. Keep Canvas noise physical-pixel-aware: a 128 CSS-pixel tile uses a `128 * devicePixelRatio` backing store, with one generated sample per physical pixel.
6. Keep SVG lines at `0.8`, about `0.3` opacity, and use a radial mask to preserve a calm center. Use patterns on five of six cards unless the user asks otherwise.
7. Keep pointer attraction subtle. Patches follow the cursor within the active card or background and ease home on pointer leave.
8. Open the output in a browser or render a screenshot. Check the chosen format, absence of visible text, seams in noise, and motion.

## Non-negotiable visual rules

- No raster or photographic images.
- Card mode: square cards in a responsive 3-by-2 wall, `20px` corner radius, and an inset `0.5px` translucent black outline.
- Background mode: one full-viewport composition with square corners and no outline or surrounding page margin.
- No visible text, labels, captions, logos, icons, or controls.
- Base linear gradient: lighter/cooler at top, darker/warmer at bottom.
- Four soft radial color patches with transparent edges.
- Noise uses `mix-blend-mode: overlay` and `opacity: 0.4`.
- Patch drift and scale cycles vary between 20 and 28 seconds.
- Respect `prefers-reduced-motion`.

## Deliverable

Return a single self-contained `.html` file unless the user requests framework code. Mention the palette interpretation in one sentence. Do not add controls, captions, logos, icons, or decorative text unless requested.

## Example invocation

> Use gradient-card-wall with bruised plum, coral ember, and pale apricot.

The skill asks: “Should this be a card or a background?”

