module SinatraExt
  module SinatraBase
    attr_accessor :params, :request, :response

    def initialize(sinatra_app)
      @params   = sinatra_app.params
      @request  = sinatra_app.request
      @response = sinatra_app.response
      super
    end


    private

    def params
      send(request.request_method.downcase.to_sym)
    end

    def get
      params
    end

    def post
      request.body.rewind
      JSON.parse(request.body.read)
    end

    def put
      post
    end

    def delete
      post
    end
  end
end