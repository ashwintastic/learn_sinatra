module Route
  def get(url, call)
    controller_class, method = call.split('#')
    controller_class = Object.const_get(controller_class)

    Sinatra::Base.get url do
      controller_class.new!.send(method)
    end
  end


end





get '/', 'UserController#index'

