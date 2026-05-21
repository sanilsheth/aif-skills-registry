#!/bin/bash

# Install Hello World Skill
# Downloads and installs hello-world skill for GitHub Copilot

set -e

echo "Installing Hello World Skill..."

# Configuration
SKILL_NAME="hello-world"
TARGET_DIR=".github/skills/$SKILL_NAME"
SKILL_URL="https://sanilsheth.github.io/aif-skills-registry/dist/copilot/marketplace/skill.atomic.hello-world/skills/$SKILL_NAME/SKILL.md"

echo "  Target location: $TARGET_DIR/SKILL.md"
echo "  Downloading from: $SKILL_URL"

# Create target directory
mkdir -p "$TARGET_DIR"

# Download skill file
if curl -sSL "$SKILL_URL" -o "$TARGET_DIR/SKILL.md"; then
  echo "✅ Hello World skill installed successfully"
  echo "   Location: $TARGET_DIR/SKILL.md"
  echo "   Run: copilot -- /hello-world"
  exit 0
else
  echo "❌ Installation failed: Could not download skill file"
  exit 1
fi
