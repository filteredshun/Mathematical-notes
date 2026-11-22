# Mathematical Notes

A Quartz-powered collection of mathematical lecture notes.

## Perfectoid Siegel Variety

This is the current main note project. **Anticanonical Tower** is a section within it.

- [Siegel Modular Varieties and Level Structures](content/perfectoid-siegel-variety/anticanonical-tower/siegel-modular-varieties.md) — including the good-reduction locus, formal generic fibres and the affine/projective-line examples.
- [Ordinary Locus](content/perfectoid-siegel-variety/anticanonical-tower/ordinary-locus.md) — relative Frobenius, Verschiebung, the Hasse invariant and ordinary neighborhoods.
- Future sections: canonical subgroups, anticanonical levels and perfectoid limit.

## Develop locally
Run `bash scripts/build.sh` (requires git, Node.js 22, npm, Python 3). The script checks out upstream Quartz and builds the content.

## Publish
Under **Settings → Pages**, choose **GitHub Actions** as the source. Publishing the website is separate from the repository's visibility; only publish material intended for public viewing.

Quartz renders Obsidian-style theorem callouts and foldable proof/remark sections. Styles live in `assets/math-notes.scss`.

Every push to `main` triggers a Pages rebuild.
