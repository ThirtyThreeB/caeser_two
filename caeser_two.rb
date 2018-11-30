require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	"Caeser Two"
end

get '/home' do
	"This is the home page evidently"
end