#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Argument missing. Provide website to crawl"
    echo "Example: start.bash www.example.com"
    exit 1
fi

bash proxy_up.bash 2> /dev/null 2>&1 &
bash proxy_down.bash 2> /dev/null 2>&1 &
bash crawl.bash $1
