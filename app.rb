require 'sinatra'

get '/boss' do
  erb :index
end
#Here root path is going to look in view and then index folder.
#Line 4 is what we serve back to the user.

post '/boss' do
  input = params[:prompt]
  erb :output, :locals => {:blah => input}
end

#post, when use posts information to server, what do we do with it
#params, taking everything that's input and assigning them to a hash
#locals hash send to ERB to be able to use
#locals hash sets an ERB variable = whatever (usually a parameter of the user input)
##Anytime ERB needs a variable, you must use the locals hash

get '/rps' do

  erb :player_input

end

post '/rps' do

  comp_selection = ["rock", "paper", "scissors", "dynamite"].sample
  move = params[:move]

  if move == comp_selection
    victory = "tied"
  end
  if move == "rock"
    if comp_selection == "paper"
      victory = "lost"
    else
      victory = "won!!!"
    end

  elsif move == "paper"
    if comp_selection == "rock"
      victory = "won!!!"
    else
      victory = "lost"
    end

  elsif move == "scissors"
    if comp_selection == "paper"
      victory = "won!!"
    else
      victory = "lost"
    end
  end

  if comp_selection == "dynamite"
    victory = "you lost, computer blew you up with dynamite!"
  end
      
  erb :outcome, :locals => {:victory => victory}


end