# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server 'example.com', user: 'deploy', roles: %w{app db web}, my_property: :my_value
# server 'example.com', user: 'deploy', roles: %w{app web}, other_property: :other_value
# server 'db.example.com', user: 'deploy', roles: %w{db}

server 'localhost', user: 'vagrant', roles: %w{web app db}, port: 2222

set :nginx_server_name, 'localhost'
set :branch, :exam2
set :deploy_to, '/home/vagrant/webapps'