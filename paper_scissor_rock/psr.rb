require 'sinatra'
require "pry-byebug"
require_relative 'shared/psr_logic'

helpers PsrLogic


get "/" do
  erb :main_page_game
end

post "/result" do
  p = params[ :choice ]
  c = computer_choice
  result = compare( p, c )
  binding.pry
  erb :result, locals: { p: p, c: c, result: result }
end