template 'opendkim public key' do
  path '/etc/dkimpublic.key'
  source 'public.key.erb'
  owner 'root'
  group 'root'
  mode 0644
  backup false
  notifies :restart, resources(:service => 'opendkim')
end
template 'opendkim private key' do
  path '/etc/dkimprivate.key'
  source 'private.key.erb'
  owner 'root'
  group 'root'
  mode 0644
  backup false
  notifies :restart, resources(:service => 'opendkim')
end

