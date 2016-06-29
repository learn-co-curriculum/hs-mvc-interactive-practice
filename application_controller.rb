require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/about' do
    erb :about
  end

  post '/results' do
    @new_string = randomize(params[:string])
    erb :results
  end

end
