class River
  attr_reader :name, :fish
  def initialize(name, fish = [])
    @name = name
    @fish = []
  end

  def count_fish
    return @fish.length
  end

  def populate_river(fish, fish2, fish3)
    @fish << fish
    @fish << fish2
    @fish << fish3
  end

  def lose_fish(slow_fish)
    @fish.delete(slow_fish)
  end

  def fish_here?(name)
    return @fish.include?(name)
  end
end
