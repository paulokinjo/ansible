Infrastructure Provisioning
=================================

### Before you Start

1. Install docker

## Planning

```bash
# Change current directory to the docker-server dir
cd docker-server
```

## Running docker compose
```bash
docker-compose build
docker-compose up -d
```

## Accessing control VM
```bash
docker container exec -it docker-servers_control_1 /bin/bash
```

## Installing Ansible
```bash
# Change current directory to the /work dir
cd /work
./docker-servers/env/ansible_install.sh
```

[1]:	https://docs.docker.com/get-docker/
[2]:	https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html
