default['wordpress']['db_name'] = ENV['WORDPRESS_DB_NAME'] || 'wordpress'
default['wordpress']['db_host'] = ENV['WORDPRESS_DB_HOST'] || 'wordpress-mariadb'
default['wordpress']['db_user'] = ENV['WORDPRESS_DB_USER'] || 'mariadb'
default['wordpress']['db_pass'] = ENV['WORDPRESS_DB_PASS']
default['wordpress']['download_url'] = 'http://wordpress.org/latest.tar.gz'
default['wordpress']['apache_user'] = 'apache'
default['wordpress']['apache_group'] = 'apache'
default['wordpress']['apache_dir'] = '/var/www/html'
