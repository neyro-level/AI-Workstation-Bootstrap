# Pencil OS Workflows

## 1. Быстрый аудит открытого `.pen`

1. `pencil-mcp-operator`: получить editor state.
2. `snapshot_layout(maxDepth: 2)`.
3. `snapshot_layout(problemsOnly: true)`.
4. Если визуальная задача - screenshot нужного frame.
5. Выдать: что работает, что слабое, что править первым.

## 2. Правка готового блока

1. Найти selection или node.
2. Прочитать блок через `batch_get`.
3. Проверить `DESIGN_SYSTEM.md` и variables, если затронут визуал.
4. Спроектировать изменение через `pencil-modern-ui` или `pencil-b2b-sites`.
5. Внести через `batch_design`.
6. Проверить layout и screenshot.

## 3. Новый экран сайта

1. Прочитать brief/page/source docs.
2. Сформировать UX-роль экрана.
3. Сделать skeleton: frame, layout, ключевые зоны.
4. Заполнить контентом.
5. Применить tokens.
6. Проверить mobile/desktop, если есть оба варианта.
7. Сделать screenshot/export при необходимости.

## 3A. Старт из текста в чате

1. Извлечь из текста: продукт, аудиторию, цель, CTA, обязательные блоки, ограничения.
2. Если это коммерческий сайт, подключить `pencil-b2b-sites`, `design-ux`, при текстах - `copywriter`.
3. Сформировать короткое дизайн-ТЗ.
4. Предложить первый canvas-result: например Hero desktop, Hero mobile, секция формы или полный skeleton страницы.
5. Если `.pen` открыт, реализовать skeleton через MCP.
6. Если `.pen` не открыт, дать структуру и попросить открыть/создать `.pen`.

## 3B. Старт из проектных документов

1. Прочитать паспорт, worklog, page brief, architecture, design system.
2. Проверить, есть ли актуальный бриф страницы.
3. Если бриф устарел или отсутствует, обновить/создать его до дизайна.
4. Сформировать дизайн-ТЗ.
5. Перейти к skeleton-first созданию в Pencil.

## 4. Дизайн-система в Pencil

1. Найти `DESIGN_SYSTEM.md`.
2. Получить `get_variables`.
3. Сопоставить tokens проекта с variables Pencil.
4. Добавить недостающие variables только при необходимости.
5. Проверить использование tokens в ключевых frames.

## 5. Handoff в сайт

1. Проверить naming frames/components.
2. Экспортировать нужные nodes.
3. Зафиксировать размеры, spacing, states.
4. Передать build-skill: `your-site-build-skill` или `your-site-build-skill`.
