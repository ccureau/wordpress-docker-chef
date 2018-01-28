#
# Cookbook:: wordpress
# Recipe:: _config_supervisord
#
# Copyright:: 2018, Chris Cureau, All Rights Reserved.

cookbook_file '/etc/supervisord.d/wordpress.ini' do
  source 'wordpress.ini'
  mode 0600
  owner 'root'
  group 'root'
end
