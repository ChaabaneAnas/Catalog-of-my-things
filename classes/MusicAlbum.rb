require'date'
require 'item'

class MusicAlbum < Item
  def initialize(boolean,publish_date)
    @on_spotify = boolean
    super(publish_date)
  end 

  def can_be_archived?
    super && @on_spotify
  end 