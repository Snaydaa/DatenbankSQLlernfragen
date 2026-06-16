
-- Löscht alle Tabellen

PRAGMA foreign_keys = OFF;

DROP TABLE IF EXISTS aufgaben;
DROP TABLE IF EXISTS themen;
DROP TABLE IF EXISTS faecher;

PRAGMA foreign_keys = ON;
