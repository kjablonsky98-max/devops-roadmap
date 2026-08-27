#!/bin/bash

if [ -z "$1" ]; then
	echo "Użycie: $0 {start|stop|status}"
	exit 1
fi

case "$1" in
	start)
	echo "Wybrano START"
	;;
	stop)
	echo "Wybrano STOP"
	;;
	status)
	echo "Wybrano STATUS"
	;;
	*)
	echo "Błąd: nieznana opcja."
	exit 1
	;;
esac
