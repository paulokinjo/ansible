# ansible

Plan to be used as a reference for how to use ansible

<h1>Preparation</h1>
<p>
    Pull the ubuntu trusty image <br>
    <code>docker pull ubuntu:trusty</code>
</p>

<p> 
    The ansible ubuntu control container <br>
    <code>docker container run -it --name control -d ubuntu:trusty</code>
</p>

<p> 
    The ansible ubuntu host container <br>
    <code>docker container run -it --name database -d ubuntu:trusty</code>
</p>

<h2>Create a network</h2>
<p>
    <code>docker network create company-net</code>
</p>

<p>
    Add ansible control container to company-net
    <code>docker network connect company-net control</code>
</p>
<p>
    Add ansible database container to company-net
    <code>docker network connect company-net database</code>
</p>

<h1>Install ansible in the container</h1>
<h3>Get inside of the container</h3>

<h3>Ansible Control</h3>
<code>docker container exec -it control /bin/bash
<p>
<code>$ apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 </code> 
</p>
<p>
<code>$ apt update </code>
</p>
<p>
<code>$ apt install ansible </code>
</p>
<p>
<a href="https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html">Reference - Latest Releases via Apt (Debian)</a>
</p>
<p>
<code>useradd -d /home/ansadm -m ansadm</code>
<code>passwd ansadm</code>
<code>passwd -x -1 ansadm</code>
<code>su - ansadm</code>
<code>ssh-keygen rsa</code>
<code>cat id_rsa.pub</code>
</p>

# On Ansible Hosts

<code>\$ apt install vim</code>
<code>mkdir .ssh</code>
<code>chmod 700 .ssh/ </code>
<code>chown ansadm:ansadm .ssh/</code>
<code>cd ./ssh</code>

uncomment # Port 22 in /etc/ssh/ssh_config

<code>apt install openssh-server -y</code>
<code>service ssh restart</code>
<code>vim authorized_keys</code>

Paste the key copied from control server

</p>
<p>
From Control server.
- To test
<code>ssh -o StrictHostKeyChecking=no "server"</code>
<code>chown -R ansadm:ansadm /etc/ansible</code>
<code>apt-get install python-apt</code>
<code>usermod -aG sudo ansadm</code>
</p>
