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
cp "$SCRIPT_DIR/commands/slide-to-marp.md" "$COMMANDS_DIR/slide-to-marp.md"
cp "$SCRIPT_DIR/commands/slide-story.md" "$COMMANDS_DIR/slide-story.md"
cp "$SCRIPT_DIR/commands/slide-from-doc.md" "$COMMANDS_DIR/slide-from-doc.md"

echo "Installed commands:"
echo "  /slides         - Generate a full presentation outline with speaker notes"
echo "  /slide-notes    - Generate speaker notes for an existing outline"
echo "  /slide-review   - Review a presentation outline for flow and pacing"
echo "  /slide-to-marp  - Convert an outline to Marp markdown format"
echo "  /slide-story    - Build a narrative-driven presentation (situation, complication, resolution)"
echo "  /slide-from-doc - Distill a long document into a slide deck outline"
echo ""
echo "Templates available in templates/ directory:"
echo "  technical-deep-dive.md  - 30-40 min technical talk structure"
echo "  lightning-talk.md       - 5 min lightning talk structure"
echo "  executive-update.md     - 15 min leadership update structure"
echo ""
echo "Done. Restart Claude Code to pick up the new commands."
