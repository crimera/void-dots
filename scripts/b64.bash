#!/bin/bash

data="$1"

if [ -z "$data" ]; then
    echo "empty string"
    exit
fi

decode() { 
    data="$(base64 -d <<< "$data")"
}

while base64 -d <<< "$data" 2>/dev/null; do
    decode
done
