#!/usr/bin/env bash
# Usage: ./install.sh [claude|codex|pi|all]
set -e
T="${1:-all}"
SRC="$(cd "$(dirname "$0")" && pwd)/skills/structural-humanizer"
inst() { mkdir -p "$1" && cp -r "$SRC" "$1/" && echo "Installed to $1/structural-humanizer"; }
case "$T" in
  claude) inst "$HOME/.claude/skills" ;;
  codex)  inst "$HOME/.codex/skills" ;;
  pi)     inst "$HOME/.pi/agent/skills" ;;
  all)    inst "$HOME/.claude/skills"; inst "$HOME/.codex/skills"; inst "$HOME/.pi/agent/skills" ;;
  *) echo "Usage: $0 [claude|codex|pi|all]"; exit 1 ;;
esac
