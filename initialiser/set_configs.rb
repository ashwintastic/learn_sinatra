
  set :reloadable , %w[ controller_concerns helpers models controllers views config_dir ]

  set :database_file, File.join(Sinatra::Application.root, '/config/database.yaml')
  set :db_yaml, File.join(Sinatra::Application.root, '/config/database.yaml')
  set :env , ENV['ENV'] || 'development'



  set :db_config , YAML.load(ERB.new(File.read("#{Sinatra::Application.root}/config/database.yaml")).result)

  set :models, Proc.new { File.join(Sinatra::Application.root, '/app/models') }
  set :views, Proc.new { File.join(Sinatra::Application.root, '/app/views') }
  set :controllers, Proc.new { File.join(Sinatra::Application.root, '/app/controllers') }

  set :controller_concerns , Proc.new { File.join(controllers, '/concerns') }

  set :config_dir , Proc.new { File.join(Sinatra::Application.root, '/config') }

  set :helpers , Proc.new { File.join(Sinatra::Application.root, '/app/helpers') }

