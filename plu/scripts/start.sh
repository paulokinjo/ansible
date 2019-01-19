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

echo "Adding ssh keys"
docker container exec -it acs sshpass -p "Docker!" ssh-copy-id -o StrictHostKeyChecking=no root@$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' web)

docker container exec -it acs sshpass -p "Docker!" ssh-copy-id -o StrictHostKeyChecking=no root@$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' db)

echo "listing containers"
docker container  ls -a

echo "Accessing the controller contianer.."
docker container exec -it acs /bin/bash
