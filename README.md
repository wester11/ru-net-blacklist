# Lists Proxy

Списки доменов и подсетей (`.srs`) для прокси и маршрутизации.

## Структура проекта

- `services/` - все одиночные сервисы (каждый сервис в своей папке)
- `lists/` - агрегированные списки, где объединено сразу несколько сервисов
- `scripts/` - служебные скрипты

Каждая папка сервиса и списка содержит:

- `domains.srs` - домены
- `subnets.srs` - IPv4/IPv6 CIDR
- `services.txt` - только для агрегированных списков в `lists/`

## Папка `services/`

В `services/` лежат отдельные сервисы, например:
`telegram`, `facebook`, `whatsapp`, `tiktok`, `youtube`, `chatgpt`, `claude`, `cursor` и другие.

## Папка `lists/` (готовые наборы)

- `ai_all`
  - входит: `chatgpt`, `claude`, `cursor`, `gemini`, `perplexity`, `midjourney`, `microsoft_copilot`
- `social_networks`
  - входит: `facebook`, `instagram`, `x_twitter`, `linkedin`, `tiktok`, `snapchat`
- `messengers_calls`
  - входит: `telegram`, `whatsapp`, `signal`, `viber`, `discord`, `protonmail`, `facetime`
- `social_messaging`
  - входит: `telegram`, `whatsapp`, `facebook`, `instagram`, `x_twitter`, `linkedin`, `tiktok`, `snapchat`, `discord`, `signal`, `viber`
- `video_audio_streaming`
  - входит: `youtube`, `twitch`, `spotify`, `dailymotion`, `soundcloud`
- `news_media`
  - входит: `bbc`, `cnn`, `associated_press`, `wsj`, `radio_svoboda`, `euronews`, `meduza`, `dw`, `google_news`
- `creator_platforms`
  - входит: `patreon`, `envato`, `canva`, `metacritic`, `soundcloud`
- `gaming`
  - входит: `roblox`, `metacritic`
- `all_services`
  - входит: все сервисы из папки `services/`
