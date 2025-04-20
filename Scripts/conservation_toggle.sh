#!/usr/bin/env bash 
LOCATION=/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
NEW_STATE=$(( ! $(cat $LOCATION)))

echo $NEW_STATE > $LOCATION

if [ "$NEW_STATE" -eq 1 ]; then
  STATE="activado"
else
  STATE="desactivado"
fi

notify-send -u low  "Administrador de Bateria" "Modo Conservacion: $STATE"
