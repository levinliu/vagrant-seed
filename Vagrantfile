Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.box_check_update = false
  config.vm.provider "virtualbox"

  $num_vms = 1
  (1..$num_vms).each do |id|
    config.vm.define "levin-hello-box#{id}" do |node|
      node.vm.hostname = "levin-hello-box#{id}"
      config.vm.network "forwarded_port", guest: 3306, host: 3306, auto_correct: true # port for hello
      config.vm.network "forwarded_port", guest: 8081, host: 8081, auto_correct: true # service port
      config.vm.network :public_network, ip: "192.168.1.119"
      config.vm.network :private_network, :bridge=>'en1: Wi-Fi (AirPort)', ip: "10.231.33.119"
      node.vm.provider :virtualbox do |vb, override|
        vb.name = "levin-hello-box#{id}"
        vb.gui = false
        vb.memory = 2048
        vb.cpus = 1
      end
      #node.vm.provision "file", source: "resources", destination: "$HOME/resources"
      config.vm.provision "shell", path: "provision.sh"

    end
  end
end
