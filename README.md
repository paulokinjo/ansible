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

|| SAMPLE -- RESULT ||
CONTAINER ID IMAGE COMMAND CREATED STATUS PORTS NAMES
eddad53af705 ubuntu:trusty "/bin/bash" 6 seconds ago Up 4 seconds database
76b9f272df99 centos:7 "/bin/bash" 14 seconds ago Up 12 seconds webapp
e096ca226cab ubuntu:trusty "/bin/bash" 11 minutes ago Up 11 minutes control
