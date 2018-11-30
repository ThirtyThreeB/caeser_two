require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
	"Caeser Two"
end

get '/home'
	"This is the home page evidently"
end