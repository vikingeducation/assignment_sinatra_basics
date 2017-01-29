
require 'sinatra'
require 'pry-byebug'

get '/angry_boss' do
  erb :angry_boss
end

post '/angry_boss' do

  # binding.pry
  qq = params[:question]
  erb :angry_boss_answer, locals: {question: qq }

end