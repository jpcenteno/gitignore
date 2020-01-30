#! /usr/bin/env bash

set -eu

# ------------------------------------------------------------------------------
# Defaults
# ------------------------------------------------------------------------------

XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"
GITIGNORE_DIR="${GITIGNORE_DIR:-${XDG_DATA_HOME}/gitignore}"

SUBCOMMANDS="-h --help --clone --pull"

# ------------------------------------------------------------------------------
# Functions
# ------------------------------------------------------------------------------

list() {
    find "${GITIGNORE_DIR}" -iname "*.gitignore" \
        | sed 's/\.gitignore$//g' \
        | sed "s#^${GITIGNORE_DIR}/##g"
}

complete -W "${SUBCOMMANDS} $( list )" gitignore