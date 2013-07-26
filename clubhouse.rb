require 'rubygems'
require 'sinatra'
require 'haml'

require 'sinatra/activerecord'
configure(:development){ set :database, "sqlite3:///clubhouse.sqlite3" }
require './models'

get '/login' do 
	haml :login
end

get '/signup' do
	haml :signup
end

get '/' do 
	haml :profile
end