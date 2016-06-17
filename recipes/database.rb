#
# Cookbook Name:: app_sonarqube
# Recipe:: default
#
#
# Author Abhishek Srivastava
#
# All rights reserved - Do Not Redistribute
#
# Configure the MySQL service.
mysql_service 'default' do
  port node['sonarqube']['database']['port']
  server_root_password node['sonarqube']['database']['password']
  action [:create, :restart]
  data_dir '/data/mysql'
end

# Write schema seed file to filesystem.
template '/tmp/create-table.sql' do
  source 'create-table.sql.erb'
  owner 'root'
  group 'root'
  mode 0755
  notifies :run, 'execute[initialize_database]', :immediately
end

# Seed the database with a table and test data.
execute 'initialize_database' do
  command "mysql -h #{node['sonarqube']['database']['host']} -u #{node['sonarqube']['database']['username']} -p#{node['sonarqube']['database']['password']} < /tmp/create-table.sql"
  user 'root'
  group 'root'
  action :nothing
end
