require 'rubygems'
require 'sinatra/reloader'

require 'bundler/setup'
require 'pry-debugger-jruby'
require 'sinatra'

require 'sinatra/activerecord'

require './initialiser/load_app'
require './config/environments'
require './config/route'




configure :development do |c|
  require 'sinatra/reloader'
  c.also_reload "#{Sinatra::Application.controllers}/*.rb"
  c.also_reload "#{Sinatra::Application.models}/*.rb"
  c.also_reload "#{Sinatra::Application.controller_concerns}/*.rb"
  c.also_reload "#{Sinatra::Application.views}/*.rb"
  c.also_reload "#{Sinatra::Application.config_dir}/*.rb"
end

