# StudyBase SQL

Kleine Aufgabenbank als reines SQL-Projekt, ohne Java-Oberfläche.
Hab das erstmal so gebaut um SQL besser zu üben bevor ich eine Java-Anbindung schreibe.

## Dateien

```
├── 01_schema.sql        Tabellen anlegen
├── 02_demo_daten.sql    ein paar Testfragen einfügen
├── 03_beispiel_abfragen.sql    Abfragen zum Ausprobieren
├── 04_reset.sql         alles löschen und neu starten
└── studybase.db         fertige SQLite-Datei
```

## Werkzeug

DB Browser for SQLite – einfach `studybase.db` öffnen und loslegen.

## Reihenfolge

1. `01_schema.sql` – Tabellen und Fremdschlüssel anschauen
2. `02_demo_daten.sql` – Daten einfügen (erst Fächer, dann Themen, dann Aufgaben)
3. `03_beispiel_abfragen.sql` – SELECT, JOIN, WHERE, GROUP BY üben
4. `04_reset.sql` – wenn man nochmal von vorne anfangen will

## Datenbankstruktur

Drei Tabellen:

- **faecher** – z.B. Java, SQL, Netzwerke
- **themen** – gehört zu einem Fach, z.B. SQL JOINs
- **aufgaben** – die eigentliche Lernfrage mit Musterlösung und Schwierigkeitsgrad

## Geplant

Später vielleicht Java dran hängen damit man die Aufgaben auch über ein Programm laden kann.