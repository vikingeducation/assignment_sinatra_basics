require 'sinatra'
require 'erb'

get '/' do

  erb :boss
end

post '/' do
  say = params[:said].upcase

  "<h1>WHAT DO YOU MEAN, '#{say}'???? YOU'RE FIRED!!</h1>"

end
