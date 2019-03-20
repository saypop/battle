class Player

  DEFAULT_HIT_POINTS = 100
  DEFAULT_DAMAGE = 10

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def take_damage(hit_points = DEFAULT_DAMAGE)
    @hit_points -= hit_points
  end

  def attack(opponent)
    opponent.take_damage
  end

end
