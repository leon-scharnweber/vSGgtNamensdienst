# Datenstrukturen

## Speicherung der Namen zu den Standorten

Die Name von einem Prozess und der zugehörige Standorte werden in gemeinsam
in einem Tupel gespeichert. Damit hat man die zugehörigkeit klargestellt.
Diese Name ist an diesem Standort.

## Speicherung der Namen und Standort Tupel

Alle Namen und Standort Tupel werden in einer Liste gespeichert.
Die Liste hat eine alphabetische Sortierung nach den Namen.
Dadurch wird das hinzufügen komplexer, aber das suchen nach einem Namen
ist im durchschnitt auf O(n/2) reduziert wurden von O(n) bei einer unsortierten Liste.
Da die Registrierung nur einmal pro Prozess passiert aber das suchen um einiges öfter
passiert hat man sich für eine sortierte Liste entschieden.
