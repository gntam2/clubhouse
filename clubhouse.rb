require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do 
	haml :home
end

get '/sign_up' do
	haml :sign_up
end

get '/profile' do 
	haml :profile
end