require 'rubygems'
require 'bundler/setup'
require 'pry-debugger-jruby'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

require './initialiser/load_app'
require './config/environments'
require './config/route'


#
#
# configure :development do
#   register Sinatra::Reloader
# end


