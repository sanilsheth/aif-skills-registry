---
id: skill.atomic.hello-world
kind: skill
scope: atomic
category: domain
domain: examples
summary: Hello World skill demonstrating canonical to vendor transformation.
depends_on: []
commands: &id001 []
evidence:
  keywords:
  - hello
  - world
  - example
opencode_detection:
  commands: *id001
  globs: []
  markers: []
availability: context-aware
---

# Hello World

This is a minimal example skill demonstrating how canonical skills transform into vendor-specific formats.

## Purpose

This skill showcases the AI tool guidance system architecture:

- One canonical skill source (this file)
- Three vendor-specific distributions (Copilot, Claude, OpenCode)
- Each vendor sees guidance tailored to their tool and interface

## When to Use

- Learning the AI tool guidance system
- Testing adapter transformations
- Verifying the distribution pipeline
- Understanding vendor-neutral canonical design

## How It Works

When you install this skill in your AI tool, the same guidance appears in three different ways:

### In GitHub Copilot

You'll see this as a skill in `.github/skills/skill.atomic.hello-world/SKILL.md` with:
- Copilot-specific commands (`/hello`)
- Copilot UI hints (surfaces: VS Code, CLI)
- Copilot-native frontmatter

### In Claude Code

You'll see this as a skill in `.claude/skills/skill.atomic.hello-world/SKILL.md` with:
- Claude memory integration
- File pattern triggers
- Claude-native frontmatter

### In OpenCode

You'll see this as a skill in `.opencode/skills/skill.atomic.hello-world/SKILL.md` with:
- Context-aware activation
- Detection markers (commands, globs, file patterns)
- OpenCode-native frontmatter

## Example

The canonical source (this file) stays the same. Adapters generate vendor-specific versions automatically.

## Key Insight

This demonstrates the power of **vendor-neutral guidance**:
- Write once (canonical)
- Distribute everywhere (Copilot, Claude, OpenCode)
- No manual duplication
- Policy stays synchronized

## In OpenCode

This skill is context-aware and activates based on repository detection.

### Detection Markers

OpenCode activates this skill when:
- Commands detected: none
- File patterns match project structure
- Repository context indicates relevance

### How OpenCode Uses This

OpenCode automatically suggests this skill when you're:
- Working in a relevant project context
- Learning about guidance system architecture
- Setting up vendor-neutral policies


