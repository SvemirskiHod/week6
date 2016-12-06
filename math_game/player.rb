class Player
  attr_reader :name, :life_points

  def initialize(name, life_points = 3)
    @name = name
    @life_points = life_points
  end

  def reduce_life
    @life_points -=  1
  end

end

