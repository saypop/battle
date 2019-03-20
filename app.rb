require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @game.next_turn
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.defender)
    erb :attack
  end

  run! if app_file == $0

end
