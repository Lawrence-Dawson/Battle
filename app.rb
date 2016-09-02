require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_one])
    $player_2 = Player.new(params[:player_two])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @hp = $player_2.hp
    erb(:play)
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    Game.new.attack(@player_2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
