#!/bin/bash

while true; do
    echo "Bitte wähle eine Option:"
    echo "1) Beenden"
    echo "2) Hallo anzeigen"
    read -p "Deine Wahl (1 oder 2): " auswahl

    case "$auswahl" in
        1)
            echo "Programm wird beendet."
            break
            ;;
        2)
            echo "Hallo"
            ;;
        *)
            echo "Ungültige Auswahl, bitte versuche es erneut."
            ;;
    esac
done
