PRAGMA foreign_keys = ON;

INSERT OR IGNORE INTO faecher (id, name) VALUES
(1, 'Java'),
(2, 'SQL'),
(3, 'Netzwerke'),
(4, 'Projektmanagement'),
(5, 'WiSo'),
(6, 'IT-Sicherheit');

INSERT OR IGNORE INTO themen (id, fach_id, name, pruefungsteil) VALUES
(1, 1, 'Java-Grundlagen', 'AP1'),
(2, 1, 'OOP', 'AP2'),
(3, 1, 'Arrays und ArrayList', 'AP1'),
(4, 2, 'SELECT Grundlagen', 'AP1'),
(5, 2, 'SQL JOINs', 'AP2'),
(6, 2, 'Normalisierung', 'AP2'),
(7, 3, 'IPv4 und Subnetting', 'AP1'),
(8, 3, 'OSI-Modell', 'AP1'),
(9, 4, 'Scrum', 'AP1'),
(10, 4, 'Projektplanung', 'AP2'),
(11, 5, 'Arbeitsrecht', 'AP2'),
(12, 5, 'Wirtschaftliche Grundlagen', 'AP1'),
(13, 6, 'Schutzziele', 'AP1'),
(14, 6, 'Datenschutz', 'AP2');

INSERT OR IGNORE INTO aufgaben
(id, thema_id, frage_text, musterloesung, schwierigkeit, quelle, notiz)
VALUES
(1, 1,
 'Was ist eine Variable in Java?',
 'Eine Variable speichert einen Wert. Sie hat einen Typ und einen Namen.',
 'Leicht', 'Eigenformuliert', NULL),

(2, 1,
 'Wofür benutzt man if/else in Java?',
 'Mit if/else kann ein Programm Entscheidungen treffen. Wenn eine Bedingung wahr ist, wird der if-Block ausgeführt, sonst der else-Block.',
 'Leicht', 'Eigenformuliert', 'vielleicht noch Beispiel ergänzen'),

(3, 2,
 'Was ist der Unterschied zwischen einer Klasse und einem Objekt?',
 'Eine Klasse ist ein Bauplan. Ein Objekt ist eine konkrete Instanz dieser Klasse.',
 'Leicht', 'Eigenformuliert', NULL),

(4, 2,
 'Was bedeutet Kapselung in der objektorientierten Programmierung?',
 'Attribute werden als private gesetzt und nur über Getter/Setter von außen zugänglich gemacht.',
 'Mittel', 'Eigenformuliert', 'private, Getter, Setter nennen'),

(5, 3,
 'Was ist der Unterschied zwischen einem Array und einer ArrayList?',
 'Ein Array hat eine feste Größe. Eine ArrayList kann wachsen und hat mehr Methoden wie add oder remove.',
 'Leicht', 'Eigenformuliert', NULL),

(6, 4,
 'Wofür benutzt man SELECT in SQL?',
 'Mit SELECT liest man Daten aus einer Tabelle. Mit WHERE kann man einschränken was zurückkommt.',
 'Leicht', 'Eigenformuliert', NULL),

(7, 4,
 'Was ist der Unterschied zwischen ORDER BY und GROUP BY?',
 'ORDER BY sortiert die Zeilen. GROUP BY fasst Zeilen zusammen, z.B. um zu zählen.',
 'Mittel', 'Eigenformuliert', 'GROUP BY noch üben'),

(8, 5,
 'Was ist ein INNER JOIN?',
 'Ein INNER JOIN gibt nur Zeilen zurück wo es in beiden Tabellen einen passenden Wert gibt.',
 'Mittel', 'Eigenformuliert', NULL),

(9, 5,
 'Was ist der Unterschied zwischen INNER JOIN und LEFT JOIN?',
 'INNER JOIN nur übereinstimmende Zeilen. LEFT JOIN alle aus der linken Tabelle, auch wenn rechts nichts passt.',
 'Schwer', 'Eigenformuliert', 'noch nicht ganz sicher, nochmal anschauen'),

(10, 7,
 'Was beschreibt eine IPv4-Adresse?',
 'Eine IPv4-Adresse identifiziert ein Gerät im Netzwerk. Sie besteht aus 32 Bit, aufgeteilt in 4 Zahlen.',
 'Leicht', 'Eigenformuliert', NULL),

(11, 9,
 'Was ist ein Sprint in Scrum?',
 'Ein Sprint ist ein fester Zeitraum in dem das Team bestimmte Aufgaben bearbeitet.',
 'Leicht', 'Eigenformuliert', NULL),

(12, 13,
 'Nenne die drei klassischen Schutzziele der IT-Sicherheit.',
 'Vertraulichkeit, Integrität und Verfügbarkeit. Kurz: CIA.',
 'Leicht', 'Eigenformuliert', 'CIA merken');