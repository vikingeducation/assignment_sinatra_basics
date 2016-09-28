require 'sinatra'

get '/input_form' do

	erb :input_form

end


post '/show_boss' do

	my_name = params[ :name ]


	erb :show_boss, locals: { name: my_name }


end


