#!/bin/bash

URL=$1

# http://localhost:8000
STATUS=$(echo $(curl -s -I $URL)|grep "HTTP/"|awk '{print $2}')

if [ $? -ne 0 ]; then
    exit 5;
fi

if [ $STATUS -gt 205 ]; then
    exit 45;
fi
