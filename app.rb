require 'sinatra'

configure do
  enable :sessions
end

get '/' do
  erb :index
end

get '/tablero' do
  @@puntos_jugador1 = 0
  @@puntos_jugador2 = 0

  @@jugador1 = params["jugador1"]
  @@jugador2 = params["jugador2"]
  @@titulo = @@jugador1 + " vs " + @@jugador2
  erb :tablero  
end

get '/jugador1' do
  @@puntos_jugador1 = 15

  erb :tablero  
end

get '/jugador2' do
  @@puntos_jugador2 = 15

  erb :tablero  
end




