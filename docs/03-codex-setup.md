# Codex Setup

## Идея

`codex-template/` содержит пример глобальных правил и базовых skills.

На реальной машине это переносится в глобальную папку Codex:

```text
C:\Users\<User>\.codex
```

## Что переносить

- `templates/codex/AGENTS.md.template` → `.codex/AGENTS.md`
- `codex-template/skills/*` → `.codex/skills/*`

## Важно

Не храните в публичном репозитории:

- `auth.json`;
- реальные `config.toml` с токенами;
- приватные skills;
- историю сессий;
- sqlite базы Codex.

