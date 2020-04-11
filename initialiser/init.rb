require 'dotenv'
require './initialiser/set_configs'

module Initialiser
  class Init
    class << self
      def init
        Sinatra::Application.reloadable.each do |r|

          Dir["#{Sinatra::Application.send(r)}/*.rb"].reverse.each do |file|
            require file
          end
        end

        Dir["#{Sinatra::Application.views}/*.haml"].each do |file|
          require file
        end
      end

      def reload_app
        Sinatra::Application.configure :development do |c|
          Sinatra::Application.reloadable.each do |r|
            c.also_reload "#{Sinatra::Application.send(r)}/*.rb"
          end
        end
      end

    end
  end
end

Initialiser::Init.init
Initialiser::Init.reload_app


