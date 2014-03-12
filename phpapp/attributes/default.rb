default[:phpapp][:env] = 'development'
default[:phpapp][:domain] = 'example.com'
default[:phpapp][:timezone] = 'UTC'

node.default['phpapp']['deploy']['user'] = "root"
node.default['phpapp']['deploy']['group'] = "root"
node.default['phpapp']['deploy']['home'] = "/root/"

case node["platform_family"]
  when "ubuntu"
    node.default['php55']['dotdeb']['uri'] = "http://packages.dotdeb.org"
    node.default['php55']['dotdeb']['distribution'] = "precise"
end