# Secrets

Секреты хранить только в password/secrets manager.

Рекомендуемый вариант: Doppler.

## Что считается секретом

- API keys;
- access tokens;
- refresh tokens;
- SSH private keys;
- database URLs;
- webhook secrets;
- OAuth client secrets;
- пароли.

## Правило

В репозитории допускаются только:

- `.env.example`;
- список нужных переменных;
- инструкция, где получить ключ.

Реальные значения не коммитить.

