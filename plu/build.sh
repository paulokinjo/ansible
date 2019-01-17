#/bin/bash

echo "building images"
echo "starting..."

docker build ./ubuntu/ -t acs
