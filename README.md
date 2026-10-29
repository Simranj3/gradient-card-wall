# Gradient Card Wall

A reusable Codex skill for generating text-free, animated gradient cards and full-bleed backgrounds from plain-language color descriptions.

The generated HTML uses CSS gradients, Canvas noise, inline SVG line patterns, and subtle pointer-responsive motion. It does not use raster images or external JavaScript dependencies.

## What it creates

- Responsive 3×2 walls of square gradient cards
- Full-viewport animated gradient backgrounds
- Four soft radial color patches over a cool-to-warm linear base
- Physical-pixel-aware Canvas grain
- Optional SVG rays, contours, waves, dots, and lens patterns
- Reduced-motion support

## Install

Clone this repository into your personal Codex skills directory:

```sh
git clone https://github.com/Simranj3/gradient-card-wall.git ~/.agents/skills/gradient-card-wall
```

Restart Codex if the skill does not appear immediately.

## Use

Say:

> Use `gradient-card-wall` with misty blue, deep teal, and soft sea green.

If you have not selected a format, the skill asks:

> Should this be a card or a background?

You can also specify format and mood directly:

> Use `gradient-card-wall`. Make a full-screen background in smoky violet, coral ember, and pale apricot with very slow motion.

## Templates

- [`assets/template.html`](assets/template.html) — responsive six-card wall
- [`assets/background-template.html`](assets/background-template.html) — full-viewport background

Open either file directly in a modern browser to preview it.

## Validate

```sh
sh scripts/validate.sh assets/template.html
sh scripts/validate.sh assets/background-template.html
```

## License

MIT

