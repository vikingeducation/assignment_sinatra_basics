require 'sinatra'
require 'sinatra/reloader'

get "/boss" do
  erb :hi_boss
end


post "/boss" do
  statement = params[:statement].upcase

  erb :boss_response, locals: { statement: statement }
end