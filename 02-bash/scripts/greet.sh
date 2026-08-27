#/bin/bash




if [ -z "$1" ]; then
	echo "Błąd: podaj imię."
	exit 1
fi
name=$1

echo "Cześć, $name!"
