require 'bundler'
Bundler.require

require_relative './models/goat.rb'

class MyApp < Sinatra::Base

  get '/home' do
    erb :index
  end
  
  get '/goat' do
    @goat1 = Goat.new("Callie",7)
    erb :goat
  end

end