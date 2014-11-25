require 'bundler'
Bundler.require

require_relative './models/goat.rb'
require_relative './models/user.rb'

class MyApp < Sinatra::Base

  get '/home' do
    erb :index
  end
  
  get '/goat' do
    @goat1 = Goat.new("Callie",7)
    erb :goat
  end

  get '/user' do
    @user1 = User.new("John", "John.doe@gmail.com", "May 7, 1991")
    @user2 = User.new("Jacob", "Jacob.doe@gmail.com", "May 7, 1991")
    @user3 = User.new("Jingle", "Jingle.doe@gmail.com", "May 7, 1991")
    @user4 = User.new("Himer Schmidt", "Himer.doe@gmail.com", "May 7, 1991")
    @all_the_users = User.all
    erb :user
  end

end