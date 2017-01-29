
require 'sinatra'
require 'pry-byebug'

get '/rps_display' do
  erb :rps_display
end

post '/rps_choose' do

  # binding.pry
  get_decision = params[:decision]
  erb :rps_result, locals: {h_decision: get_decision }

end