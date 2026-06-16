-- Testabfragen fuer die StudyBase Datenbank

-- alle Faecher
SELECT * FROM faecher;

-- Themen mit Fach anzeigen
SELECT themen.name, faecher.name, themen.pruefungsteil
FROM themen
JOIN faecher ON themen.fach_id = faecher.id;

-- alle Aufgaben mit Thema und Fach
SELECT aufgaben.id, faecher.name, themen.name, aufgaben.schwierigkeit, aufgaben.frage_text
FROM aufgaben
JOIN themen ON aufgaben.thema_id = themen.id
JOIN faecher ON themen.fach_id = faecher.id;

-- nur AP1
SELECT aufgaben.frage_text, themen.name
FROM aufgaben
JOIN themen ON aufgaben.thema_id = themen.id
WHERE themen.pruefungsteil = 'AP1';

-- Suche nach Stichwort
SELECT * FROM aufgaben
WHERE frage_text LIKE '%JOIN%';

-- Anzahl pro Fach
-- hat beim ersten mal nicht funktioniert weil ich GROUP BY vergessen hatte
SELECT faecher.name, COUNT(aufgaben.id)
FROM faecher
LEFT JOIN themen ON themen.fach_id = faecher.id
LEFT JOIN aufgaben ON aufgaben.thema_id = themen.id
GROUP BY faecher.name;

-- zufaellige Fragen fuer AP1
SELECT faecher.name, themen.name, aufgaben.frage_text, aufgaben.musterloesung
FROM aufgaben
JOIN themen ON aufgaben.thema_id = themen.id
JOIN faecher ON themen.fach_id = faecher.id
WHERE themen.pruefungsteil = 'AP1'
ORDER BY RANDOM()
LIMIT 5;