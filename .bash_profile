#!/bin/bash

# Load .bashrc and other files...
for file in ~/.{extra,aliases,exports,dockerfunc}; do
    if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# echo "Sourcing ${file}"
        source "$file"
    fi
done
unset file
