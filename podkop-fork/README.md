# Podkop Installer (с ключом выбора)

Скрипт `install.sh`:

- ставит Podkop (`itdoginfo/podkop`),
- подключает ваши списки из `https://github.com/wester11/ru-net-blacklist`,
- умеет принимать ключ выбора сервисов/списков (`PODKOP_KEY` или `--key`),
- выводит благодарность автору Podkop.

## Установка без ключа

```sh
sh <(wget -O - https://raw.githubusercontent.com/wester11/ru-net-blacklist/main/podkop-fork/install.sh)
```

По умолчанию подключатся:
- `lists/all_services`
- `lists/social_messaging`
- `lists/ai_all`

## Установка с ключом

```sh
PODKOP_KEY='ВАШ_КЛЮЧ' sh <(wget -O - https://raw.githubusercontent.com/wester11/ru-net-blacklist/main/podkop-fork/install.sh)
```

или:

```sh
sh <(wget -O - https://raw.githubusercontent.com/wester11/ru-net-blacklist/main/podkop-fork/install.sh) --key 'ВАШ_КЛЮЧ'
```

Ключ можно сгенерировать в `selector/index.html`.
