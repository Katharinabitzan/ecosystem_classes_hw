require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../bear")
require_relative("../fish")

class RiverTest < MiniTest::Test

def setup
  @river1 = River.new("Ganges", [])
end

def test_name
  assert_equal("Ganges", @river1.name)
end

def test_count_fish
  assert_equal(0, @river1.count_fish)
end

def test_populate_river
  @river1.populate_river("Marley", "Fred", "Mr Fish")
  assert_equal(3, @river1.count_fish)
end

def test_lose_fish
  starting = @river1.fish_here?("Martin")
  @river1.lose_fish("Martin")
  assert_equal(false, @river1.fish_here?("Martin"))
end


end
