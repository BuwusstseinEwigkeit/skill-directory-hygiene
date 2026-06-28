# Skill Download Policy

Follow these rules before adding new skills.

## Default Install Locations

- Cross-agent reusable skills: `~/.agents/skills/<name>`
- Codex-only skills: `~/.codex/skills/<name>`
- Claude-only skills: `~/.claude/skills/<name>`
- Tool-specific experimental skills: the tool's own skill root
- Upstream source packs: `~/source/repos/<repo>` or another source directory, not an active skill root

## Naming

- Use lowercase hyphen-case.
- Avoid vague names such as `helper`, `tools`, or `misc`.
- Use one top-level router name for a family: `lark`, `figma`, `gsap`, `engineering`, `media-generation`.
- Put narrow workflows under `references/modules/<module>/MODULE.md`.

## Download Rules

1. Vet the source before installing.
2. Prefer cloning upstream into a source directory.
3. Copy only selected skills into active roots.
4. If a pack contains many related skills, install them as modules under one router.
5. Do not install directly from random archives into active roots.
6. Do not keep multiple active copies of the same capability.
7. Keep install notes out of `SKILL.md`; use local repo docs or commit messages.

## Security Checks

Before enabling a downloaded skill, inspect:

- Shell scripts and install hooks.
- Network calls and auth handling.
- References to secrets, tokens, or credential files.
- Destructive filesystem commands.
- Auto-run behavior.

Do not run unknown scripts just to inspect a skill. Read first.

## Public Repository Rules

Before publishing a skill repo:

- Remove local absolute paths unless they are examples.
- Remove tokens, app IDs, account names, private URLs, and private inventories.
- Keep the repository generic enough for another user to install.
- Use examples instead of personal machine state.
