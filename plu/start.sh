#/bin/bash

echo "creating the network"
docker network create ansible

echo "starting containers"
echo "acs - ansible controller system"
docker container run -d -P --network ansible --name acs ubuntu:ansible

echo "web - web server"
docker container run -d -P --network ansible --name web centos:ansible

echo "db - db server"
docker container run -d -P --network ansible --name db centos:ansible

echo "listing containers"
docker container  ls -a
