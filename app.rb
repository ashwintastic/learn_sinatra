require 'rubygems'
require 'sinatra/reloader'
require 'bundler/setup'
require 'pry-debugger-jruby'
require 'sinatra'

require 'sinatra/activerecord'

require './initialiser/load_app'
require './config/environments'
require './config/route'


