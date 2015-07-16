Vagrant.configure('2') do |config|
  config.vm.box = 'cloudfoundry/bosh-lite'
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provider :virtualbox do |v, override|
    override.vm.box_version = '9000.38.0' # ci:replace
    # To use a different IP address for the bosh-lite director, uncomment this line:
    # override.vm.network :private_network, ip: '192.168.59.4', id: :local
  end
  
  config.vm.provision "shell", keep_color: true, path: "os-setup.sh"
  config.vm.provision "shell", keep_color: true, privileged: false, path: "stemcell.sh"
  config.vm.provision "shell", keep_color: true, privileged: false, path: "gogs.sh"
  config.vm.provision "shell", keep_color: true, privileged: false, path: "cleanup.sh"
end
