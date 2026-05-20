#!/usr/bin/env bash

set -euo pipefail

PID_FILE="${JUPYTER_PID_FILE:-/tmp/deep-learning-study-jupyter.pid}"

if [[ ! -f "$PID_FILE" ]]; then
  echo "No PID file found at ${PID_FILE}."
  exit 0
fi

PID="$(cat "$PID_FILE")"
if [[ -z "$PID" ]]; then
  echo "PID file is empty: ${PID_FILE}" >&2
  exit 1
fi

if kill -0 "$PID" 2>/dev/null; then
  kill "$PID"
  echo "Stopped Jupyter process ${PID}."
else
  echo "Process ${PID} is not running."
fi

rm -f "$PID_FILE"
