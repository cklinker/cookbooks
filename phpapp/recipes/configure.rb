
    execute "python-software-properties" do
      command "apt-get install -y python-software-properties"
      action :run
    end

    execute "install repo" do
      ignore_failure true
      command "add-apt-repository ppa:ondrej/php5"
      action :run
    end

    execute "install aptupdate" do
      ignore_failure true
      command "apt-get update -y"
      action :run
    end

    execute "install php" do
      ignore_failure true
      command "apt-get install -y php5"
      action :run
    end

    execute "remove mod" do
      ignore_failure true
      command "rm -f /etc/apache2/mods-enabled/authz_default.load"
      action :run
    end

    execute "restart apache2" do
      command "service apache2 restart"
      action :run
    end