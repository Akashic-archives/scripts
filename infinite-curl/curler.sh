#!/bin/bash

# The website you want to curl
url="http://example.com"

# Loop to make the request every second
while true; do
    curl "$url"  # Perform the curl request
    sleep 1      # Wait for 1 second before the next request
done

