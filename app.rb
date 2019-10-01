require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/attack' do
    @player_1 = $player_1
    p @player_1
    @player_2 = $player_2
    @player_1.attack(@player2)
    erb :attack
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
