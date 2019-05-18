# ansible

Plan to be used as a reference for how to use ansible + vagrant

<h1>Preparation</h1>
<p>
    Pull the ubuntu trusty image
    <code>docker pull ubuntu:trusty</code>
</p>

<p>
    Pull centoOS:7 image
    <code> docker pull centos:7 </code>
</p>

-- The ansible ubuntu control container
docker container run -it --name control -d ubuntu:trusty

-- The ansible centOS host container
docker container run -it --name webapp -d centos:7

-- The ansible ubuntu host container
docker container run -it --name database -d ubuntu:trusty

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
