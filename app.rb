require 'sinatra'
require './lib/tablero'

configure do
  enable :sessions
end

get '/' do
  erb :index
end

get '/tablero' do
  @@tablero = Tablero.new
  @@puntos_jugador1 = @@tablero.get_puntos_jugador_1
  @@puntos_jugador2 = @@tablero.get_puntos_jugador_2

  @@jugador1 = params["jugador1"]
  @@jugador2 = params["jugador2"]
  @@titulo = @@jugador1 + " vs " + @@jugador2
  erb :tablero  
end

get '/jugador1' do
  @@tablero.puntuar_jugador_1

  @@puntos_jugador1 = @@tablero.get_puntos_jugador_1
#  if @@puntos_jugador1 == 45
#    @@puntos_jugador1 = 40
#  end

  erb :tablero  
end

get '/jugador2' do
  @@puntos_jugador2 = 15

  erb :tablero  
end




