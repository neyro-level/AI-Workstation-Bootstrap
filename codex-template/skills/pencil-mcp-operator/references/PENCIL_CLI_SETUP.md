# Pencil CLI Setup

## Роль CLI

CLI не заменяет VS Code/Pencil extension. Он нужен для headless-задач, batch export и автоматизации.

## Секреты

`PENCIL_CLI_KEY` хранить только в Doppler или environment.

Не хранить ключ:

- в `SKILL.md`;
- в `README.md`;
- в `.env.example`;
- в проектных markdown;
- в git.

## Проверки

```powershell
pencil --version
doppler run --project your-project --config prd -- pencil status
```

Если ключ отсутствует, сообщить только статус: `PENCIL_CLI_KEY: нет`.
