def parser(url, call, verb)
  controller_class, method = call.split('#')
  controller_class = Object.const_get(controller_class)

  Sinatra::Base.send(verb.to_sym, url) do
    p params
    controller_class.new!(self).send(method)
  end


end


def get_route(url, call)
  parser(url, call, 'get')
end

def post_route(url, call)
  parser(url, call, 'post')
end

def put_route(url, call)
  parser(url, call, 'put' )
end

def delete_route(url, call)
  parser(url, call,  'delete')
end



get_route '/', 'UserController#index'

