require 'sinatra'

configure do
  enable :sessions
end

get '/' do
  erb :index
end

get '/tablero' do
  @@jugador1 = params["jugador1"]
  @@jugador2 = params["jugador2"]
  @@titulo = @@jugador1 + " vs " + @@jugador2
  erb :tablero  
end





