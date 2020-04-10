
set :db_yaml, File.join(Sinatra::Application.root, '/config/database.yml')
set :env , ENV['ENV'] || 'development'
set :db_config , YAML::load_file(Sinatra::Application.db_yaml)

set :models, Proc.new { File.join(Sinatra::Application.root, '/app/models') }
set :views, Proc.new { File.join(Sinatra::Application.root, '/app/views') }
set :controllers, Proc.new { File.join(Sinatra::Application.root, '/app/controllers') }

set :controller_concerns , Proc.new { File.join(controllers, '/concerns') }