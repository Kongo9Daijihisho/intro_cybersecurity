
#!/bin/bash

# This script adds multiple users to specified groups using array indices.

# Arrays
usernames=("Loki" "Kullervo" "Temple")
groups=("gods" "pros" "noobs")

# Loop through the array using indices
for i in "${!usernames[@]}"
do
    sudo usermod -aG "${groups[$i]}" "${usernames[$i]}"
    done

    echo "Successfully added users to groups"
