class Game

  attr_reader :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = 0
  end

  def attack(player)
    player.take_damage
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

end
