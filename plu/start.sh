#/bin/bash

echo "creating the network"
docker network create ansible

echo "starting containers"
echo "acs - ansible controller system"
docker container run --name acs --network ansible -it -d ubuntu:ansible

echo "web - web server"
docker container run --name web --network ansible -it -d centos:ansible

echo "db - db server"
docker container run --name db --network ansible -it -d centos:ansible

echo "listing containers"
docker container  ls -a
