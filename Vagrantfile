Vagrant.configure("2") do |config|
  config.vm.box = "bento/debian-9"

    config.vm.provider "virtualbox" do |vb|
     vb.name = "vm-test"
     vb.memory = "2048"
     vb.cpus = 2
    end
    config.vm.hostname = "vm-test"
    config.vm.network "public_network", ip: "10.0.2.2"
    config.vm.provision "shell", run: "always", inline: "route add default gw 10.0.2.1"
    config.disksize.size = "10GB"
    config.vm.provision "shell", path: "install.sh"
end
