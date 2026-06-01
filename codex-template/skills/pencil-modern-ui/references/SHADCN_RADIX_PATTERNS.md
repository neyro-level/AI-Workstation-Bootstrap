# shadcn/ui + Radix Patterns for Pencil

Источники:

- https://github.com/shadcn-ui/ui
- https://github.com/radix-ui/primitives

Использовать как компонентную логику для дизайна.

## Выбор компонента

- Основное действие: Button.
- Настройки 2-7 вариантов: ToggleGroup / Segmented control.
- Небольшой click-контент: Popover.
- Hover-пояснение: HoverCard / Tooltip.
- Фокусная задача: Dialog.
- Боковая панель: Sheet.
- Mobile bottom panel: Drawer.
- Опасное подтверждение: AlertDialog.
- Статус: Badge.
- Системное сообщение: Alert.
- Загрузка: Skeleton / Spinner.
- Пустое состояние: Empty.
- Навигация внутри области: Tabs.
- Раскрытие деталей: Accordion / Collapsible.

## Обязательные части

- Dialog/Sheet/Drawer: title обязателен.
- Form: label, control, hint/error.
- Card: header/content/footer по смыслу.
- Tabs: tabs list + triggers + panels.
- Avatar: fallback.
- Table: header, rows, empty/loading state.

## Состояния

Для интерактивных элементов учитывать:

- default;
- hover;
- active/pressed;
- focus;
- disabled;
- loading;
- error/success, если форма.
