---
name: pencil-modern-ui
description: "Modern UI skill для Pencil: современный визуальный дизайн, композиция, типографика, spacing, кнопки, карточки, формы, таблицы, модалки, состояния, shadcn/ui, Radix patterns, Heroicons, anti-AI-slop. Использовать, когда пользователь просит: сделать красивее, современнее, аккуратнее, премиальнее, нарисовать UI в Pencil, улучшить visual design, убрать визуальный шум, подобрать иконки, сделать интерфейсные компоненты."
---

# Pencil Modern UI

Этот skill отвечает за визуальное качество интерфейса в Pencil.

Он не заменяет `DESIGN_SYSTEM.md`, UX-скилл и MCP-оператор. Он помогает рисовать современно, компонентно и без AI-slop.

## Перед дизайном

Проверь:

1. Есть ли `DESIGN_SYSTEM.md`.
2. Есть ли активный `.pen` и variables.
3. Какую задачу решает экран/блок.
4. Это сайт, интерфейс, форма, каталог, dashboard или презентационный блок.

Если работа идет в реальном `.pen`, все изменения выполняет `pencil-mcp-operator`.

## Базовый workflow

1. Skeleton: сетка, frame, зоны, hierarchy.
2. Content: реальные заголовки, CTA, поля, состояния.
3. Visual system: tokens, type scale, spacing, radius, borders.
4. Components: выбрать паттерны shadcn/Radix.
5. Icons: Heroicons или проектная библиотека.
6. QA: layout, contrast, states, screenshot.

## Компонентное мышление

Рисуй не прямоугольники, а компоненты:

- Button: primary, secondary, ghost, icon, disabled, loading.
- Card: header, title, description, content, footer.
- Form: label, input, hint, error, required, submit.
- Dialog: title, body, actions, close.
- Sheet/Drawer: panel, header, content, footer.
- Tabs: list, triggers, panels.
- Table: header, row, cell, empty/loading state.
- Badge: status, category, filter chip.
- Alert: warning, success, error, info.
- Empty state: title, text, action, optional visual.

Если у компонента в реальном интерфейсе есть состояния, нарисуй или зафиксируй их.

## Визуальные правила

- Не использовать случайные градиенты, glow, glassmorphism, bokeh, декоративные blobs.
- Карточки не вкладывать в карточки.
- Радиус карточек по умолчанию до 8px, если дизайн-система не говорит иначе.
- Кнопки должны выглядеть как действия, а не декоративные плашки.
- Сетка важнее украшений.
- Один экран не должен быть одной сплошной заливкой одного цвета.
- Текст не должен упираться в края.
- Иерархия должна читаться за 3 секунды.
- Mobile touch target: минимум 44px.
- Desktop compact controls: не меньше 24px.

## Типографика

- H1/Hero: крупно, но без ломки строки на бессмысленные фрагменты.
- H2: меньше hero-scale, особенно внутри compact panels.
- Body: 14-18px, line-height около 1.5.
- Caption/meta: 10-12px, только для вторичной информации.
- Не масштабировать font-size от viewport width.
- Не использовать отрицательный letter-spacing, если проектная система это не задает.

## Иконки

Heroicons - базовый источник, если нет проектной библиотеки:

- `24/outline` - основные действия, toolbar, nav.
- `20/solid` - компактные действия, меню, статусы.
- `16/solid` - таблицы, метки, мелкие статусы.

Иконки не должны быть декором без смысла. Они поддерживают действие, статус или навигацию.

## Anti-AI-slop

Не предлагай:

- абстрактные 3D-объекты вместо смысла;
- одинаковые карточки преимуществ с пустыми иконками;
- фейковые dashboard-блоки на коммерческой странице;
- центрированный H2 в каждом блоке;
- слабые CTA типа "Подробнее" без контекста;
- случайные тени, градиенты, glass effects.

## Когда открыть references

- `references/PENCILPLAYBOOK_ADAPTED.md` - если нужна глубокая визуальная полировка.
- `references/SHADCN_RADIX_PATTERNS.md` - если рисуются компоненты, формы, модалки, tabs, таблицы.
- `references/HEROICONS_RULES.md` - если используются иконки.
