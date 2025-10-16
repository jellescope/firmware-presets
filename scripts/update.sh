#!/usr/bin/env bash

commit=$1
if [[ -n "$commit" ]]; then
    echo "We will commit changes with the following message: ${commit}"
    echo "Running indexer"
    node indexer/indexer.js
    echo "Updating GIT"
    git add -A
    git commit -m "${commit}"
    git push origin osd_presets
    echo "Done"
else
    echo "Entering a commit phrase is mandatory"
    exit 1
fi