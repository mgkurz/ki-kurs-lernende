#!/bin/zsh
# ============================================================
# build.sh — Veröffentlichungs-Mirror nach docs/ erzeugen
# ------------------------------------------------------------
# Der Kurs ist eine einzige Single-File-Anwendung: kurs/index.html.
# GitHub Pages serviert ausschließlich docs/. Dieser Schritt kopiert
# die fertige Datei dorthin.
#
# Regel: NIE direkt in docs/ editieren. Immer in kurs/index.html
# arbeiten, dann ./build.sh laufen lassen.
# ============================================================
set -e
cd "$(dirname "$0")"

cp "kurs/index.html" "docs/index.html"
echo "  ✓ kurs/index.html → docs/index.html"
echo "Fertig. Lokal testen:  cd docs && python3 -m http.server 8000"
