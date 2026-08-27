#!/bin/bash

if [ -z "$1" ]; then
	echo "Błąd: podaj nazwę usługi."
	exit 1
fi

service=$1

if systemctl is-active --quiet "$service"; then
	echo "OK: usługa $service działa."
	exit 0
else
	echo "ERROR: usługa $service nie działa."
	exit 1
fi
