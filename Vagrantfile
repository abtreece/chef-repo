Vagrant.configure(2) do |config|
  config.vm.box = "parallels/ubuntu-14.04"
  config.omnibus.chef_version = :latest
  config.landrush.enabled = false

  config.vm.provider "parallels" do |prl|
    prl.name = "chef-test"
  end

  config.vm.provider "parallels" do |prl|
    prl.memory = 1024
    prl.update_guest_tools = false
  end

  config.vm.provision :chef_client do |chef|
    chef.provisioning_path = "/etc/chef"
    chef.chef_server_url = "https://api.chef.io/organizations/bytekinetic"
    chef.validation_key_path = ".chef/bytekinetic-validator.pem"
    chef.validation_client_name = "bytekinetic-validator"
    chef.node_name = "server"
  end
end
