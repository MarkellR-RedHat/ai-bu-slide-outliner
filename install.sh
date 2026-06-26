#!/bin/bash
# install.sh - Install ai-bu-slide-outliner commands into Claude Code

set -e

COMMANDS_DIR="$HOME/.claude/commands"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
BOLD='\033[1m'
DIM='\033[2m'
NC='\033[0m'

echo ""
echo -e "${BOLD}Slide Outliner${NC}"
echo "Presentation coaching commands for Claude Code"
echo -e "${DIM}Your talk has one message. These commands help you find it.${NC}"
echo ""

# Check for existing commands and warn
if [ -d "$COMMANDS_DIR" ]; then
  EXISTING=0
  for cmd in "$SCRIPT_DIR"/commands/*.md; do
    if [ -f "$COMMANDS_DIR/$(basename "$cmd")" ]; then
      EXISTING=$((EXISTING + 1))
    fi
  done
  if [ "$EXISTING" -gt 0 ]; then
    echo -e "  ${DIM}Updating ${EXISTING} existing command(s)${NC}"
  fi
fi

mkdir -p "$COMMANDS_DIR"

INSTALLED=0
for cmd in "$SCRIPT_DIR"/commands/*.md; do
  cp "$cmd" "$COMMANDS_DIR/$(basename "$cmd")"
  echo -e "  ${GREEN}+${NC} /$(basename "$cmd" .md)"
  INSTALLED=$((INSTALLED + 1))
done

echo ""
echo -e "${CYAN}Core commands:${NC}"
echo "  /slides         - Generate an outline built around one message"
echo "  /slide-notes    - Cue cards, not scripts, for your slides"
echo "  /slide-review   - Brutal review: what to kill, sharpen, or ship"
echo "  /slide-story    - Narrative structure: situation, complication, resolution"
echo "  /slide-from-doc - Distill a document into a focused talk"
echo "  /slide-to-marp  - Convert to Marp markdown with Red Hat theme"
echo ""
echo -e "${CYAN}Refinement commands:${NC}"
echo "  /slide-pacing   - Timing analysis and audience energy mapping"
echo "  /slide-visuals  - Visual treatment suggestions per slide"
echo "  /slide-hooks    - 5 alternative opening sequences"
echo ""
echo -e "${CYAN}Templates in templates/:${NC}"
echo "  technical-deep-dive.md  - 30-40 min technical talk"
echo "  lightning-talk.md       - 5 min lightning talk"
echo "  executive-update.md     - 15 min leadership update"
echo "  demo-heavy-talk.md      - 60% demo format"
echo "  panel-prep.md           - Panel preparation"
echo "  ignite-talk.md          - 20 slides, 15s each"
echo ""
echo -e "${GREEN}Installed ${INSTALLED} commands.${NC} Restart Claude Code to use them."
