require 'sinatra'

get "/boss" do
  erb :form_boss
end

post "/boss" do
  sentence = params[:sentence]
  erb :answer_boss, locals: {sentence: sentence}
end