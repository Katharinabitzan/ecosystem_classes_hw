class Bear
  attr_reader :name, :type
  attr_accessor :stomach

  def initialize(name, type, stomach = [])
    @name = name
    @type = type
    @stomach = stomach
  end

  def stomach_contents
    return @stomach.length
  end

  def eat_named_fish(fish)
        @stomach << fish
  end

  def be_scary
    return "Roar!"
  end
end
