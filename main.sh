#!/usr/bin/env bash

[ -f "$3" ] && INPUT=$(cat "$3") || INPUT="$3"

case "$1" in
  "ruby") /usr/bin/env "$1" "$2".rb "$INPUT"
  ;;
  "crystal") /usr/bin/env "$1" run "$2".cr -- "$INPUT"
  ;;
  "go") echo "go" # to complete...
  ;;
esac
