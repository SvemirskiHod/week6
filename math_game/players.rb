class Players
  attr_reader :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 3
  end

  def reduce_life
    @life_points -=  1
  end

end

# joao = Players.new("Joao")
# puts joao.name
# joao.reduce_life
# puts joao.life_points