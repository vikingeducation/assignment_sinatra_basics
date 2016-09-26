require 'sinatra'
require 'pry-byebug'

# the input page shows the text field and button - show_form

# the get is showing this page
get '/input_form' do

	erb :input_form

end


post '/show_boss' do

	my_name = params[ :name ]


	erb :show_boss, locals: { name: my_name }


end
# if the user puts 'good morning'
	# the page directs to the boss response
	# the template is WHAT DO YOU MEAN, #{var}???? YOURE FIRED!!"

