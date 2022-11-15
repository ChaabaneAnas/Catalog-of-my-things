class Label
    attr_reader :id, :title, :color, :items

    def initialize(title, color)
      @id = Random.rand(1..100)
      @title = title
      @color = color
      @items = []
    end

    def add_item(item)
      items.push(item)
      item.add_label(self)
    end
  end