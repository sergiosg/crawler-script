#!/bin/bash   
export use_proxy=on
export http_proxy=http://localhost:8123/
export https_proxy=http://localhost:8123/
export ftp_proxy=http://localhost:8123/

if [ $# -eq 0 ]; then
    echo "Argument missing. Provide website to crawl"
    echo "Example: crawl.bash www.example.com"
    exit 1
fi

wget \
     --retry-connrefused \
     --retry-on-http-error=429,503,504 \
     --waitretry=120 \
     --recursive \
     --convert-link \
     --html-extension \
     --domains $1 \
     -t 0 \
     $1

echo Films after: $(ls -larhtR | grep film | wc -l)
