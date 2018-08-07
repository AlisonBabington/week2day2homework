require('minitest/autorun')
require('minitest/rg')

require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class BearTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Sea Bream")

    @river1 = River.new("Tweed", [@fish1, @fish2,@fish3 ])

    @bear1 = Bear.new("Teddy", "Grizzly", [], "Roars")
  end

  def test_check_bear_has_name
    assert_equal("Teddy", @bear1.name)
  end

  def test_check_bear_has_type
    assert_equal("Grizzly", @bear1.type)
  end

  def test_check_bear_has_stomach
    assert_equal(0, @bear1.stomach.count)
  end

  def test_bear_take_fish_from_river_add_to
    fish1 = Fish.new("Salmon")
    @bear1.take_fish(@river1.fish[0])
    @river1.lose_fish(@river1.fish[0])
    assert_equal(1, @bear1.stomach.count)
    assert_equal(2, @river1.fish.count)
  end

  def test_bear_roars
    assert_equal("Roars" , @bear1.speaks)
  end


end
