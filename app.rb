require 'sinatra'
require 'pry'

get '/boss' do 
  erb :angry_boss_form	

end

post '/show_message' do
	my_input = params[:input]

	erb :show_message, locals: {input: my_input}
end

get '/rock_paper_scissors' do 
	erb :rps_form
end

helpers do 
	def cpu_choice
		num = rand(3) + 1
	end

	def win?(cpu_choice, choice)
		  #puts losing combinations
	    puts "You Lose!" if choice == 1 && cpu_choice == 2 || choice == 2 && cpu_choice == 3
		  #puts wining combinations
		  puts "You Win!" if choice == 1 && cpu_choice == 3 || choice == 3 && cpu_choice == 2 || choice == 2 && cpu_choice == 1
		  #puts draw if computer and plater pick the same 
		  puts "Draw!" if choice == cpu_choice

	end
	end

post '/result' do 
	choice = params[:player_choice]
	cpu = cpu_choice
	result = win?
	

	erb :result, locals: { player_choice: choice, cpu: cpu}

	end