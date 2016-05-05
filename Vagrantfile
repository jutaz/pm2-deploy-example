Vagrant.configure(2) do |config|
  config.vm.box = "thdengops/ubuntu-14.04-dev"
  config.vm.network "private_network", ip: "192.168.60.50"
  config.ssh.insert_key = false
  config.vm.provision "shell", privileged: false, path: "provision.sh"
end
