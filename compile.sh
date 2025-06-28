#!/bin/bash

echo 'Getting latest git tag...'
latest_tag="$(git describe --tags "$(git rev-list --tags --max-count=1)")"
echo "Document version v$latest_tag"

shared_arguments="--input "GIT_VERSION=$latest_tag" --font-path fonts/"

if [[ $1 == "preview" ]]; then
    echo 'Previewing document using tinymist'
    tinymist preview $shared_arguments new_resume.typ
else
    echo 'Compiling document using typst'
    typst compile $shared_arguments --ignore-system-fonts new_resume.typ
    echo 'Done'
fi
