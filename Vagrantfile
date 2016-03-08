$update_channel = "alpha"
$image_version = "current"
$ip = "172.17.8.101"
$script = "./enable-remote.sh"
Vagrant.configure("2") do |config|
	config.vm.box = "coreos-alpha"
	config.vm.box_url = "https://storage.googleapis.com/%s.release.core-os.net/amd64-usr/%s/coreos_production_vagrant.json" % [$update_channel, $image_version]
	config.vm.network :private_network, ip: $ip
	config.vm.network "forwarded_port", guest: 2375, host: 2375, auto_correct: true
    config.vm.provider :virtualbox do |vb, override|
          vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
          #vb.customize ["modifyvm", :id, "--uartmode1", serialFile]
    end
    config.vm.provider :virtualbox do |v| 
    	v.check_guest_additions = false
    	v.functional_vboxsf = false
    end
	 
	 # plugin conflict
	 if Vagrant.has_plugin?("vagrant-vbguest") then
	    config.vbguest.auto_update = false
	 end

	 #noatime
	config.vm.synced_folder ".", "/home/core/share",id: "core",:nfs => true,:mount_options => ['nolock,vers=3,udp']

  config.vm.provision "shell", path: $script
  config.vm.provision "shell", inline:"docker build containers/nginx/"
end 
