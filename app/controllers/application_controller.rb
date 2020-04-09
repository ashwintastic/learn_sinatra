class ApplicationController < Sinatra::Base

  attr_reader :params, :request, :response

  def initialize(sinatra_app)
     @params   = sinatra_app.params
     @request  = sinatra_app.request
     @response = sinatra_app.response
    super
  end



end
