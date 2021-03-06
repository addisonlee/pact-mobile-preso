require 'sinatra'
require 'json'
require 'yaml'

before do
  content_type :json
  headers 'Access-Control-Allow-Origin' => '*',
          'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST']
end

set :protection, false

get '/feedMe' do
	content_type :json

	{ "message" => "Meow!", "status" => "happy" }.to_json
end
