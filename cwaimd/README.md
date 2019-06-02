# Contairnerization with Ansible.

# Installing Docker-CE 17.09.0

<code>
$ sudo apt-get remove docker docker-engine docker.io containerd runc
## Update the source listing
$ sudo apt-get update
## Ensure that you have the binaries needed to fetch repo listing
$ sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common
## Fetch the repository listing from docker's site & add it
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
## Update source listing now that we've added Docker's repo
$ sudo apt-get update
$sudo apt-get install docker-ce=17.09.0~ce-0~ubuntu

sudo usermod -aG docker $USER
$sudo vim /usr/local/sbin/start_docker.sh
#!/usr/bin/env bash
sudo cgroupfs-mount
sudo service docker start

\$ sudo chmod +x /usr/local/sbin/start_docker.sh

# Lock down edit privileges

$ sudo chmod 755 /usr/local/sbin/start_docker.sh
$ /bin/sh /usr/local/sbin/start_docker.sh
</code>
