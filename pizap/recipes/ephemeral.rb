directory '/mnt/ephemeral' do
  user "ubuntu"
  group "ubuntu"
  mode "0777"
end

template 'config_web' do
  path '/etc/apache2/sites-available/deploy_to_web.conf'
  source 'slim_conf.erb'
  owner 'root'
  group 'root'
  mode 0644
  backup false
end