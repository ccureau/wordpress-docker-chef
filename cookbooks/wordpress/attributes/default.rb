default['wordpress']['db_user'] = ENV['WORDPRESS_DB_USER'] || 'mariadb'
default['wordpress']['db_pass'] = ENV['WORDPRESS_DB_PASS']
default['wordpress']['download_url'] = 'http://wordpress.org/latest.tar.gz'
default['wordpress']['apache_user'] = 'apache'
default['wordpress']['apache_group'] = 'apache'
default['wordpress']['apache_dir'] = '/var/www/html'
