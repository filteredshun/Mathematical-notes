#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
BUILD_DIR="${BUILD_DIR:-$ROOT/.quartz-build}"
if [[ ! -d "$BUILD_DIR/.git" ]]; then
  git clone --depth 1 --branch v4.5.2 https://github.com/jackyzha0/quartz.git "$BUILD_DIR"
fi
mkdir -p "$BUILD_DIR/content"
rm -rf "$BUILD_DIR/content"/*
cp -R "$ROOT/content/." "$BUILD_DIR/content/"
cp "$ROOT/assets/math-notes.scss" "$BUILD_DIR/quartz/styles/math-notes.scss"
python3 - "$BUILD_DIR" <<'PY'
from pathlib import Path
import sys
root=Path(sys.argv[1])
style=root/'quartz/styles/custom.scss'
s=style.read_text()
if '@use "./math-notes.scss";' not in s:
    s += '\n@use "./math-notes.scss";\n'
style.write_text(s)
config=root/'quartz.config.ts'
s=config.read_text()
s=s.replace('pageTitle: "Quartz 4",', 'pageTitle: "Perfectoid Siegel Variety",')
s=s.replace('baseUrl: "quartz.jzhao.xyz",', 'baseUrl: "filteredshun.github.io/Mathematical-notes",')
config.write_text(s)
PY
cd "$BUILD_DIR"
npm ci
npx quartz build
