#shebang
#!/usr/bin/env ruby

require 'sinatra'
require_relative 'gamecore.rb'

helpers Help 

get '/game' do

  '<h1>Choose rock, paper or scissors?</h1>

  <form action="/end" method="post">
    <input type="radio" name="choice" value="rock">Rock<br>
    <input type="radio" name="choice" value="paper">Paper<br>
    <input type="radio" name="choice" value="scissors">Scissors<br>
    <input type="submit" value="Play">
  </form>'

end

post '/end' do
  answer = params[:choice]
  result = helper(answer)

    
  "<h1>'#{result}'</h1>"
end