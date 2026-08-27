#!/bin/bash 

if [ -z "$1" ]; then
	echo "Błąd: Podaj wiek."
	exit 1
fi 

age=$1

if [ "$age" -lt 18 ]; then
	echo "Osoba niepełnoletnia"
elif [ "$age" -lt 65 ]; then
	echo "Odoba dorosła"
else
	echo "Senior"
fi
