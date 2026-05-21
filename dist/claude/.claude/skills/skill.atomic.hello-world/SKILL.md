---
id: skill.atomic.hello-world
kind: skill
scope: atomic
category: domain
domain: examples
summary: Hello World skill demonstrating canonical to vendor transformation.
depends_on: []
commands: []
evidence:
  keywords:
  - hello
  - world
  - example
claude_capabilities:
  memory: true
  file_access: true
  mcp: false
applies_to:
  file_patterns:
  - '**/*.md'
  - '**/*.py'
  - '**/*.ts'
  - '**/*.js'
  project_types:
  - all
availability: progressive
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

## In Claude Code

This skill is automatically loaded in your Claude Code workspace.

**Claude remembers:** This skill helps you understand vendor-neutral AI guidance architecture.

### Trigger Conditions

Claude activates this skill when:
- Reviewing documentation files
- Working with canonical skills or adapters
- Learning about the guidance system

### How Claude Uses This

Claude will reference this skill when:
1. You ask about skill transformation
2. You're working with multiple vendors
3. You're understanding the adapter pipeline


