require 'sinatra'

get '/' do 
  erb :form
end

post '/lol' do 
  output = "WHAT DO YOU MEAN, '#{params[:input].upcase}'???? YOU'RE FIRED!!"
  erb :lol, :locals => {:output => output}
end
