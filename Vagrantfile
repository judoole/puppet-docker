# Vagrantfile for acceptancetesting install and run
# Centos because that is what I find hardest for Docker
#
Vagrant.configure("2") do |config|
  config.vm.box = "centos64-6.5"

  config.vm.network "private_network", type: "dhcp"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "test.pp"
    puppet.module_path = "modules"
  end


  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-x86_64-v20140110.box"
end
