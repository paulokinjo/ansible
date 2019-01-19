#/bin/bash

echo "cleaning up"
docker container stop $(docker container ps -a -q)

echo "prune to remove network"
docker system prune -f
