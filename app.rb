#shebang
#!/usr/bin/env ruby

require 'sinatra'

get '/boss' do

  '<h1>Your Message</h1>
  <form action="/boss" method="post">
    <input type="text" name="message">
    <input type="submit" value="say">
  </form>'

end

post '/boss' do
  answer = params[:message].upcase
  "WHAT DO YOU MEAN, '#{answer}'???? YOU'RE FIRED!!"
end