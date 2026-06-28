# Skill Root Policy

Classify every `SKILL.md` path before moving it.

## Active Roots

These are usually loaded directly by an agent or skill manager:

- `~/.codex/skills`
- `~/.agents/skills`
- `~/.claude/skills`
- `~/.cursor/skills-cursor`
- `~/.grok/skills`
- `~/.openclaw-autoclaw/skills`
- `~/.qoderwork/skills`

Goal: keep direct child directories with `SKILL.md` small. Consolidate related entries into routers.

## Shared Root

Use `~/.agents/skills` for cross-agent skills that are useful from multiple tools.

Good examples:

- `lark`
- `engineering`
- company or project routers shared across agents

## Source Repositories

Do not move skills inside normal source repositories unless the user asks to reorganize that repository.

Examples:

- `~/source/repos/<repo>/<skill>/SKILL.md`
- downloaded upstream skill packs
- cloned examples

Instead, copy or install the selected skill into an active root or fold it into an existing router.

## Cache And Marketplace Copies

Do not treat cache hits as installed skills.

Common cache locations:

- `~/.claude/plugins/cache`
- `~/.claude/plugins/marketplaces`
- `~/.grok/marketplace-cache`
- `~/.codex/.tmp`
- `~/.codex/vendor_imports`
- package manager caches

Leave these alone unless the user asks for cache cleanup.

## Loose Skills

Loose skills under the user home, documents, scripts, desktop, or old work output are usually clutter.

Default action:

1. Check whether they duplicate an active router/module.
2. If duplicate or stale, move the containing folder to `~/skills-disabled/<YYYYMMDD-topic>/`.
3. If useful, install or copy it into the right active root or router module.
4. If uncertain, leave it and report it.
