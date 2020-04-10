require 'rubygems'
require 'sinatra/reloader'

require 'bundler/setup'
require 'pry-debugger-jruby'
require 'sinatra'

require 'sinatra/activerecord'

require './initialiser/load_app'
require './config/environments'
require './config/route'



reloadable = %w[controllers models controller_concerns views config_dir]
configure :development do |c|
  reloadable.each do |r|
    c.also_reload "#{Sinatra::Application.send(r)}/*.rb"
  end
end

