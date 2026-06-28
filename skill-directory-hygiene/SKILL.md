---
name: skill-directory-hygiene
description: Audit, simplify, and govern local AI agent skill directories. Use when cleaning scattered SKILL.md files, reducing skill-budget noise, consolidating related skills into router/module layouts, deciding where downloaded skills should live, or defining safe skill installation/download rules across Codex, Claude, Cursor, Grok, OpenClaw, QoderWork, OpenCode, Gemini CLI, or shared .agents skill roots.
---

# Skill Directory Hygiene

Use this skill to keep local skill directories small, discoverable, and reversible.

## Workflow

1. Run `scripts/scan-skills.ps1` or an equivalent `rg --hidden --files <root> -g 'SKILL.md'` scan.
2. Read `references/skill-root-policy.md` to classify each hit as active, shared, source, cache, backup, or loose.
3. For large skill families, read `references/router-module-pattern.md` and consolidate them behind one router skill.
4. Before installing or downloading any new skill, read `references/download-policy.md`.
5. Move clutter to a dated disabled/archive folder; do not delete unless the user explicitly asks.
6. Re-run the scan and report direct active entry counts plus any remaining loose skills.

## Default Decisions

- Keep active top-level entries few and intentional.
- Prefer one router per domain or tool family.
- Keep original source repositories intact.
- Leave package caches and marketplace caches alone unless the user asks for disk cleanup.
- Do reversible moves first: `skills-disabled/<YYYYMMDD-topic>/`.
- Never expose secrets, tokens, or private local inventory in a public repo.

## Output

Report:

- Active roots and direct top-level skill counts.
- Router skills created or updated.
- Skills archived and their new paths.
- Skills intentionally left alone, with reasons.
- Any auth or tool health issues discovered during validation.
