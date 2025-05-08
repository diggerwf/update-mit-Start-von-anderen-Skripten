#!/bin/bash

# Variablen oben definieren
datei2="update.sh"
auswahl2="update"

while true; do
    echo "Bitte wähle eine Option:"
    echo "1) Beenden"
    echo "2) $auswahl2"
    read -p "Deine Wahl (1 oder 2): " auswahl

    if [ "$auswahl" == "1" ]; then
        echo "Programm wird beendet."
        break
    elif [ "$auswahl" == "2" ]; then
        # Überprüfen, ob die Datei existiert
        if [ -f "$datei2" ]; then
            # Ausführungsrechte setzen
            chmod +x "$datei2"
            # Datei ausführen
            ./"$datei2"
        else
            echo "Datei '$datei2' wurde nicht gefunden."
        fi
    else
        echo "Ungültige Auswahl, bitte versuche es erneut."
    fi
done
