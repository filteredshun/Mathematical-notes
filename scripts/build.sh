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
s=s.replace('pageTitle: "Quartz 4",', 'pageTitle: "Mathematical Notes",')
s=s.replace('baseUrl: "quartz.jzhao.xyz",', 'baseUrl: "filteredshun.github.io/Mathematical-notes",')
# Social preview images are optional. Quartz's CustomOgImages emitter fetches
# remote fonts during the build; intermittent failures there must not block
# publication of the mathematical notes. Keep the regular page/font styling.
s=s.replace('      Plugin.CustomOgImages(),\n', '')
config.write_text(s)

# Match the Explorer order to the seminar notes' logical order.
# Quartz serializes the sort function to client-side JavaScript, so the
# callback must be self-contained (no external variables).
layout=root/'quartz.layout.ts'
layout_source=layout.read_text()
explorer='''Component.Explorer({
      sortFn: (a, b) => {
        const notesDir = "perfectoid-siegel-variety/anticanonical-tower/";
        const rank = ["siegel-modular-varieties", "ordinary-locus", "overconvergent-locus"];
        if (!a.isFolder && !b.isFolder &&
            a.slug.startsWith(notesDir) && b.slug.startsWith(notesDir)) {
          const ai = rank.indexOf(a.slugSegment);
          const bi = rank.indexOf(b.slugSegment);
          if (ai >= 0 && bi >= 0) return ai - bi;
          if (ai >= 0) return -1;
          if (bi >= 0) return 1;
        }
        if (a.isFolder !== b.isFolder) return a.isFolder ? -1 : 1;
        return a.displayName.localeCompare(b.displayName, undefined, {
          numeric: true, sensitivity: "base"
        });
      },
    })'''
expected=layout_source.count('Component.Explorer(),')
if expected != 2:
    raise RuntimeError(f'Expected 2 Explorer components, found {expected}')
layout_source=layout_source.replace('Component.Explorer(),', explorer)
layout.write_text(layout_source)
PY
cd "$BUILD_DIR"
npm ci
npx quartz build

# Quartz Explorer reads static/contentIndex.json through a browser fetch.
# Version its URL on every GitHub Pages deployment to avoid stale sidebar
# listings when a page has already been published with a fresh URL.
python3 - "$BUILD_DIR" <<'PY'
from pathlib import Path
import os, sys
root=Path(sys.argv[1])
revision=os.environ.get('GITHUB_SHA', 'local')[:12]
changed=0
for html in (root/'public').rglob('*.html'):
    original=html.read_text()
    updated=original.replace(
        'static/contentIndex.json")',
        f'static/contentIndex.json?revision={revision}")',
    )
    if updated != original:
        html.write_text(updated)
        changed += 1
if not changed:
    raise RuntimeError('Could not find content-index URLs in built HTML')
print(f'Cache-busted content index in {changed} HTML pages using revision {revision}')
PY
