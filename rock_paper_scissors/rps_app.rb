
require 'sinatra'
require 'pry-byebug'


get '/' do
  erb :rps_display
end

post '/rps_choose' do

  # binding.pry
  get_decision = params[:h_decision]
  erb :rps_result, locals: {h_decision: get_decision }

end