require_relative '../initialiser/sinatra/routes/dispatcher'

Sinatra::Routes.draw do
  get '/', 'UserController#index'
  get '/user', 'UserController#list'
  post '/user/new', 'UserController#create'
  put '/user/:id/edit', 'UserController#edit'
end