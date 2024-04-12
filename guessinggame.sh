#!/bin/bash

count_files() {

    local file_count=$(ls -1 | wc -l)

    echo "$file_count"

}

main() {
    local files_in_directory=$(count_files)
    local guess=-1

    while [[ $guess -ne $files_in_directory ]]; do
        read -p "Combien de fichiers y a-t-il dans le répertoire actuel ? " guess
        if [[ $guess -lt $files_in_directory ]]; then
            echo "Votre estimation était trop basse. Réessayez."
        elif [[ $guess -gt $files_in_directory ]]; then
            echo "Votre estimation était trop haute. Réessayez."
        else
            echo "Félicitations! Vous avez deviné juste."
        fi
    done
}

main

