module Ashwin
  attr_accessor :a
  def initialize(a)
    self
    @a = a
  end
end


class Kumar
  include Ashwin
end




YAML.load( ERB.new (File.read(Sinatra::Application.db_yaml)))

