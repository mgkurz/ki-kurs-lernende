# Künstliche Intelligenz verstehen — Grundlagenkurs (OER)

Interaktiver Grundlagenkurs zu Künstlicher Intelligenz in vier eigenständigen Teilen plus
Übersicht. Jedes Modul ist eine datenschutzkonforme Single-File-HTML-Anwendung ohne externe
Abhängigkeiten (keine CDNs, Fonts, Tracker). Zielgruppe: Sekundarstufe II und Berufsschule.

## Aufbau

Jeder Teil liegt in einem eigenen Ordner und enthält seine Quelle (`index.html`) und seine
Arbeitsdateien (`workbench/`) zusammen. Der Ordner `docs/` ist der **veröffentlichte Mirror** und
wird per `./build.sh` erzeugt. GitHub Pages serviert ausschließlich `docs/`; die `workbench/`-Ordner
sind nicht Teil der Live-Seite.

```
0-uebersicht/        Übersicht / Landing (wird zu docs/index.html)
1-wie-funktioniert-ki/   Teil 1 (fertig)
2-grenzen-und-recht/     Teil 2 (in Arbeit)
3-ki-nutzen/             Teil 3 (in Arbeit)
4-zukunft-transfer/      Teil 4 (in Arbeit)
workbench/           geteiltes Material (Original, Analyse, Regeln)
docs/                veröffentlichter Mirror — NICHT direkt editieren
build.sh             erzeugt docs/ aus den Modulordnern
```

## Veröffentlichen

```sh
./build.sh                  # Modul-index.html → docs/ spiegeln
git add -A && git commit    # Änderungen versionieren
# später: git push, dann GitHub Pages auf Branch main, Ordner /docs stellen
```

**Wichtig:** Vor jedem Veröffentlichen `./build.sh` laufen lassen, sonst ist `docs/` veraltet.
Nie direkt in `docs/` editieren, immer im jeweiligen Modulordner.

## Lizenz und Herkunft

- **Inhalte und Code:** [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.de) (siehe `LICENSE`)

Dieser Kurs ist eine Bearbeitung und Aufteilung des KI-Grundlagenkurses der
**Richard-Müller-Schule Fulda** (Autorin: **Marina Boonyaprasop-Meister**). Die Autorin hat das
Ausgangsmaterial **unter CC BY-SA 4.0 freigegeben** (ohne die ursprüngliche NC-Einschränkung). Die
hier vorliegende Bearbeitung steht ebenfalls unter CC BY-SA 4.0. Bei Weiterverwendung bitte sowohl
die Originalautorin als auch die Bearbeitung nennen.
