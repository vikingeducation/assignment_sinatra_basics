require 'sinatra'

get '/boss' do 
  erb :form
end

post '/boss' do 
  output = "WHAT DO YOU MEAN, '#{params[:input].upcase}'???? YOU'RE FIRED!!"
  #redirect to("/boss?output=#{output}")
  #passing param using redirect?
  erb :boss, :locals => {:output => output}
end
