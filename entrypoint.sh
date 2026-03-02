#!/bin/sh
set -eu

if [ -z "${ANTHROPIC_API_KEY:-}" ]; then
  echo "Missing ANTHROPIC_API_KEY. Set it in .env or your shell." >&2
  exit 1
fi

if [ "$#" -eq 0 ]; then
  exec claude
fi

exec claude "$@"
