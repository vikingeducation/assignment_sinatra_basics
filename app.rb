require 'sinatra'
require 'erb'

require './helpers/rps_helper.rb'
helpers RPSHelper

enable :sessions

get '/' do
	erb :'layout.html' do
		erb :'index.html'
	end
end

get '/angry-boss' do
	locals = {
		:title => 'Angry Boss',
		:message => session[:angry_boss]
	}
	session.delete(:angry_boss)
	erb :'layout.html', :locals => locals do
		erb :'angry_boss/index.html', :locals => locals
	end 
end

post '/angry-boss' do
	unless params[:angry_boss].empty?
		session[:angry_boss] = params[:angry_boss]
		redirect '/angry-boss'
	else
		redirect '/angry-boss?error=1'
	end
end

get '/rock-paper-scissors' do
	locals = {
		:title => 'Rock Paper Scissors',
		:shoot => session[:rps]
	}
	session[:rps] = nil
	erb :'layout.html', :locals => locals do
		erb :'rock_paper_scissors/index.html', :locals => locals
	end
end

post '/rock-paper-scissors' do
	if params[:rps]
		shoot = {
			:player => params[:rps],
			:computer => ['rock', 'paper', 'scissors'].shuffle.first,
		}
		shoot[:winner] = RPSHelper.winner_of(shoot)
		session[:rps] = shoot
		redirect '/rock-paper-scissors'
	else
		redirect '/rock-paper-scissors?error=1'
	end
end