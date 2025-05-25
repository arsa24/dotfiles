#!/bin/bash

# Ambil persentase baterai dari acpi
battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')

# Periksa apakah <20%
if [ "$battery_level" -le 20 ]; then
    notify-send "⚠️ Baterai Lemah" "Tersisa $battery_level%"
fi
