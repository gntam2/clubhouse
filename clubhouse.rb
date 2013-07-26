require 'rubygems'
require 'sinatra'
require 'haml'

require 'sinatra/activerecord'
configure(:development){ set :database, "sqlite3:///clubhouse.sqlite3" }
require './models'

require 'carrierwave'

class MyUploader < Carrierwave::Uploader::Base
	storage :file
	include Carrierwave::RMagick
	version :thumb do
		process :resize_to_fill => [200,200]
end

file = File.open()
uploader = MyUploader.new
uploader.store!(file)

get '/' do 
	haml :home
end

get '/login' do 
	haml :login
end

get '/signup' do
	haml :signup
end

get '/' do 
	haml :profile
end