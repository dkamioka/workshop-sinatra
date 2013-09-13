Vagrant::Config.run do |config|
  config.vm.box = "hellobits"
  # O servidor abaixo com final 114 é o servidor MacMini
  config.vm.box_url = "http://192.168.0.114/hellobits.box"
  config.vm.network :hostonly, "192.168.10.99"
  config.vm.forward_port 3000, 3001

  # 

  config.vm.provision :shell, :path => "install-rvm.sh",  :args => "stable"
  config.vm.provision :shell, :path => "install-ruby.sh", :args => "1.9.3"
  config.vm.provision :shell, :path => "install-ruby.sh", :args => "2.0.0 rails haml"
end