#!/bin/sh
set -e

opencode web --hostname 0.0.0.0 --port 3000 &
OPENCODE_PID=$!

opencode-telegram start &
TELEGRAM_PID=$!

trap "kill $OPENCODE_PID $TELEGRAM_PID 2>/dev/null; exit" INT TERM

wait $TELEGRAM_PID
kill $OPENCODE_PID 2>/dev/null
