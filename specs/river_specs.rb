require('minitest/autorun')
require('minitest/rg')

require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Sea Bream")

    @river1 = River.new("Tweed", [@fish1, @fish2,@fish3 ])
  end

  def test_river_name
    assert_equal("Tweed", @river1.name)
  end

  def test_fish_count
    assert_equal(3, @river1.fish.count)
  end

  def test_river_lost_fish()
    @river1.lose_fish(@fish1)
    assert_equal(2, @river1.fish.count)
  end

end
