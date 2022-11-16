require_relative 'game'

class Author
  attr_accessor :first_name, :last_name, :items, :id

  def initialize(first_name, last_name)
    @id = Random.rand(1..1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(game)
    @items.push(game)
    game.author = self
  end
end
