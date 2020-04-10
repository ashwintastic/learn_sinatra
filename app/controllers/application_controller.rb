class ApplicationController < Sinatra::Base
#include SinatraExt::SinatraBase
  require "sinatra/reloader"
  configure :development do
    register Sinatra::Reloader
  end
end
