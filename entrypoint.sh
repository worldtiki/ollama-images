#!/bin/sh
set -u

SERVE_PID=""

shutdown() {
  [ -n "$SERVE_PID" ] && kill -TERM "$SERVE_PID" 2>/dev/null
  wait "$SERVE_PID" 2>/dev/null
  exit 0
}
trap shutdown TERM INT

ollama serve &
SERVE_PID=$!

i=0
until ollama list >/dev/null 2>&1; do
  i=$((i + 1))
  if [ "$i" -gt 180 ]; then
    echo "[warmup] ollama serve did not become ready after 180s" >&2
    break
  fi
  sleep 1
done

if [ -n "${WARMUP_MODEL:-}" ]; then
  echo "[warmup] priming ${WARMUP_MODEL}" >&2
  if ollama run "$WARMUP_MODEL" "hi" >/dev/null 2>&1; then
    echo "[warmup] ready" >&2
  else
    echo "[warmup] failed (non-fatal)" >&2
  fi
fi

wait "$SERVE_PID"
