
require './initialiser/set_configs'


Dir["#{Sinatra::Application.controller_concerns}/*.rb"].each do |file|
  require file
end


Dir["#{Sinatra::Application.models}/*.rb"].each do |file|
  require file
end

Dir["#{Sinatra::Application.controllers}/*.rb"].reverse.each do |file|
  require file
end

Dir["#{Sinatra::Application.views}/*.haml"].each do |file|
  require file
end
