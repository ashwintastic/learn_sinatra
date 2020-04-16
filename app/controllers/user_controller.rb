class UserController < ApplicationController
include UserHelper


  def index
    binding.pry
    @ashwini = "ashwini from instance variable"
    haml :index, { views: views }
  end

  def list


  end


  def create
   @user = User.new user_params
   if @user.save
     {message: 'User Created'}.to_json
   else
     { message: 'User not created'}.to_json
   end
  end

  def edit
    p params
    'hello'
  end

  private

  def user_params
   params.slice(:name, :email)
  end


end

