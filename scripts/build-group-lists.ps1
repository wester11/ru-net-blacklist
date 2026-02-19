$ErrorActionPreference = "Stop"

function Ensure-GroupFiles {
    param(
        [string]$GroupName,
        [string[]]$Services
    )

    $groupDir = Join-Path "." $GroupName
    if (-not (Test-Path $groupDir)) {
        New-Item -ItemType Directory -Path $groupDir | Out-Null
    }

    $domains = @()
    $subnets = @()

    foreach ($svc in $Services) {
        $domainsPath = Join-Path $svc "domains.srs"
        $subnetsPath = Join-Path $svc "subnets.srs"

        if (Test-Path $domainsPath) {
            $domains += Get-Content $domainsPath
        }
        if (Test-Path $subnetsPath) {
            $subnets += Get-Content $subnetsPath
        }
    }

    $domains = $domains | Where-Object { $_ -and $_.Trim().Length -gt 0 } | Sort-Object -Unique
    $subnets = $subnets | Where-Object { $_ -and $_.Trim().Length -gt 0 } | Sort-Object -Unique

    Set-Content -Path (Join-Path $groupDir "domains.srs") -Value $domains -Encoding ascii
    Set-Content -Path (Join-Path $groupDir "subnets.srs") -Value $subnets -Encoding ascii
    Set-Content -Path (Join-Path $groupDir "services.txt") -Value ($Services | Sort-Object -Unique) -Encoding ascii
}

$groups = [ordered]@{
    "group_ai_all" = @(
        "chatgpt","claude","cursor","gemini","perplexity","midjourney","microsoft_copilot"
    )
    "group_social_networks" = @(
        "facebook","instagram","x_twitter","linkedin","tiktok","snapchat"
    )
    "group_messengers_calls" = @(
        "telegram","whatsapp","signal","viber","discord","protonmail","facetime"
    )
    "group_social_messaging" = @(
        "telegram","whatsapp","facebook","instagram","x_twitter","linkedin","tiktok","snapchat","discord","signal","viber"
    )
    "group_video_audio_streaming" = @(
        "youtube","twitch","spotify","dailymotion","soundcloud"
    )
    "group_news_media" = @(
        "bbc","cnn","associated_press","wsj","radio_svoboda","euronews","meduza","dw","google_news"
    )
    "group_creator_platforms" = @(
        "patreon","envato","canva","metacritic","soundcloud"
    )
    "group_gaming" = @(
        "roblox","metacritic"
    )
}

foreach ($group in $groups.Keys) {
    Ensure-GroupFiles -GroupName $group -Services $groups[$group]
}
