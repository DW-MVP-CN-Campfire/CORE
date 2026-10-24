#!/usr/bin/env bash

echo "=== GitHub Authentication ==="
gh auth status

echo
echo "=== Git User ==="
git config user.name
git config user.email

echo
echo "=== SSH Test ==="
ssh -T git@github.com || true
