packages = []

case node[:platform_family]
when 'debian'
  packages = [
    'php5-xsl',
    'php5-curl',
    'php5-xmlrpc',
    'php5-sqlite',
    'php5-dev',
    'php5-gd',
    'php5-cli',
    'php5-sasl',
    'php5-mysql',
    'php5-mcrypt',
    'php5-memcache',
    'php-pear',
    'php-xml-parser',
    'php-mail-mime',
    'php-db',
    'php-mdb2',
    'php-html-common'
  ]
when 'rhel'
  packages = [
    'php54-xml',
    'php54-common',
    'php54-devel',
    'php54-gd',
    'php54-cli',
    'php54-mcrypt',
    'php54-pecl-memcached',
    'php54-pear'
  ]
end

default[:mod_php5_apache2][:packages] = packages