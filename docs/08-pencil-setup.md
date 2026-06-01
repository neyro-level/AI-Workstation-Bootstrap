# Pencil Setup Checklist

Pencil — AI design canvas для `.pen` дизайн-файлов. Основной сценарий этой workstation: работа через VS Code, чтобы дизайн открывался и редактировался прямо рядом с проектом. CLI/key добавляется как прямой слой для headless-операций, экспорта и автоматизации.

Официальный сайт:

```text
https://www.pencil.dev/
```

Официальные документы:

- Installation: `https://docs.pencil.dev/getting-started/installation`
- AI Integration: `https://docs.pencil.dev/getting-started/ai-integration`
- Pencil CLI: `https://docs.pencil.dev/for-developers/pencil-cli`

## 1. Account

- [ ] Открыть `https://www.pencil.dev/`.
- [ ] Зарегистрироваться или войти в аккаунт.
- [ ] Проверить, что есть доступ к Pencil web app / account settings.
- [ ] Если нужен CLI/headless-режим, найти Developer Keys / CLI key в настройках аккаунта или организации.

Не отправляйте CLI key в чат и не сохраняйте его в markdown.

## 2. VS Code Visual Workflow

Это основной сценарий для человека: дизайн виден прямо в VS Code.

- [ ] Установить VS Code.
- [ ] Установить Pencil VS Code extension.
- [ ] Создать или открыть файл `.pen` в рабочем проекте.
- [ ] Проверить, что открывается визуальный Pencil canvas, а не обычный текстовый файл.
- [ ] Хранить `.pen` рядом с проектом, например:

```text
project-name/
├── design/
│   └── main.pen
├── docs/
└── src/
```

Правило: `.pen` не читать и не править обычными файловыми командами. С ним должен работать Pencil UI, Pencil MCP или Pencil CLI.

## 3. AI / MCP Integration

MCP нужен, чтобы AI-агент мог читать и менять открытый `.pen` через инструменты.

- [ ] Запустить VS Code.
- [ ] Открыть нужный `.pen`.
- [ ] Запустить Codex / другой AI agent после открытия Pencil.
- [ ] Проверить, что Pencil MCP tools доступны.
- [ ] Первое действие агента в `.pen` должно быть чтением editor state/schema.

Ожидаемая логика работы:

```text
VS Code + Pencil extension = визуальный canvas
Pencil MCP = агент видит и правит открытый canvas
Pencil CLI = прямой/headless слой для автоматизации
```

Если MCP не видит файл, обычно открыт не тот `.pen` или Pencil extension не активен.

## 4. Pencil CLI

CLI нужен для прямого запуска без ручной работы в canvas: создать `.pen`, изменить существующий `.pen`, экспортировать PNG/PDF, запускать пакетные операции.

Установка:

```powershell
npm install -g '@pencil.dev/cli'
```

Проверка:

```powershell
pencil version
pencil status
```

Интерактивный вход:

```powershell
pencil login
```

Headless-пример:

```powershell
pencil --out design.pen --prompt "Create a clean project dashboard" --agent codex
```

Редактирование существующего файла:

```powershell
pencil --in design.pen --out design-updated.pen --prompt "Improve the hero section hierarchy" --agent codex
```

## 5. CLI Key And Secrets

CLI key нужен для автоматизации, CI/CD, headless-запусков и работы без интерактивного login.

Рекомендуемое имя переменной:

```text
PENCIL_CLI_KEY
```

Рекомендуемое хранение:

- Doppler;
- 1Password / Bitwarden / другой password manager;
- локальный `.env`, только если файл не попадает в git.

Doppler-пример:

```powershell
doppler secrets set PENCIL_CLI_KEY --project your-project --config prd
doppler run --project your-project --config prd -- pencil status
```

Запуск CLI через Doppler:

```powershell
doppler run --project your-project --config prd -- pencil --out design.pen --prompt "Create a landing page" --agent codex
```

Нельзя:

- коммитить `PENCIL_CLI_KEY`;
- вставлять ключ в README, docs, worklog или чат;
- хранить реальные ключи в публичном репозитории.

## 6. Recommended Operating Mode

Для ежедневной работы:

- [ ] Открыть проект в VS Code.
- [ ] Открыть `.pen` в Pencil extension.
- [ ] Дать AI задачу на дизайн.
- [ ] AI работает через MCP, пользователь видит результат в canvas.
- [ ] После крупных изменений экспортировать нужные frames через Pencil.

Для автоматизации:

- [ ] Убедиться, что `PENCIL_CLI_KEY` лежит в secrets manager.
- [ ] Запускать `pencil ...` через `doppler run` или окружение CI/CD.
- [ ] Экспортировать артефакты в `design/exports/`.

## 7. Troubleshooting

Pencil canvas не открывается:

- проверить расширение VS Code;
- закрыть и открыть `.pen`;
- перезапустить VS Code.

AI не видит Pencil tools:

- открыть `.pen` до запуска AI agent;
- проверить MCP list/tools;
- перезапустить Codex / AI agent.

`pencil status` показывает `Not authenticated`:

- выполнить `pencil login`; или
- добавить `PENCIL_CLI_KEY` в Doppler / environment и запускать через `doppler run`.

CLI key есть, но не работает:

- проверить, что ключ скопирован полностью;
- проверить, что переменная называется именно `PENCIL_CLI_KEY`;
- проверить, что команда запускается в том же окружении, где доступна переменная.
