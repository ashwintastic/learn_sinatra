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
      @params
    end

    def post
      request.body.rewind
      JSON.parse(request.body.read)
    end

    def put
      post.merge(@params)
    end

    def delete
      put
    end

    def views
      sender_class = self.class.to_s.underscore.split('_')[0]
      "#{Sinatra::Application.views}/#{sender_class}"
    end
  end
end