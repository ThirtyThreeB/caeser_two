require 'sinatra'
require 'sinatra/reloader' if development?
str = ''
n = 0

def caeser(str, n)
  arr = str.split("")
  newArr = []

  arr.each do |x|
  # newArr << x.ord + n.to_i
	  if (x.ord + n.to_i).between?(65,90) | (x.ord + n.to_i).between?(97,122)
	    newArr << (x.ord+n.to_i).chr
	  elsif (x.ord == 32) | (x.ord == 33)
	    newArr << x.ord.chr
	  else
	    newArr << (x.ord + n.to_i-26).chr
	  end
  end
   newArr.join
end

get '/' do

	str = params[:phrase]
	n = params[:num]
	
	unless str == nil || str == nil
		cipher_str = caeser(str, n)
	end

	erb :index, :locals => {:cipher_str => cipher_str}
	
end



