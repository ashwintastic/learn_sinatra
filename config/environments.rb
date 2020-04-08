require 'yaml'

env = Sinatra::Application.env

ActiveRecord::Base.establish_connection(Sinatra::Application.db_config[env])