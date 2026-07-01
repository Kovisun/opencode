# OpenCode + Telegram Bot

Single-container deployment running [OpenCode](https://opencode.ai/) and [@grinev/opencode-telegram-bot](https://www.npmjs.com/package/@grinev/opencode-telegram-bot) together.

## Quick Start

1. Copy `.env.example` to `.env` and fill in your values:
   - `TELEGRAM_BOT_TOKEN` - from [@BotFather](https://t.me/BotFather)
   - `TELEGRAM_ALLOWED_USER_ID` - your Telegram user ID
   - `HTTPS_PROXY` / `TELEGRAM_PROXY_URL` - proxy for Telegram API (if needed)

2. Start the container:
   ```bash
   docker compose up -d
   ```

3. Check logs:
   ```bash
   docker compose logs -f
   ```

## Environment Variables

See `.env.example` for all available variables.

## Build

To rebuild the image:
```bash
docker build -t ghcr.io/kovisun/opencode-telegram:latest build/
```
