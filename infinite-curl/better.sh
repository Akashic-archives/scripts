#!/bin/bash

# you need to have a random file like dd if=/dev/random of=random.data block=1 size=1k

while true; do
	curl -X post -d random.data 127.0.0.1 > /dev/null 2>&1
done

