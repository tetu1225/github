require 'sinatra'
require 'nokogiri'
require 'open-uri'

# ユーザのリポジトリ一覧を取得
get '/user_repo/:username' do
	@req_url = "http://github.com/api/v2/xml/repos/show/#{params[:username]}"
	@doc = Nokogiri::XML(open @req_url)
	
	@description = @doc.xpath('//description')
	
	haml :user_repo
end

