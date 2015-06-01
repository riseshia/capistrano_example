# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'capi'
set :repo_url, 'https://github.com/riseshia/capistrano_example.git'
set :deploy_to, '/home/vagrant/webapps/capi'


set :rbenv_type, :user # :system or :user
set :rbenv_ruby, '2.2.2'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

# set :linked_dirs, %w{bin log tmp/backup tmp/pids tmp/cache tmp/sockets vendor/bundle}
# set :unicorn_pid, shared_path.join("tmp/pids/unicorn.pid")

# # set :bundle_jobs, 4

# after 'deploy:publishing', 'deploy:restart'
# namespace :deploy do
#   task :restart do
#     invoke 'unicorn:restart'
#   end
# end
