#/bin/bash

echo "cleaning up"
docker container stop acs web db

echo "prune to remove network"
docker system prune -f
