class Bear

attr_reader :name, :type, :stomach, :speaks
attr_writer :speaks

  def initialize(name, type, stomach, speaks)
    @name = name
    @type = type
    @stomach = stomach || []
    @speaks = speaks
  end

  def take_fish(river)
    @stomach << river
  end

  def check_food
    @stomach.count
  end
end
