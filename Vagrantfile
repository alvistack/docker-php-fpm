Vagrant.configure("2") do |config|
  config.vm.provider :docker do |docker, override|
    docker.image = "alvistack/php-8.3-fpm"
    docker.pull = true

    override.vm.synced_folder "./", "/vagrant"
  end
end
