#!/usr/bin/env bash

set -Eeuo pipefail
IFS=$'\n\t'

trap 'echo "[ERROR] Line $LINENO: $BASH_COMMAND" >&2' ERR

require() {
  command -v "$1" >/dev/null 2>&1 || {
    echo "[FATAL] Missing dependency: $1"
    exit 1
  }
}

require git
require gh
require ssh

echo "=== GitHub Authentication ==="

gh auth status

echo
echo "=== Git User ==="

git config --get user.name
git config --get user.email

echo
echo "=== SSH Authentication ==="

ssh -T git@github.com || true

echo
echo "[OK] Authentication checks completed"
