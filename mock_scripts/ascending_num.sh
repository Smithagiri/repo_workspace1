#!/bin/bash
set -x

IFS=' ' read -ra arr -p "Enter the numbers :"
sort -n <(printf "%s\n" "${arr[@]}")
