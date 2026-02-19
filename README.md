# Lists Proxy

## RU

Набор списков доменов и подсетей (`.srs`) для прокси и маршрутизации сервисов.

### Формат

Каждая папка содержит:

- `domains.srs` - список доменов
- `subnets.srs` - список IPv4/IPv6 CIDR
- `services.txt` - только для групповых папок (из каких сервисов собран список)

### Одиночные сервисы

Примеры: `telegram`, `facebook`, `whatsapp`, `tiktok`, `chatgpt`, `claude`, `youtube` и т.д.

### Готовые групповые списки и состав

- `group_ai_all`
  - входит: `chatgpt`, `claude`, `cursor`, `gemini`, `perplexity`, `midjourney`, `microsoft_copilot`
- `group_social_networks`
  - входит: `facebook`, `instagram`, `x_twitter`, `linkedin`, `tiktok`, `snapchat`
- `group_messengers_calls`
  - входит: `telegram`, `whatsapp`, `signal`, `viber`, `discord`, `protonmail`, `facetime`
- `group_social_messaging`
  - входит: `telegram`, `whatsapp`, `facebook`, `instagram`, `x_twitter`, `linkedin`, `tiktok`, `snapchat`, `discord`, `signal`, `viber`
- `group_video_audio_streaming`
  - входит: `youtube`, `twitch`, `spotify`, `dailymotion`, `soundcloud`
- `group_news_media`
  - входит: `bbc`, `cnn`, `associated_press`, `wsj`, `radio_svoboda`, `euronews`, `meduza`, `dw`, `google_news`
- `group_creator_platforms`
  - входит: `patreon`, `envato`, `canva`, `metacritic`, `soundcloud`
- `group_gaming`
  - входит: `roblox`, `metacritic`

### Пересборка групп

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\build-group-lists.ps1
```

## EN

Domain and subnet (`.srs`) lists for proxy/routing setups.

### Format

Each directory contains:

- `domains.srs` - domains list
- `subnets.srs` - IPv4/IPv6 CIDR list
- `services.txt` - group folders only (source services used to build the group)

### Single-service folders

Examples: `telegram`, `facebook`, `whatsapp`, `tiktok`, `chatgpt`, `claude`, `youtube`, etc.

### Ready-to-use grouped lists and membership

- `group_ai_all`
  - includes: `chatgpt`, `claude`, `cursor`, `gemini`, `perplexity`, `midjourney`, `microsoft_copilot`
- `group_social_networks`
  - includes: `facebook`, `instagram`, `x_twitter`, `linkedin`, `tiktok`, `snapchat`
- `group_messengers_calls`
  - includes: `telegram`, `whatsapp`, `signal`, `viber`, `discord`, `protonmail`, `facetime`
- `group_social_messaging`
  - includes: `telegram`, `whatsapp`, `facebook`, `instagram`, `x_twitter`, `linkedin`, `tiktok`, `snapchat`, `discord`, `signal`, `viber`
- `group_video_audio_streaming`
  - includes: `youtube`, `twitch`, `spotify`, `dailymotion`, `soundcloud`
- `group_news_media`
  - includes: `bbc`, `cnn`, `associated_press`, `wsj`, `radio_svoboda`, `euronews`, `meduza`, `dw`, `google_news`
- `group_creator_platforms`
  - includes: `patreon`, `envato`, `canva`, `metacritic`, `soundcloud`
- `group_gaming`
  - includes: `roblox`, `metacritic`

### Rebuild grouped lists

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\build-group-lists.ps1
```
