require 'date'
require_relative './item'

class MusicAlbum < Item
  attr_reader :on_spotify

  def initialize(boolean, publish_date)
    @on_spotify = boolean
    super(publish_date)
  end

  def can_be_archived?
    super && @on_spotify
  end

  def add_genre(name)
    Genre.new(name).add_item(self)
  end
end
