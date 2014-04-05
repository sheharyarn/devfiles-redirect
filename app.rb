require 'sinatra'

ENDPOINT = "http://www.devfiles.co"

get '/' do 
	redirect ENDPOINT, 301
end

get '/:token' do
	redirect "#{ENDPOINT}/download/#{params[:token]}/", 301
end

get '/*' do
	redirect ENDPOINT, 301
end