# Router Module Pattern

Use this pattern when many related skills compete for top-level skill budget.

## Target Layout

```text
<router-name>/
  SKILL.md
  references/
    module-index.md
    modules/
      <module-a>/
        MODULE.md
      <module-b>/
        MODULE.md
```

## Router SKILL.md

Keep the router short.

It should:

- Name the domain or tool family.
- Include trigger terms for the whole family.
- Tell the agent to read `references/module-index.md`.
- Tell the agent to load only the chosen module.
- Avoid copying module details into the router body.

## Module Index

Use a compact table:

```markdown
| Module | Use when |
|---|---|
| `docs` | Creating, editing, or auditing docs. |
| `api` | API calls, auth, schemas, or SDK usage. |
```

## Module Files

Rename each former `SKILL.md` to `MODULE.md` after moving it under `references/modules/<module>/`.

Then update local references:

- `SKILL.md` -> `MODULE.md`
- `../other-skill/SKILL.md` -> `../other-module/MODULE.md`, if the relative module path still makes sense

## Validation

After consolidation:

- Confirm only the router directory has a top-level `SKILL.md`.
- Confirm no `SKILL.md` remains under `references/modules`.
- Run the agent's skill listing command, if available.
- Test that the router description still contains the important trigger terms.

## Rollback

Because modules are moved, not deleted, rollback is straightforward:

1. Move each module directory back to the active root.
2. Rename `MODULE.md` back to `SKILL.md`.
3. Remove the router directory.
