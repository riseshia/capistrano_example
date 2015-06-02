# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'capi'
set :repo_url, 'https://github.com/riseshia/capistrano_example.git'

set :rbenv_type, :user # :system or :user
set :rbenv_ruby, '2.2.2'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

set :deploy_to, '/home/vagrant/webapps/capi'

set :nginx_server_name, 'localhost'
set :branch, :exam2
