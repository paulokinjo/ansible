# ansible

Plan to be used as a reference for how to use ansible + vagrant

# Preparation

-- Pull the ubuntu trusty image
docker pull ubuntu:trusty

-- Pull centoOS:7 image
docker pull centos:7

-- The ansible ubuntu control container
docker container run -it --name control -d ubuntu:trusty

-- The ansible centOS host container
docker container run -it --name webapp -d centos:7

-- The ansible ubuntu host container
docker container run -it --name database -d ubuntu:trusty
