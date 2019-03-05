require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../bear")
require_relative("../fish")

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Fred")
    @fish2 = Fish.new("Mike")
    @fish3 = Fish.new("Nemo")
  end

  def test_name
    assert_equal("Fred", @fish1.name)
  end

end
