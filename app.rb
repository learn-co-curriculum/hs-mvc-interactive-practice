require 'bundler'
Bundler.require
require_relative 'lib/dog.rb'

class MyApp < Sinatra::Base

  get '/dog' do
    @fido = Dog.new("Fido", 10, "Yorkie")
    @rolf = Dog.new("Rolf", 4, "Beagle")
    @rex = Dog.new("Rex", 4, "Collie")
    @bug = Dog.new("Bug", 4, "Pug")
    @dogs = [@fido, @rolf, @rex, @bug]
    erb :dog
  end

end