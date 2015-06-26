require 'sinatra'
require 'erb'


# Angry Boss

get "/boss" do
  erb :boss_main
end


post "/boss" do
  erb :boss_response, :locals => { :greeting => params[:greeting] }
end




# Rock, Paper, Scissors

require './helpers/rps_helper.rb'
helpers RPSHelper

get "/rock_paper_scissors" do
  erb :rps_main
end


post "/rock_paper_scissors" do
  result = compare([ params[:'player-input'], ai_choice ])

  erb :rps_result, :locals => { :result => result }
end




# Job scraper

require './helpers/scraper_helper.rb'
helpers ScraperHelper

get "/scrape" do
  scraper = ScraperHelper::DiceScraper.new

  results = scraper.search(params)

  erb :scraper_result, :locals => { :results => results, :today => Date.today }
end