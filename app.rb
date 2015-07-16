#!/usr/bin/env ruby

require 'sinatra'
require 'erb'

get '/boss' do
	erb :show_form
end

post '/boss' do
	input = params[:our_input]
	erb :show_form_response, :locals => {:input => input}
end