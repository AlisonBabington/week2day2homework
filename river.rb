class River

  attr_reader :name, :fish
  attr_writer :fish

  def initialize(name, fish)
    @name = name
    @fish = fish || []
  end

  def lose_fish(fish_eaten)
    @fish.delete(fish_eaten)
  end

  def count_fish
    @fish.count_fish
  end


end
