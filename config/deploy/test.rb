# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server 'example.com', user: 'deploy', roles: %w{app db web}, my_property: :my_value
# server 'example.com', user: 'deploy', roles: %w{app web}, other_property: :other_value
# server 'db.example.com', user: 'deploy', roles: %w{db}

puts shared_path
puts fetch(:unicorn_pid)
puts fetch(:deploy_to)

server 'localhost', user: 'vagrant', roles: %w{web app db}, port: 2222
# set :unicorn_config, shared_path.join("config/unicorn.rb")
