service "postfix" do
    action :stop
end
service "opendkim" do
    action :stop
end
template 'opendkim public key' do
  path '/etc/dkimpublic.key'
  source 'public.key.erb'
  owner 'root'
  group 'root'
  mode 0644
  backup false
end
template 'opendkim private key' do
  path '/etc/dkimprivate.key'
  source 'private.key.erb'
  owner 'root'
  group 'root'
  mode 0644
  backup false
end

template 'opendkim known hosts' do
  path '/etc/opendkimhosts'
  source 'opendkimhosts.erb'
  owner 'root'
  group 'root'
  mode 0644
  backup false
end

template 'opendkim conf' do
  path '/etc/opendkim.conf'
  source 'opendkim.conf.erb'
  owner 'root'
  group 'root'
  mode 0644
  backup false
end

template 'postfix main config' do
  path '/etc/postfix/main.cf'
  source 'main.cf.erb'
  owner 'root'
  group 'root'
  mode 0644
  backup false
end

template 'postfix master config' do
  path '/etc/postfix/master.cf'
  source 'master.cf.erb'
  owner 'root'
  group 'root'
  mode 0644
  backup false
end
service "postfix" do
    action :start
end
service "opendkim" do
    action :start
end