# ansible

Plan to be used as a reference for how to use ansible + vagrant

<h1>Preparation</h1>
<p>
    Pull the ubuntu trusty image <br>
    <code>docker pull ubuntu:trusty</code>
</p>

<p>
    Pull centoOS:7 image <br>
    <code> docker pull centos:7 </code>
</p>

<p> 
    The ansible ubuntu control container <br>
    <code>docker container run -it --name control -d ubuntu:trusty</code>
</p>

<p>
    The ansible centOS host container <br>
    <code>docker container run -it --name webapp -d centos:7</code>
</p>

<p> 
    The ansible ubuntu host container <br>
    <code>docker container run -it --name database -d ubuntu:trusty</code>
</p>

<table>
<caption>SAMPLE RESULT</caption>
    <tr>
        <td>CONTAINER ID</td>
        <td>IMAGE</td>
        <td>COMMAND</td>
        <td>CREATED</td>
        <td>STATUS</td>
        <td>PORT</td>
        <td>NAME</td>
    </tr>
    <tr>
        <td>eddad53af705</td>
        <td>ubuntu:trusty</td>
        <td>"/bin/bash"</td>
        <td>6 seconds ago</td>
        <td>Up 4 seconds</td>
        <td></td>
        <td>database</td>
    </tr>
    <tr>
        <td>76b9f272df99</td>
        <td>centos:7</td>
        <td>"/bin/bash"</td>
        <td>14 seconds ago</td>
        <td>Up 12 seconds</td>
        <td></td>
        <td>webapp</td>
    </tr>
    <tr>
        <td>e096ca226cab</td>
        <td>ubuntu:trusty</td>
        <td>"/bin/bash"</td>
        <td>11 seconds ago</td>
        <td>Up 12 seconds</td>
        <td></td>
        <td>control</td>
    </tr>
<table>

<h2>Create a network</h2>
<p>
    <code>docker network create company-net</code>
</p>

<p>
    Add ansible control container to company-net
    <code>docker network connect company-net control</code>
</p>
<p>
    Add ansible webapp container to company-net
    <code>docker network connect company-net webapp</code>
</p>
<p>
    Add ansible database container to company-net
    <code>docker network connect company-net database</code>
</p>

<p>
    Inpecting the new network: <br>
    <code>docker network inspect company-net</code>
</p>
<p>
...
<pre>
 "Containers": {
    "76b9f272df997f6cf6e328752dfbec8ed56973031435b5213f2e7eaeb796a8ab": {
        "Name": "webapp",
        "EndpointID": "f7a228801da97e1c983e2a1cf875eb03810f53cc1f945462a6dbc5121193390a",
        "MacAddress": "02:42:ac:12:00:03",
        "IPv4Address": "172.18.0.3/16",
        "IPv6Address": ""
    },
    "e096ca226cab4dddb3c460ac58e77fdd2b55e4914a57f29609c54bba6bb769fa": {
        "Name": "control",
        "EndpointID": "b9801a04d30f79506169ed11ec174bff6dfa39cac41752c8567693bf5ef6be2e",
        "MacAddress": "02:42:ac:12:00:02",
        "IPv4Address": "172.18.0.2/16",
        "IPv6Address": ""
    },
    "eddad53af705f6fd87307a641d0a06f6e905fe3d4ec08ecaf19611d2118ef08d": {
        "Name": "database",
        "EndpointID": "26ded22cd299d23dab33ec329b94b7ce887b7dcb748c89b8fd389e8359826958",
        "MacAddress": "02:42:ac:12:00:04",
        "IPv4Address": "172.18.0.4/16",
        "IPv6Address": ""
    }
}
</pre>
...

</p>

<h1>Install ansible in the container</h1>
<h3>Get inside of the container</h3>
<code>docker container exec -it database /bin/bash
<h3>Ansible</h3>
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
