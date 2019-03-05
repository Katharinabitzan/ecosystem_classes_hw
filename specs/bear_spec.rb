require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Balu", "Brown_bear", [])
    @river1 = River.new("Amazon", [])
    @fish1 = Fish.new("Marley")
    @fish2 = Fish.new("Fred")
    @fish3 = Fish.new("Mr Fish")
  end

  def test_name
    assert_equal("Balu", @bear1.name)
  end

  def test_type
    assert_equal("Brown_bear", @bear1.type)
  end

  def test_count_stomach_contents
    assert_equal(0, @bear1.stomach_contents)
  end

  def test_eat_named_fish()
    @river1.populate_river("Marley", "Fred", "Mr Fish")
    @river1.lose_fish(@fish1)
    @bear1.eat_named_fish(@fish1)
    assert_equal(1, @bear1.stomach_contents)
    assert_equal(true, @river1.fish_here?("Fred"))
  end

  def test_be_scary
    assert_equal("Roar!", @bear1.be_scary)
  end
end
