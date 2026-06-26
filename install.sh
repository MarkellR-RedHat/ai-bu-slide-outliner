#!/bin/bash
# install.sh - Install ai-bu-slide-outliner commands into Claude Code

set -e

COMMANDS_DIR="$HOME/.claude/commands"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing slide outliner commands..."

mkdir -p "$COMMANDS_DIR"

cp "$SCRIPT_DIR/commands/slides.md" "$COMMANDS_DIR/slides.md"
cp "$SCRIPT_DIR/commands/slide-notes.md" "$COMMANDS_DIR/slide-notes.md"
cp "$SCRIPT_DIR/commands/slide-review.md" "$COMMANDS_DIR/slide-review.md"

echo "Installed commands:"
echo "  /slides       - Generate a full presentation outline with speaker notes"
echo "  /slide-notes  - Generate speaker notes for an existing outline"
echo "  /slide-review - Review a presentation outline for flow and pacing"
echo ""
echo "Done. Restart Claude Code to pick up the new commands."
