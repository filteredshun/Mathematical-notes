# Mathematical Notes

A Quartz-powered collection of mathematical lecture notes.

## Perfectoid Siegel Variety

This is the current main note project. **Anticanonical Tower** is a section within it.

- [Good Reduction and the Formal Generic Fibre](content/good-reduction-locus.md) — first completed subsection in the anticanonical tower material.
- Future subsections: relative Frobenius, Hasse invariant, canonical subgroups, anticanonical levels, and perfectoid limit.

## Develop locally
Run `bash scripts/build.sh` (requires git, Node.js 22, npm, Python 3). The script checks out upstream Quartz and builds the content.

## Publish
Under **Settings → Pages**, choose **GitHub Actions** as the source. Publishing the website is separate from the repository's visibility; only publish material intended for public viewing.

Quartz renders Obsidian-style theorem callouts and foldable proof/remark sections. Styles live in `assets/math-notes.scss`.

Every push to `main` triggers a Pages rebuild.
