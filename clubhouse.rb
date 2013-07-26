require 'rubygems'
require 'sinatra'
require 'haml'

require 'sinatra/activerecord'
configure(:development){ set :database, "sqlite3:///clubhouse.sqlite3" }
require './models'

HEAD
get '/login' do 
	haml :login

require 'carrierwave-activerecord'

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
new gem and clubhouse
end

get '/signup' do
	haml :signup
end

get '/' do 
	haml :profile
end