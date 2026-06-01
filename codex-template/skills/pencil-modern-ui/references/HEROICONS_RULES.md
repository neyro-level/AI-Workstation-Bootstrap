# Heroicons Rules

Источник: https://github.com/tailwindlabs/heroicons

Heroicons - базовый MIT-набор SVG-иконок для чистого UI без визуального шума.

## Размеры

- `24/outline` - nav, toolbar, крупные icon buttons.
- `24/solid` - сильные статусы или акцентные действия.
- `20/solid` - компактные кнопки, меню, list items.
- `16/solid` - таблицы, маленькие метки, статусы.

## Правила

- Один набор иконок на макет.
- Иконки наследуют token color / currentColor.
- Не использовать иконки вместо смысла.
- Не делать разный stroke внутри одного toolbar.
- Icon button должен иметь понятный tap/click area.
- Не смешивать outline и solid случайно: solid обычно для выбранного/активного/статуса.
