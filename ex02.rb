require 'sinatra'

get '/hi' do
	"hello world"
end

get '/sum/:x' do
	"soma: #{params[:x]} + 1: " + (params[:x].to_i+1).to_s
end

use Rack::Auth::Basic do |username, password|
  username == 'admin' && password == 'secret'
end
