require 'DataMapper'

class Link

	include DataMapper::Resouce

	property :id, Serial
	property :title, String
	property :url String
end