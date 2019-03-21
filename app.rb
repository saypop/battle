require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/attack.rb'

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
    if @game.over?
      erb :game_over
    else
      @game.next_turn
      erb :play
    end
  end

  get '/confirmation' do
    @game = $game
    Attack.run(@game.defender)
    erb :confirmation
  end

  run! if app_file == $0

end
