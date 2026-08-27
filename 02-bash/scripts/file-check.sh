#!/bin/bash

if [ -z "$1" ]; then
	echo "Błąd podaj ścieżkę."
	exit 1
fi

path=$1

if [ -f "$path" ]; then
	echo " To jest zwykły plik."
elif [ -d "$path" ]; then
	echo "To jest katalog"
else
	echo "Plik lub katalog nie istnieje."
	exit 2
fi
