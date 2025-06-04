# Projekt1

Dieses Repository enthält ein simples Beispielprogramm in C#.

Die Datei `Program.cs` implementiert ein kleines Konsolenprogramm. Beim Start gibt es eine Begrüßung aus und berechnet anschließend die Summe zweier Zahlen. Das Ergebnis wird auf der Konsole ausgegeben.

## Ausführen des Programms

Um das Programm zu kompilieren und auszuführen wird die .NET SDK benötigt. In der GitHub-Actions-Umgebung wird das passende SDK automatisch installiert (siehe `.github/workflows/dotnet.yml`). Das Skript `run.sh` prüft lokal, ob `dotnet` oder `csc` mit `mono` vorhanden ist. Falls nicht, wird eine Meldung ausgegeben und das Skript beendet sich ohne Fehler.

```bash
./run.sh
```

Beispielhafter manueller Aufruf, falls die Laufzeit vorhanden ist:

```bash
csc Program.cs
mono Program.exe
# oder falls .NET Core installiert ist
dotnet run
```
