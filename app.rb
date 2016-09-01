require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/create_puppy' do
    @new_puppy = Puppy.new(params["name"], params["breed"], params["age"])
    erb :display_puppy
  end


end
