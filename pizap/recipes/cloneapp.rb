template 'id_rsa' do
  path '/home/ubuntu/.ssh/id_rsa'
  source 'id_rsa.erb'
  owner 'ubuntu'
  group 'ubuntu'
  mode 0600
  backup false
end
directory '/mnt/code' do
  user "ubuntu"
  group "ubuntu"
end
git "/mnt/code" do
  repository "git@github.com:pizap/production-web.git"
  user "ubuntu"
  group "ubuntu"
end
