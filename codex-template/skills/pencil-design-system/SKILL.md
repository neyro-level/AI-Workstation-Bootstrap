---
name: pencil-design-system
description: "Design-system skill для Pencil: DESIGN_SYSTEM.md, tokens, variables, цвета, типографика, spacing, радиусы, тени, компоненты, naming, lint, consistency, export/handoff. Использовать, когда нужно перенести дизайн-систему в Pencil, проверить variables, создать токены, провести visual/design lint или подготовить макет к реализации."
---

# Pencil Design System

Этот skill отвечает за связь проектной дизайн-системы и Pencil.

## Главный источник

`DESIGN_SYSTEM.md` главнее любых вкусовых правил.

Если файл не найден:

1. Найди ближайший дизайн-документ проекта.
2. Если его нет, спроси пользователя или пометь дизайн как гипотезу.
3. Не создавай новую визуальную систему молча.

## Перед изменениями

1. Прочитай `DESIGN_SYSTEM.md`.
2. Через `pencil-mcp-operator` получи `get_variables`.
3. Сопоставь tokens проекта и Pencil variables.
4. Определи, чего не хватает.
5. Только потом меняй variables через `set_variables`.

## Token map

Минимальные группы:

- colors: primary, accent, background, surface, border, text, muted, success, warning, error;
- typography: font family, base size, heading sizes, line height;
- spacing: 4/8/12/16/24/32/48/64;
- radius: small, medium, large;
- shadow/elevation, если есть;
- layout: container, grid, sidebar, content width.

## Naming

Имена должны помогать handoff:

- `Page / Section / Component / State`;
- `Hero / Desktop`;
- `Hero / Mobile`;
- `Lead Form / Default`;
- `Lead Form / Error`;
- `Catalog Card / Default`;

Не оставлять важные nodes с именами `Frame 123`, `Rectangle 88`, если они нужны для дальнейшей работы.

## Design lint

Проверяй:

- цвета из tokens или объяснимые исключения;
- одинаковые spacing scale;
- единые радиусы;
- типографическую иерархию;
- contrast;
- touch targets;
- focus/error/disabled states;
- отсутствие one-off styles;
- соответствие `DESIGN_SYSTEM.md`.

## Export / handoff

Перед export:

1. Проверить frame names.
2. Проверить layout problems.
3. Сделать screenshot.
4. Экспортировать нужные nodes.
5. В ответе указать, что экспортировано и для чего.

## Когда открыть references

- `references/TOKENS_VARIABLES_LINT.md` - при работе с variables и проверке consistency.
- `references/EXPORT_HANDOFF.md` - перед передачей макета в Astro/Tilda/клиентскую проверку.
