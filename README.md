# Skill Directory Hygiene

A compact Agent Skill for cleaning scattered `SKILL.md` files, reducing top-level skill budget, and enforcing safer skill download/install rules.

## Install

Copy `skill-directory-hygiene/` into an active skill root, for example:

```powershell
Copy-Item -Recurse .\skill-directory-hygiene "$HOME\.agents\skills\skill-directory-hygiene"
```

Use `~/.agents/skills` when multiple agents should share it, or a tool-specific root such as `~/.codex/skills` for one agent.

## What It Does

- Classifies skill paths as active, shared, source, cache, backup, or loose.
- Consolidates noisy families into router/module layouts.
- Defines where downloaded skills should live.
- Encourages reversible archiving instead of deletion.
- Includes a PowerShell scanner for Windows-heavy environments.

## Repository Contents

```text
skill-directory-hygiene/
  SKILL.md
  agents/openai.yaml
  references/
    download-policy.md
    router-module-pattern.md
    skill-root-policy.md
  scripts/
    scan-skills.ps1
```

## Safety

This repo intentionally does not include any personal inventory, local cleanup output, tokens, app IDs, or private paths beyond generic examples.
