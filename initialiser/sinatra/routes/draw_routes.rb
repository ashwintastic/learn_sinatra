module Sinatra
  module Routes
    class << self
      def parser(url, call, verb)
        controller_class, method = call.split('#')
        controller_class = Object.const_get(controller_class)

        Sinatra::Base.send(verb.to_sym, url) do
          controller_class.new!(self).send(method)
        end
      end



      def get(url, call)
        parser(url, call, 'get')
      end

      def post(url, call)
        parser(url, call, 'post')
      end

      def put(url, call)
        parser(url, call, 'put' )
      end

      def delete(url, call)
        parser(url, call,  'delete')
      end

      def draw(&block)
        instance_eval &block
      end
    end

  end
end