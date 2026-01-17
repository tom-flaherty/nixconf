#!/usr/bin/env bash
# Build cheatsheet
# Compiles the cheatsheet.md into a cheatsheet.pdf

pandoc cheatsheet.md --pdf-engine=xelatex -o cheatsheet.pdf
