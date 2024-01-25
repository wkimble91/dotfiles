#!/bin/bash

# Accept any passed arguments
if [ -z "$1" ]; then
    # Check to make sure the number is not > 20
    while true; do
        read -p "How many?: " number

        if [[ "$number" =~ ^[0-9]+$ ]]; then
            if ((number > 30)); then
                echo "Number should be 30 or lower. Please enter a new number."
            else
                echo "Choosing" $number
                break
            fi
        else
            echo "Invalid input. Please enter a positive number"
        fi
    done
else
    number=$1
    if [[ "$number" =~ ^[0-9]+$ ]]; then
        if ((number > 30)); then
            echo "Number should be 30 or lower. Please enter a new number."
        else
            echo "Choosing" $number
        fi
    else
        echo "Invalid input. Please enter a positive number"
    fi
fi


# Check if there are .cbz files
if compgen -G '*.cbz' > /dev/null; then
    for ((i = 1; i <= $number; i++)); do
        # Open ebook-viewer for .cbz files
        ( sort -zR | shuf -ezn 1 *.cbz | xargs -I {} ebook-viewer "{}" & ) > /dev/null 2>&1
    done
fi

# Open gwenview for image files
(
    find . -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" \) -print0 \
    | sort -zR \
    | shuf -z -n $number \
    | xargs -0 -P $number -I {} gwenview "{}" &
) > /dev/null 2>&1

# Open videos or music in vlc
(
    find . -type f \( -name "*.mp4" -o -name "*.m4a" \) -print0 \
    | sort -zR \
    | shuf -z -n $number \
    | xargs -0 -P $number -I {} vlc "{}" &
) > /dev/null 2>&1


wait  # Wait for background jobs to finish
