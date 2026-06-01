# Secrets with Doppler

Doppler — рекомендуемый способ хранить API-ключи и токены.

## Шаги

1. Зарегистрируйтесь в Doppler.
2. Создайте workspace.
3. Создайте project.
4. Создайте environments: `dev`, `prod`.
5. Добавьте секреты.
6. Установите Doppler CLI.
7. Авторизуйтесь.
8. Проверяйте доступ командой:

```powershell
doppler secrets
```

## Примеры переменных

```text
OPENAI_API_KEY
GITHUB_TOKEN
VERCEL_TOKEN
FIRECRAWL_API_KEY
TAVILY_API_KEY
```

Реальные значения не должны попадать в git.

