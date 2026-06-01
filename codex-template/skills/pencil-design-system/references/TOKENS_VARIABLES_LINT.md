# Tokens, Variables, Lint

## Сопоставление tokens

| Project token | Pencil variable | Check |
| --- | --- | --- |
| primary | color/primary | CTA, links, accents |
| background | color/background | page base |
| surface | color/surface | cards, panels |
| border | color/border | separators |
| text | color/text | primary copy |
| muted | color/muted | captions |
| radius-md | radius/medium | cards/buttons |
| spacing-4 | spacing/4 | small gaps |
| spacing-8 | spacing/8 | base rhythm |

## Линт

- Raw hex допускается только при миграции или явном исключении.
- Если 3+ одинаковых значения повторяются, нужен token.
- Новый token должен иметь смысловую роль, не название по цвету ради цвета.
- Не плодить `primary-2`, `primary-new`, `blue-final`.
