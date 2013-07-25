require 'rubygems'
require 'sinatra'
require 'haml'

require 'sinatra/activerecord'
configure(:development){ set :database, "sqlite3:///clubhouse.sqlite3" }
require './models'

get '/' do 
	haml :home
end

get '/sign_up' do
	haml :sign_up
end

get '/profile' do 
	haml :profile
end