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
    @game = Game.create(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @game.next_turn
    erb :play
  end

  get '/turn_end' do
    @game = Game.instance
    Attack.run(@game.defender)
    erb :turn_end
  end

  get '/turn_start' do
    @game = Game.instance
    if @game.over?
      erb :game_over
    else
      erb :turn_start
    end
  end

  run! if app_file == $0

end
