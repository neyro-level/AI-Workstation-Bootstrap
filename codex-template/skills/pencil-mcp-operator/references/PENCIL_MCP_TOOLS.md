# Pencil MCP Tools

## Безопасность `.pen`

`.pen` - закрытый дизайн-файл. Не использовать:

- `Get-Content`;
- `Select-String`;
- Python read;
- hex/JSON parsing;
- ручные файловые правки.

## Чтение

Начинать с:

```json
get_editor_state({ "include_schema": true })
```

Затем:

- selection есть: читать selection;
- selection нет: `snapshot_layout(maxDepth: 0..2)`;
- нужен конкретный блок: `batch_get` по node id.

## Изменение

Перед `batch_design` понять:

- какой node меняется;
- какие свойства разрешены schema;
- есть ли tokens;
- не требуется ли сохранить существующую иерархию.

## Проверка

После правки:

1. `snapshot_layout(problemsOnly: true)`.
2. `get_screenshot` для визуального frame.
3. Если проблемы - исправить, не оставлять пользователю "почти готово".
