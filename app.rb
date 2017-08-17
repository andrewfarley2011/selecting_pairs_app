
require 'sinatra'
require_relative 'random_pairs.rb'

get "/" do
erb :index
end

get '/pairs'do
	names = params.values
	pair = pair(names)
erb :pairs, :locals => {pair: pair}
end

post '/pairs' do
	names = params.values
	pair = pair(names)
erb :pairs, :locals => {pair: pair}
end

