require 'date'

class Item
  attr_accessor :id, :publish_date, :archived, :genre, :author, :label, :source

  def initialize(publish_date)
    @id = Random.rand(1..100)
    @publish_date = publish_date
    @archived = false
  end

  def add_label(label)
    label.add_items << self unless label.items.include? self
    @label = label
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    true if Date.today - Date.parse(@publish_date) > 3650
  end
end
