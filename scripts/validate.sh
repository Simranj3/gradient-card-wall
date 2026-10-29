#!/bin/sh
set -eu
file=${1:-}
if [ -z "$file" ] || [ ! -f "$file" ]; then
  echo "usage: validate.sh path/to/card-wall.html" >&2
  exit 2
fi
checks='class="noise"|mix-blend-mode: overlay|devicePixelRatio|prefers-reduced-motion|stroke-width: .8'
printf '%s\n' "$checks" | tr '|' '\n' | while IFS= read -r token; do
  if ! grep -Fq "$token" "$file"; then
    echo "missing: $token" >&2
    exit 1
  fi
done
if grep -Fq 'class="wall"' "$file"; then
  cards=$(grep -o 'class="card"' "$file" | wc -l | tr -d ' ')
  if [ "$cards" -ne 6 ] || ! grep -Fq 'border-radius: 20px' "$file"; then
    echo "card mode requires 6 cards and a 20px radius" >&2
    exit 1
  fi
elif ! grep -Fq 'class="background"' "$file"; then
  echo "expected card wall or background composition" >&2
  exit 1
fi
if grep -Eq 'class="label"|<img|<figcaption|<h[1-6]|<p[ >]' "$file"; then
  echo "visible text or raster image markup found" >&2
  exit 1
fi
echo "OK: $file"
