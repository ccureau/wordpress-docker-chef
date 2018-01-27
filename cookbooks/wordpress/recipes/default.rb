#
# Cookbook:: wordpress
# Recipe:: default
#
# Copyright:: 2018, Chris Cureau, All Rights Reserved.

# Install dependent packages
%w{ httpd php php-common php-mysql php-gd php-xml php-mbstring php-mcrypt php-xmlrpc }.each do |pkg|
  package pkg do
    action :install
  end
end

execute 'download wordpress bundle' do
  command "curl -L -o /tmp/wordpress.tar.gz #{node['wordpress']['download_url']}"
end

bash 'set up wordpress directory' do
  cwd node['wordpress']['apache_dir']
  code <<-EOH
    tar zxf /tmp/wordpress.tar.gz
    mv wordpress/* .
    rm -rf wordpress /tmp/wordpress.tar.gz
    chown -R #{node['wordpress']['apache_user']}:#{node['wordpress']['apache_group']} #{node['wordpress']['apache_dir']}
  EOH
end

template "#{node['wordpress']['apache_dir']}/wp-config.php" do
  source 'wp-config.php.erb'
  owner node['wordpress']['apache_user']
  group node['wordpress']['apache_group']
  mode 0600
end
