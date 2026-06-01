# Pencil OS Skills

Этот репозиторий содержит готовую мини-операционную систему Codex skills для работы с Pencil.dev.

Комплект находится здесь:

```text
codex-template/skills/
├── pencil-os
├── pencil-mcp-operator
├── pencil-modern-ui
├── pencil-b2b-sites
└── pencil-design-system
```

## Что делает каждый skill

`pencil-os` — главный роутер. Срабатывает на Pencil, `.pen`, canvas, дизайн в Pencil, Pencil MCP, Pencil CLI, export из Pencil. Определяет режим задачи и подключает нужный профильный skill.

`pencil-mcp-operator` — безопасная работа с `.pen` через Pencil MCP: editor state, selection, batch get/design, layout snapshot, screenshot, variables, export.

`pencil-modern-ui` — современный UI-дизайн: композиция, типографика, spacing, карточки, формы, состояния, shadcn/Radix-паттерны, Heroicons, anti-AI-slop.

`pencil-b2b-sites` — коммерческие B2B-сайты и лендинги: Hero, CTA, формы, карточки, каталог, доверие, процесс, FAQ, mobile UX.

`pencil-design-system` — дизайн-система: `DESIGN_SYSTEM.md`, tokens, variables, naming, lint, export/handoff.

## Установка в Codex

1. Найдите вашу пользовательскую папку Codex skills.

Windows:

```powershell
$skills = "$env:USERPROFILE\.codex\skills"
New-Item -ItemType Directory -Force -Path $skills
```

macOS/Linux:

```bash
mkdir -p ~/.codex/skills
```

2. Скопируйте Pencil skills.

Windows из корня этого репозитория:

```powershell
Copy-Item -Recurse -Force ".\codex-template\skills\pencil-*" "$env:USERPROFILE\.codex\skills\"
```

macOS/Linux из корня этого репозитория:

```bash
cp -R ./codex-template/skills/pencil-* ~/.codex/skills/
```

3. Перезапустите Codex / IDE extension / CLI session.

4. Проверьте, что skills появились в списке доступных навыков.

## Рекомендуемые фразы запуска

```text
Создай дизайн в Pencil по этому брифу.
Открой активный .pen и проверь canvas.
Поправь Hero в Pencil и сделай его современнее.
Собери B2B-лендинг в Pencil: Hero, форма, trust, процесс, FAQ.
Проверь дизайн-систему в Pencil: tokens, variables, export.
```

## Как должен работать сценарий

1. Пользователь даёт бриф, текст, задачу или открывает `.pen`.
2. `pencil-os` определяет режим.
3. Если открыт `.pen`, агент начинает с `get_editor_state({ include_schema: true })`.
4. Для визуальной задачи подключается `pencil-modern-ui`.
5. Для B2B/лендинга подключается `pencil-b2b-sites`.
6. Для tokens/export/lint подключается `pencil-design-system`.
7. После правок агент проверяет layout и screenshot.

## Важные правила безопасности

- `.pen` не читать и не править обычными файловыми командами.
- Работать с `.pen` через Pencil UI, Pencil MCP или Pencil CLI.
- `PENCIL_CLI_KEY` не хранить в этом репозитории.
- Секреты хранить в Doppler, 1Password, Bitwarden или другом secrets manager.

## Настройка Pencil

Сначала выполните чек-лист:

```text
docs/08-pencil-setup.md
```

Он описывает регистрацию, VS Code workflow, MCP, CLI и хранение `PENCIL_CLI_KEY`.
