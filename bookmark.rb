require 'sinatra'
require 'data_mapper'
env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

require "./lib/link"

DataMapper.finalize
DataMapper.auto_upgrade!


class Bookmark < Sinatra::Base

	get '/' do
		# "Hello World"
		erb :index 
	end

end

