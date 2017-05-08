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
		cpu = %w(rock paper scissors)
		return cpu.sample
	end

	def win?(cpu_choice, choice)
		if cpu_choice == 'rock'  && choice == 'paper' ||
			 cpu_choice == 'paper' && choice == 'scissor' ||
			 cpu_choice == 'scissor' && choice == 'rock'
		end
	 
	end
	def lose?(cpu_choice, choice)
		 cpu_choice == 'rock'  && choice == 'scissor' ||
     cpu_choice == 'paper' && choice == 'rock' ||
     cpu_choice == 'scissor' && choice == 'paper'
	end

post '/result' do 
	choice = params[:player_choice]
	cpu = cpu_choice
	lose = lose?
	win = win?
	

	erb :result, locals: { player_choice: choice, cpu: cpu, win: win, lose: lose}

	end