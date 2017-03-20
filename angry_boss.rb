require "sinatra"
require "erb"

get "/angry-boss" do
  message = nil
  locals = {locals: {message: message}}
  erb :angry_boss, locals
end

post "/angry-boss" do
  message = params[:message].upcase
  msg = "WHAT DO YOU MEAN, '#{message}'???? YOU'RE FIRED!!"
  locals = {locals: {message: msg}}
  erb :angry_boss, locals
end
