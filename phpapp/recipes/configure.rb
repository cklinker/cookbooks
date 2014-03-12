    include_recipe "apt"

    execute "python-software-properties" do
      command "apt-get install -y python-software-properties"
      action :run
    end

    execute "install php55" do
      #command "apt-get install -y php5"
      command "add-apt-repository ppa:ondrej/php5 && apt-get update -y && apt-get install -y php5 php5-curl"
      action :run
    end

    execute "restart apache2" do
      #command "apt-get install -y php5"
      command "service apache2 restart"
      action :run
    end