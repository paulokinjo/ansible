ANSIBLE
=================================

### List Hosts Examples
```bash

ansible --list-hosts all

ansible --list-hosts loadbalancer

ansible --list-hosts webserver

ansible --list-hosts app2


ansible --list-hosts app*

ansible --list-hosts database,control

ansible --list-hosts webserver[0]

ansible --list-hosts \!control
```

[1]:	https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html
