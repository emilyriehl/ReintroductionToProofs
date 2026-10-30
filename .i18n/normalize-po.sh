#!/usr/bin/env bash
# Bring every .i18n/xx/Game.po into a canonical form:
# no line wrapping (strings are only broken at "\n") and one source reference per line.
# Running it again on a normalized file changes nothing.
set -euo pipefail

cd "$(dirname "$0")"
shopt -s nullglob

for po in [a-z][a-z]/Game.po; do
  msgcat --no-wrap -w 1 "$po" -o "$po"
  echo "normalized $po"
done
