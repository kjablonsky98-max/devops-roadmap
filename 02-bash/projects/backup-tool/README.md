# Bash Backup Tool

Prosty skrypt Bash do automatycznego tworzenia kopii zapasowych katalogów.

## Funkcje

- tworzenie backupu w formacie `.tar.gz`
- automatyczna nazwa pliku z datą i godziną
- sprawdzanie poprawności argumentów
- kontrola istnienia katalogu źródłowego
- kody wyjścia informujące o błędach
- logowanie wykonanych backupów
- możliwość automatycznego uruchamiania przez cron

## Użycie

```bash
./backup.sh <katalog_źródłowy> <katalog_backupu>
```

Przykład:

```bash
./backup.sh /home/devops/backup-lab/source /home/devops/backup-lab/backups
```

## Kody wyjścia

| Kod | Znaczenie |
|---|---|
| 0 | Backup utworzony poprawnie |
| 1 | Nieprawidłowa liczba argumentów |
| 2 | Katalog źródłowy nie istnieje |
| 3 | Błąd podczas tworzenia backupu |

## Logi

Skrypt zapisuje historię backupów do:

```text
backup.log
```

Przykład:

```text
2026-09-07 10:52:52 OK /home/devops/backup-lab/backups/backup_2026-09-07_10-52-52.tar.gz
```

## Automatyzacja przez cron

Przykład uruchamiania codziennie o 02:00:

```cron
0 2 * * * /home/devops/devops-roadmap/02-bash/projects/backup-tool/backup.sh /home/devops/backup-lab/source /home/devops/backup-lab/backups >> /home/devops/backup-lab/cron-output.log 2>&1
```

## Weryfikacja backupu

Wyświetlenie zawartości archiwum bez rozpakowywania:

```bash
tar -tzf backup_*.tar.gz
```
