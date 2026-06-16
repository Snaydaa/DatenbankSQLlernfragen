
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS faecher (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL UNIQUE,
);

CREATE TABLE IF NOT EXISTS themen (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    fach_id INTEGER NOT NULL,
    name TEXT NOT NULL,
    pruefungsteil TEXT NOT NULL,

    FOREIGN KEY (fach_id) REFERENCES faecher(id) ON DELETE CASCADE,
);

CREATE TABLE IF NOT EXISTS aufgaben (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    thema_id INTEGER NOT NULL,
    frage_text TEXT NOT NULL,
    musterloesung TEXT NOT NULL,
    schwierigkeit TEXT NOT NULL CHECK (schwierigkeit IN ('Leicht', 'Mittel', 'Schwer')),
    quelle TEXT NOT NULL DEFAULT 'Manuell',
    notiz TEXT,
    erstellt_am TEXT NOT NULL DEFAULT (datetime('now')),
    geaendert_am TEXT NOT NULL DEFAULT (datetime('now')),

    FOREIGN KEY (thema_id) REFERENCES themen(id) ON DELETE CASCADE,
    UNIQUE (thema_id, frage_text),
);

