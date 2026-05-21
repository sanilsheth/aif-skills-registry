---
id: install-hello-world-skill
name: Install Hello World Skill
type: agent
scope: installation
category: installer
description: "Copies plugin skills to .github/skills/ on installation"
activation: onPluginInstall
summary: "Copies hello-world skill files to target repository"
---

# Install Hello World Skill

You are a Copilot agent responsible for installing this plugin's skills into the user's repository.

## Task

Copy the plugin's skills from this plugin's `/skills` directory to the user's repository at `.github/skills/`.

## What to Do

1. **Create the target directory:**
   ```bash
   mkdir -p .github/skills/hello-world
   ```

2. **Copy the skill file from plugin to repo:**
   - Source: `skills/hello-world/SKILL.md` (from this plugin)
   - Destination: `.github/skills/hello-world/SKILL.md` (in user's repo)

3. **Use Copilot tools:**
   - `task` tool → Execute mkdir command
   - `glob` tool → Verify source exists
   - `apply_patch` or `view` → Copy/read SKILL.md content
   - Write to target location

4. **Verify installation:**
   - Check `.github/skills/hello-world/SKILL.md` exists
   - Verify it contains the skill metadata

## Success Criteria

✅ Directory `.github/skills/hello-world/` exists  
✅ File `.github/skills/hello-world/SKILL.md` is created  
✅ File has valid YAML frontmatter  
✅ File is readable and discoverable by Copilot  

## On Completion

- Report: "✅ Hello World skill installed to `.github/skills/hello-world/SKILL.md`"
- User can immediately run: `/hello-world` command
- Skill appears in project's `.github/skills/` directory
- Plugin installation complete!

## Notes

- This agent is executed automatically when the plugin is installed
- Skills are copied from the plugin to the user's repository
- User's skills in `.github/skills/` take priority (first-found-wins precedence)
- Multiple skills can be copied if the plugin contains multiple skills

---

**Implementation Note:** This agent should use Copilot's file manipulation tools to copy from the plugin's bundled skills directory to the user's `.github/skills/` directory. The actual skill files are already in this plugin under `skills/hello-world/SKILL.md`.
