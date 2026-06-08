#!/bin/zsh
# ============================================================
# build.sh — Veröffentlichungs-Mirror nach docs/ erzeugen
# ------------------------------------------------------------
# Kopiert die fertige index.html jedes Moduls in den docs/-Ordner.
# GitHub Pages serviert ausschließlich docs/. Arbeitsdateien
# (workbench/) bleiben außen vor.
#
# Regel: NIE direkt in docs/ editieren. Immer im Modulordner
# arbeiten, dann ./build.sh laufen lassen.
# ============================================================
set -e
cd "$(dirname "$0")"

# Übersicht wird zur Landing-Seite der Site (docs/index.html)
cp "0-uebersicht/index.html" "docs/index.html"
echo "  ✓ 0-uebersicht        → docs/index.html"

# Die vier Teile: nur kopieren, was schon existiert (inkrementell)
for d in 1-wie-funktioniert-ki 2-grenzen-und-recht 3-ki-nutzen 4-zukunft-transfer; do
  if [[ -f "$d/index.html" ]]; then
    mkdir -p "docs/$d"
    cp "$d/index.html" "docs/$d/index.html"
    echo "  ✓ $d → docs/$d/index.html"
  else
    echo "  – $d (noch keine index.html, übersprungen)"
  fi
done

echo "Fertig. Lokal testen:  cd docs && python3 -m http.server 8000"
