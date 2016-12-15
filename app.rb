require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'json'
require 'sinatra/cross_origin'

require_relative 'db/connection'
require_relative './models/todo'


configure do
  enable :cross_origin
end


get '/' do
  @todos = Todo.all
  content_type :json
  @todos.to_json
end
