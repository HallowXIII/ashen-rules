#!/usr/bin/env bash
# Generate (or edit) an image with Google's Nano Banana models via the Gemini API.
#
# Usage:
#   tools/nano-banana.sh -o out.png "a sootbeast warrior in ashen wastes"
#   tools/nano-banana.sh -o out.png -m gemini-3-pro-image -a 2:3 "portrait ..."
#   tools/nano-banana.sh -o out.png -i reference.png "same character, now holding a spear"
#   echo "long prompt ..." | tools/nano-banana.sh -o out.png -
#
# Options:
#   -o FILE   Output image path (default: nano-banana-out.png)
#   -m MODEL  Model id (default: gemini-3.1-flash-image; premium: gemini-3-pro-image)
#   -a RATIO  Aspect ratio, e.g. 1:1, 16:9, 2:3 (default: model default)
#   -i FILE   Input reference image for editing (repeatable)
#   -n        Dry run: print the request JSON instead of calling the API
#
# Auth: set GEMINI_API_KEY, or put the key in ~/.config/gemini/api_key.
# Get a key at https://aistudio.google.com/apikey

set -euo pipefail

model="gemini-3.1-flash-image"
out="nano-banana-out.png"
aspect=""
dry_run=0
inputs=()

while getopts "o:m:a:i:n" opt; do
  case "$opt" in
    o) out="$OPTARG" ;;
    m) model="$OPTARG" ;;
    a) aspect="$OPTARG" ;;
    i) inputs+=("$OPTARG") ;;
    n) dry_run=1 ;;
    *) exit 2 ;;
  esac
done
shift $((OPTIND - 1))

if [[ $# -lt 1 ]]; then
  echo "error: no prompt given (use '-' to read from stdin)" >&2
  exit 2
fi

if [[ "$1" == "-" ]]; then
  prompt="$(cat)"
else
  prompt="$*"
fi

key="${GEMINI_API_KEY:-}"
if [[ -z "$key" && -r "$HOME/.config/gemini/api_key" ]]; then
  key="$(<"$HOME/.config/gemini/api_key")"
fi
if [[ -z "$key" && "$dry_run" -eq 0 ]]; then
  echo "error: no API key. Set GEMINI_API_KEY or write the key to ~/.config/gemini/api_key" >&2
  echo "Get one at https://aistudio.google.com/apikey" >&2
  exit 1
fi

# Build parts: optional reference images first, then the text prompt.
# Image data goes through temp files (--rawfile / -d @file), never argv —
# base64-encoded images easily exceed the kernel's argument size limit.
tmpdir="$(mktemp -d)"
trap 'rm -rf "$tmpdir"' EXIT

parts="[]"
for img in "${inputs[@]:-}"; do
  [[ -z "$img" ]] && continue
  case "${img##*.}" in
    jpg|jpeg) mime="image/jpeg" ;;
    webp)     mime="image/webp" ;;
    *)        mime="image/png" ;;
  esac
  base64 -w0 "$img" > "$tmpdir/img.b64"
  parts="$(jq -c --arg m "$mime" --rawfile d "$tmpdir/img.b64" \
    '. + [{inlineData: {mimeType: $m, data: ($d | rtrimstr("\n"))}}]' <<<"$parts")"
done
parts="$(jq -c --arg t "$prompt" '. + [{text: $t}]' <<<"$parts")"

jq -c --arg aspect "$aspect" '
  {
    contents: [{parts: .}],
    generationConfig: ({responseModalities: ["IMAGE"]}
      + (if $aspect != "" then {imageConfig: {aspectRatio: $aspect}} else {} end))
  }' <<<"$parts" > "$tmpdir/body.json"

if [[ "$dry_run" -eq 1 ]]; then
  jq . "$tmpdir/body.json"
  exit 0
fi

curl -sS -X POST \
  "https://generativelanguage.googleapis.com/v1beta/models/${model}:generateContent" \
  -H "x-goog-api-key: ${key}" \
  -H "Content-Type: application/json" \
  -d @"$tmpdir/body.json" > "$tmpdir/resp.json"

if jq -e '.error' "$tmpdir/resp.json" >/dev/null; then
  echo "API error:" >&2
  jq '.error' "$tmpdir/resp.json" >&2
  exit 1
fi

jq -r '[.candidates[0].content.parts[]? | select(.inlineData) | .inlineData.data][0] // empty' \
  "$tmpdir/resp.json" > "$tmpdir/img.out.b64"
if [[ ! -s "$tmpdir/img.out.b64" ]]; then
  echo "error: no image in response. Full response:" >&2
  jq . "$tmpdir/resp.json" >&2
  exit 1
fi

base64 -d "$tmpdir/img.out.b64" > "$out"
# Print any accompanying text (models sometimes add commentary).
jq -r '.candidates[0].content.parts[]? | select(.text) | .text' "$tmpdir/resp.json"
echo "wrote $out" >&2
