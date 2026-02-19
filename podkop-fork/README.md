# Podkop + ваши списки

`install.sh` ставит Podkop и сразу подключает списки из:

`https://github.com/wester11/ru-net-blacklist`

## Что уже настроено в скрипте

- Podkop пакеты: `itdoginfo/podkop` (оригинальный репозиторий)
- Списки: `https://raw.githubusercontent.com/wester11/ru-net-blacklist/main/lists`
- Конфиг Podkop: `https://raw.githubusercontent.com/itdoginfo/podkop/main/podkop/files/etc/config/podkop`

## Команда установки на роутере

```sh
sh <(wget -O - https://raw.githubusercontent.com/wester11/ru-net-blacklist/main/podkop-fork/install.sh)
```

## Что скрипт добавляет в Podkop

В `podkop.main` автоматически добавляются remote-списки:

- `lists/all_services`
- `lists/social_messaging`
- `lists/ai_all`

## Благодарность

Скрипт выводит:

- `Thanks to the original Podkop author and project: https://github.com/itdoginfo/podkop`
- `Спасибо создателю Podkop: https://github.com/itdoginfo/podkop`
