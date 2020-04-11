require 'rubygems'
require 'sinatra/reloader'

require 'bundler/setup'
require 'dotenv'
Dotenv.load
require 'pry-debugger-jruby'
require 'sinatra'
require 'haml'


require 'sinatra/activerecord'


require './initialiser/init'
require './config/environments'
require './config/route'



