# Lists Proxy

Curated domain and subnet lists for services that are often blocked, throttled, or restricted.

## Structure

Each service has its own directory:

- `domains.srs` - domains for SNI/domain-based routing rules
- `subnets.srs` - IPv4/IPv6 CIDR ranges for IP-based rules

Example:

```text
service_name/
  domains.srs
  subnets.srs
```

## Categories in this repo

- AI tools: `chatgpt`, `claude`, `cursor`, `gemini`, `perplexity`, `midjourney`, `microsoft_copilot`, plus aggregate folder `ai_services`
- Social networks: `facebook`, `instagram`, `x_twitter`, `linkedin`, `tiktok`, `snapchat`
- Messengers and calls: `telegram`, `whatsapp`, `signal`, `viber`, `discord`, `protonmail`, `facetime`
- Video and streaming: `youtube`, `twitch`, `spotify`, `dailymotion`
- Media and news: `bbc`, `cnn`, `associated_press`, `wsj`, `radio_svoboda`, `euronews`, `meduza`, `dw`, `google_news`
- Creator/content services: `patreon`, `soundcloud`, `envato`, `metacritic`, `roblox`, `canva`

## Notes

- Lists are intended as practical routing/proxy datasets and can be expanded over time.
- Some services use CDNs and cloud providers; subnet lists may include shared infrastructure ranges.
- Verify and tune lists for your own policy and region.

## Quick update workflow

1. Edit `domains.srs` and `subnets.srs` inside a service folder.
2. Add missing service folders using the same structure.
3. Optionally merge common entries into `general/`.
