require 'sinatra'

configure do
  enable :sessions
end

get '/' do
  erb :index
end

get '/tablero' do
  erb :tablero  
end
