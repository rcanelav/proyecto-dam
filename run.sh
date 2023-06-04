#!/bin/bash

# Store the directories in an array
directories=()

# Find all child directories excluding "docs"
for d in */ ; do
    if [[ $d != *"docs"* ]]; then
        directories+=("$d")
    fi
done

# Run npm start in parallel processes
printf '%s\n' "${directories[@]}" | xargs -I {} -P 0 bash -c "cd {} && npm start"
