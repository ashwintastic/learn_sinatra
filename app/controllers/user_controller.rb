class UserController < ApplicationController




  def index
    erb :index
  end

  def list

  end


  def create
    { a: 20, b: 47, c: 909 }.to_json
  end

  def edit
  end


end

