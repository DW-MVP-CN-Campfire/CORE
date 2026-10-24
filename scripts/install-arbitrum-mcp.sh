#!/usr/bin/env bash

set -Eeuo pipefail
IFS=$'\n\t'

trap 'echo "[ERROR] Line $LINENO: $BASH_COMMAND" >&2' ERR

readonly IMAGE="dewanshparashar/arbitrum-mcp"

if ! command -v docker >/dev/null 2>&1; then
  echo "[FATAL] Missing dependency: docker" >&2
  exit 1
fi

echo "=== Installing Arbitrum MCP server ==="
docker pull "$IMAGE"

echo
echo "[OK] Pulled $IMAGE"
echo "Use the server config in .mcp/arbitrum-mcp.json with your MCP client."
