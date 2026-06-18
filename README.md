# Künstliche Intelligenz verstehen — Grundlagenkurs (OER)

Interaktiver Grundlagenkurs zu Künstlicher Intelligenz in vier Teilen, die in einem Rutsch
durchgearbeitet werden. Der gesamte Kurs ist eine einzige datenschutzkonforme
Single-File-HTML-Anwendung ohne externe Abhängigkeiten (keine CDNs, Fonts, Tracker).
Am Kursende stehen ein gemeinsamer Lernzettel (Markdown) und eine Teilnahmebescheinigung.
Zielgruppe: Sekundarstufe II und Berufsschule.

## Aufbau

Der Kurs ist **eine** Datei: `kurs/index.html`. Sie enthält eine kurze Einführung und die vier
Teile als nacheinander freigeschaltete Abschnitte (Wie funktioniert KI? · Grenzen, Risiken und
Recht · KI richtig nutzen · Zukunft, Transfer und Abschluss). Der Ordner `docs/` ist der
**veröffentlichte Mirror** und wird per `./build.sh` erzeugt. GitHub Pages serviert ausschließlich
`docs/`.

```text
kurs/index.html      DIE Quelle — hier wird gearbeitet
docs/index.html      veröffentlichter Mirror — NICHT direkt editieren (= Kopie von kurs/)
build.sh             kopiert kurs/index.html → docs/index.html
workbench/           Material (Original, Analyse, Regeln)
  archiv-4-teile/    die ehemals getrennten Modul-Ordner (vor dem Merge), archiviert
```

## Veröffentlichen

```sh
./build.sh                  # kurs/index.html → docs/index.html spiegeln
git add -A && git commit    # Änderungen versionieren
# später: git push, dann GitHub Pages auf Branch main, Ordner /docs stellen
```

**Wichtig:** Vor jedem Veröffentlichen `./build.sh` laufen lassen, sonst ist `docs/` veraltet.
Nie direkt in `docs/` editieren, immer in `kurs/index.html`.

## Lizenz und Herkunft

- **Inhalte und Code:** [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.de) (siehe `LICENSE`)

Dieser Kurs ist eine Bearbeitung und Aufteilung des KI-Grundlagenkurses der
**Richard-Müller-Schule Fulda** (Autorin: **Marina Boonyaprasop-Meister**). Die Autorin hat das
Ausgangsmaterial **unter CC BY-SA 4.0 freigegeben** (ohne die ursprüngliche NC-Einschränkung). Die
hier vorliegende Bearbeitung steht ebenfalls unter CC BY-SA 4.0. Bei Weiterverwendung bitte sowohl
die Originalautorin als auch die Bearbeitung nennen.
