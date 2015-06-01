# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

require 'capistrano/rails'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'rvm1/capistrano3'
require 'capistrano/bundler'
require 'capistrano/unicorn_nginx'
# require 'capistrano3/unicorn'

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }