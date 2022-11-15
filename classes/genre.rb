class Genre
  attr_reader :name

  def initialize(name)
    @id = Random.rand(1.100)
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.genre = self
  end
end
