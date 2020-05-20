apt update
apt install software-properties-common -y
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible -y
ansible --version

PASSWORD=root
USER=root
sleep 2
sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no $USER@lb01 "hostname"

sleep 2
sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no $USER@db01 "hostname"

sleep 2
sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no $USER@app01 "hostname"

sleep 2
sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no $USER@app02 "hostname"
