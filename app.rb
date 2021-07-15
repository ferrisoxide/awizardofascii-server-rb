require 'sinatra'
require "sinatra/json"
require "sinatra/activerecord"

require_relative 'models/world'

get '/' do
  
end

get '/worlds/' do
  json(World.all.select(:id, :name))
end
