class UserController < ApplicationController




  def index
    erb :index
  end

  def list

  end


  def create
    { a: 20, b: 47, c: 90 }.to_json
  end

  def edit
    p params
    'hello'
  end


end

