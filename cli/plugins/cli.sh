#!/bin/sh

# Zio Software Development
# cli - Command Line Interface Manager
set -e

PLUGIN=$(node get plugin $@)
SUBCOMMAND=$(node get subcommand $@)

(cd ${METEORJS_HOME}${PLUGIN} && shift && ./${SUBCOMMAND}.sh $@)
