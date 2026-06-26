#!/bin/bash
# install.sh - Install ai-bu-slide-outliner commands into Claude Code

set -e

COMMANDS_DIR="$HOME/.claude/commands"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

GREEN='\033[0;32m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m'

echo ""
echo -e "${BOLD}Slide Outliner${NC}"
echo "Presentation outlines, speaker notes, and visual suggestions"
echo ""

mkdir -p "$COMMANDS_DIR"

for cmd in "$SCRIPT_DIR"/commands/*.md; do
  cp "$cmd" "$COMMANDS_DIR/$(basename "$cmd")"
  echo -e "  ${GREEN}+${NC} /$(basename "$cmd" .md)"
done

echo ""
echo -e "${CYAN}Core commands:${NC}"
echo "  /slides         - Generate a full presentation outline"
echo "  /slide-notes    - Speaker notes for an existing outline"
echo "  /slide-review   - Review flow, pacing, and slide design"
echo "  /slide-story    - Narrative-driven presentation"
echo "  /slide-from-doc - Distill a document into slides"
echo "  /slide-to-marp  - Convert to Marp markdown"
echo ""
echo -e "${CYAN}Advanced commands:${NC}"
echo "  /slide-pacing   - Timing analysis with checkpoint markers"
echo "  /slide-visuals  - Visual treatment suggestions per slide"
echo "  /slide-hooks    - 5 alternative opening sequences"
echo ""
echo -e "${CYAN}Templates:${NC}"
echo "  technical-deep-dive.md  - 30-40 min technical talk"
echo "  lightning-talk.md       - 5 min lightning talk"
echo "  executive-update.md     - 15 min leadership update"
echo "  demo-heavy-talk.md      - 60% demo format"
echo "  panel-prep.md           - Panel preparation"
echo "  ignite-talk.md          - 20 slides, 15s each"
echo ""
echo -e "${GREEN}Done.${NC} Restart Claude Code to use the new commands."
