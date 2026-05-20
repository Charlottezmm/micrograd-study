#!/usr/bin/env bash

set -euo pipefail

REMOTE_HOST="${1:-${REMOTE_HOST:-}}"
REMOTE_USER="${2:-${REMOTE_USER:-}}"
LOCAL_PORT="${LOCAL_PORT:-8888}"
REMOTE_PORT="${REMOTE_PORT:-8888}"

if [[ -z "$REMOTE_HOST" || -z "$REMOTE_USER" ]]; then
  echo "Usage: $0 <remote-host> <remote-user>" >&2
  echo "Example: $0 192.168.1.20 charlotte" >&2
  exit 1
fi

echo "ssh -L ${LOCAL_PORT}:127.0.0.1:${REMOTE_PORT} ${REMOTE_USER}@${REMOTE_HOST}"
