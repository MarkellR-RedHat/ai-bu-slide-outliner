#!/bin/bash
# install.sh - Install Slide Outliner commands into Claude Code

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
echo ""

# Check that the commands directory exists in the repo
if [ ! -d "$SCRIPT_DIR/commands" ]; then
  echo -e "${RED}Error:${NC} commands/ directory not found in $SCRIPT_DIR"
  echo "Make sure you cloned the full repository."
  exit 1
fi

# Count available commands
AVAILABLE=$(ls "$SCRIPT_DIR"/commands/*.md 2>/dev/null | wc -l | tr -d ' ')
if [ "$AVAILABLE" -eq 0 ]; then
  echo -e "${RED}Error:${NC} No command files found in commands/"
  exit 1
fi

# Check for existing commands and note updates
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

# Create the commands directory
mkdir -p "$COMMANDS_DIR" || {
  echo -e "${RED}Error:${NC} Could not create $COMMANDS_DIR"
  exit 1
}

# Install each command, showing progress
echo -e "${CYAN}Installing commands:${NC}"
INSTALLED=0
for cmd in "$SCRIPT_DIR"/commands/*.md; do
  NAME="$(basename "$cmd" .md)"
  cp "$cmd" "$COMMANDS_DIR/$(basename "$cmd")" || {
    echo -e "  ${RED}x${NC} /$NAME (copy failed)"
    continue
  }
  echo -e "  ${GREEN}+${NC} /$NAME"
  INSTALLED=$((INSTALLED + 1))
done

echo ""
echo -e "${GREEN}Installed ${INSTALLED} commands.${NC}"
echo ""
echo "Restart Claude Code, then try:"
echo ""
echo "  /slides Your Topic | Your Audience | 20 minutes"
echo ""
