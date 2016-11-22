#!/bin/sh

# Zio Software Development
# config - Command Line Interface Manager
set -e

cat mjs | sed "s/__DOCKER__/${1} ${2}/g"
