#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Użycie: $0 <katalog_źródłowy> <katalog_backupu>"
    exit 1
fi

source_dir=$1
backup_dir=$2
log_file="$backup_dir/backup.log"

if [ ! -d "$source_dir" ]; then
    echo "ERROR: katalog źródłowy nie istnieje: $source_dir"
    exit 2
fi

mkdir -p "$backup_dir"

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_file="$backup_dir/backup_$timestamp.tar.gz"

echo "Tworzenie backupu..."
echo "Źródło: $source_dir"
echo "Plik: $backup_file"

tar -czf "$backup_file" -C "$source_dir" .

if [ $? -eq 0 ]; then
    echo "OK: backup utworzony poprawnie."
    echo "$(date '+%Y-%m-%d %H:%M:%S') OK $backup_file" >> "$log_file"
    exit 0
else
    echo "ERROR: tworzenie backupu nie powiodło się."
    echo "$(date '+%Y-%m-%d %H:%M:%S') ERROR $source_dir" >> "$log_file"
    exit 3
fi
