
require 'sinatra'
require_relative 'random_pairs.rb'

get "/" do
	erb :index
end

get '/pairs'do
	names = params[:names]
	pair = params[:pair]
	erb :pairs, :locals => {names: names, pair: pair}
end

post '/pairs' do
	names = params[:names]
	pair = params[pair]
	redirect '/confirm_pairs?names=' + names + '&pair=' + pairs
end

get '/confirm_pairs' do
	names = params[:names]
	pair = params[:pair]
	erb :confirm_pairs, :locals => {pair: pair, names: names}		
end

post '/confirm_pairs' do
	names = params[:names]
	pair = params[:pair]
	erb :confirm_pairs, :locals => {pair: pair, names: names}		
end


