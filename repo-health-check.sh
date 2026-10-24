#!/usr/bin/env bash
set -euo pipefail

echo "== Demandable Repository Health Check =="

required_files=(
  README.md
  LICENSE
  CONTRIBUTING.md
  CODE_OF_CONDUCT.md
  SECURITY.md
  CHANGELOG.md
  ROADMAP.md
  GOVERNANCE.md
  TRADEMARKS.md
)

missing_count=0

for file in "${required_files[@]}"; do
  if [[ ! -f "$file" ]]; then
    echo "❌ Missing: $file"
    missing_count=$((missing_count + 1))
  else
    echo "✅ OK: $file"
  fi
done

echo
echo "Git Status:"
git status --short || true

echo
echo "Remote:"
git remote -v || true

echo
echo "Current Branch:"
git branch --show-current || true

echo
echo "Latest Commit:"
git log -1 --oneline || true

echo
if (( missing_count > 0 )); then
  echo "Repository Health Check Complete: FAILED ($missing_count missing required file(s))"
  exit 1
fi

echo "Repository Health Check Complete: PASSED"
