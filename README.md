# RU Net Blacklist

Готовые списки доменов и подсетей для Podkop/OpenWrt с удобным выбором нужных сервисов.

## Что внутри

- `services/` — отдельные сервисы (`domains.srs`, `subnets.srs`)
- `lists/` — агрегированные секции (AI, Игры, Соцсети и т.д.)
- `selector/` — мини-сайт для генерации ключа выбора
- `podkop-fork/` — установщик Podkop с поддержкой ключа (`PODKOP_KEY`)
- `scripts/` — утилиты обновления списков
- `docs/` — отчеты по базе
- `wiki/` — документация по кастомному Podkop

## Быстрый старт

Установка Podkop с дефолтными секциями:

```sh
sh <(wget -O - https://raw.githubusercontent.com/wester11/ru-net-blacklist/main/podkop-fork/install.sh)
```

По умолчанию подключаются:
- `all_services`
- `social_messaging`
- `ai_all`

## Выбор только нужных списков

1. Откройте `selector/index.html` (или разместите `selector/` на GitHub Pages).
2. Отметьте нужные `lists` и/или `services`.
3. Сгенерируйте ключ.
4. Установите с ключом:

```sh
PODKOP_KEY='ВАШ_КЛЮЧ' sh <(wget -O - https://raw.githubusercontent.com/wester11/ru-net-blacklist/main/podkop-fork/install.sh)
```

или:

```sh
sh <(wget -O - https://raw.githubusercontent.com/wester11/ru-net-blacklist/main/podkop-fork/install.sh) --key 'ВАШ_КЛЮЧ'
```

## Основные секции в `lists/`

- `ai_all` — AI-инструменты
- `gaming` — игры
- `social_networks` — социальные сети
- `messengers_calls` — мессенджеры и звонки
- `video_audio_streaming` — видео/аудио и стриминг
- `news_media` — новостные и медиа-ресурсы
- `developer_platforms` — сервисы для разработчиков
- `cloud_storage` — облачные хранилища

## Обновление базы списков

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\add-more-services.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\build-group-lists.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\generate-catalog.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\analyze-database.ps1
```

## Кастомный Podkop (community-списки в UI)

Подготовлен вариант форка, где ваши секции видны прямо в `Списки сообщества`, без ручного ввода внешних URL:

- исходники и изменения: `_podkop_upstream/`
- документация: `wiki/README.md`

## Благодарность

Отдельная благодарность автору Podkop:

- https://github.com/itdoginfo/podkop
