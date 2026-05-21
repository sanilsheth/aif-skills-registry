#!/bin/bash

# Install Hello World Skill
# This script is executed when the plugin is installed via onPluginInstall hook

set -e

echo "Installing Hello World Skill..."

# Get the directory where this script is located (plugin root)
PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_SOURCE="$PLUGIN_DIR/skills/hello-world/SKILL.md"
SKILL_TARGET=".github/skills/hello-world/SKILL.md"

echo "  Plugin directory: $PLUGIN_DIR"
echo "  Source skill: $SKILL_SOURCE"
echo "  Target location: $SKILL_TARGET"

# Verify source file exists
if [ ! -f "$SKILL_SOURCE" ]; then
  echo "❌ Source skill file not found at: $SKILL_SOURCE"
  exit 1
fi

# Create target directory
mkdir -p .github/skills/hello-world

# Copy skill file from plugin to user's repo
cp "$SKILL_SOURCE" "$SKILL_TARGET"

# Verify installation
if [ -f "$SKILL_TARGET" ]; then
  echo "✅ Hello World skill installed successfully"
  echo "   Location: .github/skills/hello-world/SKILL.md"
  echo "   Run: copilot -- /hello-world"
  exit 0
else
  echo "❌ Installation failed: Skill file not found at $SKILL_TARGET"
  exit 1
fi
