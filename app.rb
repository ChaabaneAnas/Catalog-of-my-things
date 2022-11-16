require_relative 'classes/item'
require_relative 'classes/game'
require_relative 'classes/author'
require_relative 'validation'
require_relative 'handler/handler_author'

require 'json'
class App
  include Validation
  include HandleAuthor

  def initialize
    @response = 0
    @games = []
    @authors = []
    @sources = []

    load_author
  end
end
