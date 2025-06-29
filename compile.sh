#!/bin/bash

## Script to compile the typst file to create a pdf. Additionally, the script
# may be run with `./compile preview` to run the tinymist preview server for
# working on it.

# Set up the shared arguments for both commands
DEFAULT_ARGS=(--font-path 'fonts/')
INPUT_ARGS=()

# Grab the latest tag from git
get_latest_tag() {
    latest_tag="$(git describe --tags "$(git rev-list --tags --max-count=1)")"

    echo "$latest_tag"
}

get_latest_tag_date() {
    latest_tag_date=$(git log -1 --format=%as "$(git rev-list --tags --max-count=1)")

    echo "$latest_tag_date"
}

get_latest_hash() {
    latest_hash=$(git rev-parse --short HEAD)

    echo "$latest_hash"
}

# Adds a new value to the typst input parameter
add_input() {
    key=$1
    value=$2

    INPUT_ARGS+=("--input" "$key=$value")
}

main() {
    add_input GIT_TAG_VERSION "$(get_latest_tag)"
    add_input GIT_TAG_DATE "$(get_latest_tag_date)"
    add_input GIT_HASH "$(get_latest_hash)"

    echo "Resulting input key-value pairs:"
    echo -e "${INPUT_ARGS[@]}" "\n"

    if [[ $1 == "preview" ]]; then
        echo 'Previewing document using tinymist'
        tinymist preview "${DEFAULT_ARGS[@]}" "${INPUT_ARGS[@]}" new_resume.typ
    elif [[ $1 == png ]]; then
        echo 'Compiling document to PNG images using typst'
        typst compile -f png "${DEFAULT_ARGS[@]}" "${INPUT_ARGS[@]}" \
            --ignore-system-fonts new_resume.typ "page-{0p}.png"
    else
        echo 'Compiling document to PDF using typst'
        typst compile "${DEFAULT_ARGS[@]}" "${INPUT_ARGS[@]}" \
            --ignore-system-fonts new_resume.typ
    fi
    echo 'Done!'
}

main "$@"
