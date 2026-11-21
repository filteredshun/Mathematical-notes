# Mathematical Notes

A Quartz-powered collection of mathematical lecture notes.

## Current note
- [Good Reduction and the Formal Generic Fibre](content/good-reduction-locus.md) — first test chapter for the Anticanonical Tower.

## Develop locally
Run `bash scripts/build.sh` (requires git, Node.js 22, npm, Python 3). The script checks out upstream Quartz and builds the content.

## Publish
Under **Settings → Pages**, choose **GitHub Actions** as the source, if GitHub Pages is available for this repository. The repository remains private unless you change it, but a Pages website may be publicly accessible even for a private repository. Only publish material you intend to make public.

Quartz renders Obsidian-style theorem callouts and foldable proof/remark sections. Styles live in `assets/math-notes.scss`.
