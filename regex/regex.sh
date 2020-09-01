#!/usr/bin/env bash

#regex using sed for the r0 input file
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

#regex using awk for the r1 input file
awk 'match($0, /* I am (\w+). My favorite sandwich is (\w+)./, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < r1_input.txt > r1_output.txt

#regex using sed for the r2 input file
sed -E 's/\* ([a-zA-Z ]+) ([a-zA-Z\.]+) ([a-zA-Z ]+)/1. \2\n2. \3 \n /'  < r2_input.txt > r2_output.txt
