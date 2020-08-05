Vagrant.configure("2") do |config|
  config.vm.box = "moondly/vmikube"
  config.vm.box_version = "0.0.5"

  config.vm.network "forwarded_port", guest: 8080, host: 8080
end
