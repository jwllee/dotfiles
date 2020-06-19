#!/bin/bash

# Load .bashrc and other files...
for file in ~/.{aliases,exports,dockerfunc,extra}; do
    if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# echo "Sourcing ${file}"
        source "$file"
    fi
done
unset file
