#!/bin/bash
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 source_file output_file"
    exit 1
fi
echo "Compiling $1 to $2"
touch "$2"
