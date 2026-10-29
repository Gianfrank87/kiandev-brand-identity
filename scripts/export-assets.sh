#!/usr/bin/env bash
set -euo pipefail
mkdir -p assets/png/{symbol,horizontal,stacked,monochrome} assets/favicon
for size in 256 512 1024 2048; do
  inkscape assets/svg/kiandev-symbol.svg --export-type=png --export-width=$size --export-filename=assets/png/symbol/kiandev-symbol-${size}.png
  inkscape assets/svg/kiandev-logo-horizontal.svg --export-type=png --export-width=$size --export-filename=assets/png/horizontal/kiandev-logo-horizontal-${size}.png
  inkscape assets/svg/kiandev-logo-monochrome-white.svg --export-type=png --export-width=$size --export-filename=assets/png/monochrome/kiandev-logo-white-${size}.png
  inkscape assets/svg/kiandev-logo-monochrome-dark.svg --export-type=png --export-width=$size --export-filename=assets/png/monochrome/kiandev-logo-dark-${size}.png
done
for size in 512 1024 2048; do
  inkscape assets/svg/kiandev-logo-stacked.svg --export-type=png --export-width=$size --export-filename=assets/png/stacked/kiandev-logo-stacked-${size}.png
done
for size in 16 32 180 192 512; do
  inkscape assets/favicon/favicon.svg --export-type=png --export-width=$size --export-height=$size --export-filename=assets/favicon/favicon-${size}.png
done
