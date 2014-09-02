# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"



#
# mesos masters
#

  (1..1).each do |i|
    config.vm.define "mesos-m#{i}" do |node|
      node.vm.hostname = "mesos-m#{i}"
      node.vm.network "private_network", ip: "192.168.77.1#{i}"
      node.vm.provision "ansible" do |ansible|
        ansible.playbook = "provisioning/playbook.yml"
        ansible.extra_vars = { bind: "192.168.77.1#{i}", mesos_cluster: "test", mesos_role: "master", mesos_zookeeper: "zk://192.168.77.11:2181/mesos" }
      end
    end
  end



#
# mesos slaves
#

  (1..2).each do |i|
    config.vm.define "mesos-s#{i}" do |node|
      node.vm.hostname = "mesos-s#{i}"
      node.vm.network "private_network", ip: "192.168.77.2#{i}"
      node.vm.provision "ansible" do |ansible|
        ansible.playbook = "provisioning/playbook.yml"
        ansible.extra_vars = { bind: "192.168.77.2#{i}", mesos_cluster: "test", mesos_role: "slave", mesos_zookeeper: "zk://192.168.77.11:2181/mesos" }
      end
    end
  end



end
