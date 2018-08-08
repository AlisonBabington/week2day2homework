class River

  attr_reader :name, :fish
  attr_writer :fish

  def initialize(name, fish)
    @name = name
    @fish = fish || []
  end

  def lose_fish
    return @fish.pop if @fish.count > 0
    return Fish.new("Magic Fish")
  end

  def count_fish
    @fish.count
  end


end
