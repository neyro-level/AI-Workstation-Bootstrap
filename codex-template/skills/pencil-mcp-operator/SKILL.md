---
name: pencil-mcp-operator
description: "Операционный skill Pencil MCP/CLI. Использовать для открытия, чтения, правки, проверки и экспорта .pen через Pencil MCP: get_editor_state, get_guidelines, batch_get, batch_design, snapshot_layout, get_screenshot, get_variables, set_variables, export_nodes. Триггеры: Pencil MCP, .pen, открыть .pen, active selection, canvas, batch_design, snapshot_layout, screenshot, export, Pencil CLI, PENCIL_CLI_KEY. .pen файлы никогда не читать shell-командами."
---

# Pencil MCP Operator

Этот skill отвечает только за техническую работу с Pencil: как безопасно читать, менять и проверять `.pen`.

## Главное правило

`.pen` файлы нельзя читать, grep-ить, парсить или менять обычными файловыми командами. Работай только через Pencil MCP.

Можно искать имена `.pen` файлов по файловой системе, но нельзя читать их содержимое.

## Доступные инструменты

Используй только актуальные Pencil MCP tools:

- `get_editor_state`
- `get_guidelines`
- `batch_get`
- `batch_design`
- `snapshot_layout`
- `get_screenshot`
- `get_variables`
- `set_variables`
- `export_nodes`

## Старт каждого Pencil MCP сценария

Первый вызов всегда:

```json
{ "include_schema": true }
```

для `get_editor_state`.

После этого зафиксируй:

- открыт ли активный `.pen`;
- selection;
- доступную schema;
- node ids, если они есть;
- задачу пользователя.

Если ответ: `A file needs to be open in the editor`, значит MCP живой, но активный `.pen` не открыт. Скажи пользователю открыть нужный файл в VS Code/Pencil.

## Как выбирать инструмент

`get_editor_state` - первый вызов, состояние редактора, selection, schema.

`get_guidelines` - перед созданием нового экрана, компонента, секции или style-guide элемента.

`batch_get` - чтение node tree, текста, свойств, изображений, нескольких node id.

`batch_design` - создание и изменение frames, text, images, styles, constraints, layout, components.

`snapshot_layout` - геометрия, вложенность, проблемы layout, пересечения, размеры.

`get_screenshot` - визуальная проверка конкретного frame после правок.

`get_variables` - прочитать Pencil variables перед визуальными изменениями.

`set_variables` - добавить/обновить variables после сверки с `DESIGN_SYSTEM.md`.

`export_nodes` - экспорт результатов для handoff, клиента, документации или сайта.

## Batch-дисциплина

- Не отправляй огромные правки вслепую.
- Для сложных экранов сначала skeleton, потом content, потом visual polish.
- Делай небольшие партии операций.
- После каждой крупной партии проверяй `snapshot_layout`.
- После визуально значимой правки проверяй `get_screenshot`.

## Типовые сценарии

### Аудит

1. `get_editor_state({ include_schema: true })`.
2. `snapshot_layout(maxDepth: 2)`.
3. `snapshot_layout(problemsOnly: true)`.
4. `get_screenshot` для выбранного frame, если нужен визуальный вывод.

### Правка selection

1. Получить selection.
2. Прочитать selection через `batch_get`.
3. Если визуал - проверить variables.
4. Внести правку через `batch_design`.
5. Проверить layout и screenshot.

### Создание нового frame

1. Получить schema/guidelines.
2. Найти свободную область через `snapshot_layout(maxDepth: 0)`.
3. Создать frame.
4. Добавить skeleton.
5. Заполнить content.
6. Проверить layout.

### Export

1. Уточнить node id или selection.
2. Проверить, что frame не сломан.
3. `export_nodes` в нужном формате.
4. Сообщить путь/результат без лишних деталей.

## Pencil CLI

Основной рабочий путь пользователя: VS Code + Pencil extension + Pencil MCP.

Pencil CLI - дополнительный слой:

- headless generation;
- batch export;
- fallback;
- CI/CD;
- автоматизация.

Секрет CLI хранится только в Doppler/environment:

- имя: `PENCIL_CLI_KEY`;
- не печатать значение;
- не коммитить;
- не писать в markdown.

Пример запуска через Doppler:

```powershell
doppler run --project your-project --config prd -- pencil status
```

## Когда открыть references

- `references/PENCIL_MCP_TOOLS.md` - если нужно выбрать конкретный tool или порядок вызовов.
- `references/PENCIL_CLI_SETUP.md` - если задача про CLI, ключи, Doppler или установку.
