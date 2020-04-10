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