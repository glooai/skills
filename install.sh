#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="$SCRIPT_DIR/skills"

# Detect target directory
if [ -d "$HOME/.claude" ]; then
  TARGET="$HOME/.claude/skills"
elif [ -d "$HOME/.config/opencode" ]; then
  TARGET="$HOME/.config/opencode/skills"
else
  TARGET="$HOME/.claude/skills"
fi

mkdir -p "$TARGET"

installed=0
for skill_dir in "$SKILLS_DIR"/*/; do
  skill_name="$(basename "$skill_dir")"
  if [ -f "$skill_dir/SKILL.md" ]; then
    ln -sfn "$skill_dir" "$TARGET/$skill_name"
    echo "Installed: $skill_name -> $TARGET/$skill_name"
    installed=$((installed + 1))
  fi
done

echo ""
echo "Installed $installed skill(s) to $TARGET"
