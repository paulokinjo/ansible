# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.define "acs" do |acs|
    acs.vm.box = "ubuntu/trusty64"
    acs.vm.hostname = "acs"
    acs.vm.network "private_network", ip: "192.168.33.10"
  end

  config.vm.define "web" do |web|
    web.vm.box = "nrel/CentOS-6.5-x86_64"
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "192.168.33.20"
    web.vm.network "forwarded_port", guest: 80, host: 8080
  end

  config.vm.define "db" do |db|
    db.vm.box = "nrel/CentOS-6.5-x86_64"
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.33.30"
  end

end


# K8S Setup


# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|

  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/focal64"
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "192.168.33.10"
    # master.vm.network "public_network",
    #  use_dhcp_assigned_default_route: true
    # Enable ssh forward agent
    master.ssh.forward_agent = true
    master.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end

  config.vm.define "worker1" do |worker1|
    worker1.vm.box = "ubuntu/focal64"
    worker1.vm.hostname = "worker1"
    worker1.vm.network "private_network", ip: "192.168.33.20"
    # worker1.vm.network "public_network",
    #  use_dhcp_assigned_default_route: true
    # Enable ssh forward agent
    worker1.ssh.forward_agent = true
    worker1.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end

  config.vm.define "worker2" do |worker2|
    worker2.vm.box = "ubuntu/focal64"
    worker2.vm.hostname = "worker2"
    worker2.vm.network "private_network", ip: "192.168.33.30"
    #worker2.vm.network "public_network",
    #  use_dhcp_assigned_default_route: true
    # Enable ssh forward agent
    worker2.ssh.forward_agent = true
    worker2.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end

  config.vm.define "control" do |control|
    control.vm.box = "ubuntu/focal64"
    control.vm.hostname = "control"
    control.vm.network "private_network", ip: "192.168.33.40"
    control.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024"]
      vb.customize ["modifyvm", :id, "--cpus", "1"]
    end
  end

end
