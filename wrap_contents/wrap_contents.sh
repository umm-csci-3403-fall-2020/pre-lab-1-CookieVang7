#!/usr/bin/env bash

#defining command line arguments
old=$1
specifier=$2
new=$3

header="$specifier"_header.html
footer="$specifier"_footer.html

cat "$header" "$old" "$footer" > "$new"
