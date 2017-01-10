# rps.rb

require 'sinatra'

get '/play' do
  erb :input_choice
end

post '/show_result' do
	ai_choice = [1,2,3].sample
  	user_choice = params[:choice]
  	winner_string = ""
  	(ai_choice == 1) ? ai_choice_s = "Rock" : ((ai_choice == 2) ? ai_choice_s = "Paper" : ai_choice_s = "Scissors")
  	(user_choice.to_i == 1) ? user_choice_s = "Rock" : ((user_choice.to_i == 2) ? user_choice_s = "Paper" : user_choice_s = "Scissors")
  	if user_choice.to_i == ai_choice
  		winner_string = "Game is a tie"
  	else
  		case ai_choice
  		when 1
  			(user_choice.to_i == 2) ? winner_string = "User is the winner" : winner_string = "AI is the winner"
  		when 2
			(user_choice.to_i == 3) ? winner_string = "User is the winner" : winner_string = "AI is the winner"
  		when 3
  			(user_choice.to_i == 1) ? winner_string = "User is the winner" : winner_string = "AI is the winner"
  		end
  	end

  erb :show_result, locals: { winner_string: winner_string, ai_choice: ai_choice_s, user_choice: user_choice_s}
end