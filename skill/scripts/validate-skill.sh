#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

for f in "$ROOT_DIR/SKILL.md" "$ROOT_DIR/REFERENCE.md" "$ROOT_DIR/EXAMPLES.md"; do
  if [[ ! -f "$f" ]]; then
    echo "Missing required file: $f" >&2
    exit 1
  fi
done

echo "skill-router: basic file validation passed"
