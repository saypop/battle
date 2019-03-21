class Player

  DEFAULT_HIT_POINTS = 100
  DEFAULT_DAMAGE = 10

  attr_reader :name, :hit_points

  def initialize(name, life_total = DEFAULT_HIT_POINTS)
    @name = name
    @life_total = life_total
    @hit_points = @life_total
  end

  def take_damage(hit_points = DEFAULT_DAMAGE)
    @hit_points -= hit_points
  end

  def attack(opponent)
    opponent.take_damage
  end

  def life_total
    @life_total
  end

end
