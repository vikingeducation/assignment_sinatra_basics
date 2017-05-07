require 'sinatra'

get '/boss' do 
  erb :angry_boss_form	

end

post '/show_message' do
	my_input = params[:input]

	erb :show_message, locals: {input: my_input}
end