#/bin/bash

echo "building images"
echo "starting..."

echo "ubuntu:ansible"
docker build ../ubuntu/ -t ubuntu:ansible
echo "centos:ansible"
docker build ../centos/ -t centos:ansible
