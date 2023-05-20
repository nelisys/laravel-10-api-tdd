#!/bin/sh

md_files="
metadata.md
preface.md
installation.md
example-test.md
"

# html
pandoc -s \
    --toc \
    -c style.css \
    -o output/index.html \
    $md_files

# pdf
pandoc -s \
    --toc \
    --number-sections \
    --pdf-engine=xelatex \
    -o output/book.pdf \
    $md_files
