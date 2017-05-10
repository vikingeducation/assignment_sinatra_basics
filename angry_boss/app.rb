require 'sinatra'
require 'erb'
require 'pry-byebug'

get "/" do
  redirect to("/boss")
end

get "/boss" do
  erb :tell_boss
end

post "/boss" do
  my_say = params[:my_say]

  boss_reply = "WHAT DO YOU MEAN, '#{my_say.upcase}'???? YOU'RE FIRED!!"

  erb :boss_replies, :locals => { :boss_reply => boss_reply }
end
