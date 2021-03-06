class Game

  attr_reader :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = 0
  end

  def next_turn
    @turn += 1
  end

  def attacker
    if @turn.odd?
      @players.first
    else
      @players.last
    end
  end

  def defender
    if @turn.even?
      @players.first
    else
      @players.last
    end
  end

  def over?
    defender.hit_points == 0? true:false
  end


  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

end
