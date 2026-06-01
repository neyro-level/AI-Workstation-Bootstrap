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

Для Pencil OS можно использовать готовый скрипт:

```powershell
.\scripts\install-pencil-skills.ps1
```

После установки skills перезапустите Codex / IDE extension / CLI session.

## Важно

Не храните в публичном репозитории:

- `auth.json`;
- реальные `config.toml` с токенами;
- приватные skills;
- историю сессий;
- sqlite базы Codex.

## Проверка

После перезапуска Codex проверьте, что доступны:

- `skill-creator`;
- `pencil-os`;
- `pencil-mcp-operator`;
- `pencil-modern-ui`;
- `pencil-b2b-sites`;
- `pencil-design-system`.
