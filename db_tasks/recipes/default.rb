#
# Cookbook Name:: db_tasks
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash 'run_migrate' do
  cwd '/srv/www/granbazar/current'
  code <<-EOH
    bundle exec rake db:migrate;
    sleep 1;
    EOH
end
