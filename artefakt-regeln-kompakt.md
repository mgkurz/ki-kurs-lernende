# Artefakt-Regeln (HTML/CSS/JS)

DSGVO ist Maßstab. Im Zweifel die datenschutzfreundlichere Variante.

- Keine externen Aufrufe zur Laufzeit: keine CDN, keine Google Fonts, keine extern geladenen Bibliotheken, kein Tracking, keine Cookies. Alles liegt lokal im Ordner.
- Schriften nur als System-Font-Stack, serifenlos: `system-ui, -apple-system, "Segoe UI", Roboto, sans-serif`. Keine eingebundenen Schriftdateien außer lokal mitgeliefert.
- Eingaben werden nicht versendet. Dezenter Hinweis an Feldern: keine personenbezogenen Daten eingeben. localStorage nur optional, App muss auch ohne funktionieren.
- Struktur: kleine Projekte als eine Datei (HTML/CSS/JS inline). Flacher Ordner, `index.html` als Einstieg, nur relative Pfade, keine führenden `/`.
- Bilder sparsam, JPG oder PNG, klein. Sehr kleine als Data-URI. Keine externen Bild-URLs.
- Mobil/Tablet: lesbar und per Finger bedienbar, Touch-Ziele ca. 44 px, kein reines Hover, `<meta name="viewport">` setzen.
