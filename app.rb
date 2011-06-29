require 'sinatra'
require 'curb'
require 'open-uri'

get '/:username' do
	@xml_file = open("http://github.com/api/v2/xml/repos/show/#{params[:username]}")
	haml :index
end