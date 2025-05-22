#!/bin/bash

if [[ $# != 1 ]]; then
    echo "Usage $0 FILE" && exit 1
fi

toks=$(cat $1 | tr -d '[:digit:]' | tr '[:punct:]' ' ' | tr -s ' ' '\n')
shifted_toks=$(echo "$toks" | tail -n +2)

paste -d " " <(echo "$toks") <(echo "$shifted_toks") | sort -f | uniq -ic | sort -nr