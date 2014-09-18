require 'bundler'
Bundler.require
require_relative 'lib/dog.rb'

class MyApp < Sinatra::Base

  get '/dogs' do
    @fido = Dog.new("Fido", 10, "Yorkie")
    erb :dog
  end

end