sudo apt install virtualbox -y
sudo apt install vagrant -y

mkdir ansible
cd ansible

vagrant init
vagrant up

vboxmanage list runningvms
