require_relative '../modules/game_module'
require 'json'

module HandleAuthor
  include GamesModule

  # GAMES
  def save_author
    array = File.size('./data/authors.json').zero? ? [] : JSON.parse(File.read('./data/authors.json'))

    @authors.each do |author|
      array << {
        author_id: author.id,
        first_name: author.first_name,
        last_name: author.last_name,
        Items: author.items.map do |item|
                 {
                   publish_date: item.publish_date,
                   multiplayer: item.multiplayer,
                   last_played_at: item.last_played_at
                 }
               end
      }
    end
    File.write('data/authors.json', array.to_json)
  end

  def load_author
    file = File.read('./data/authors.json')
    parse_file = JSON.parse(file)
    parse_file.each do |author|
      person = Author.new(author['first_name'], author['last_name'])
      @authors << person
      author['Items'].each do |item|
        person.add_item(Game.new(item['publish_date'], item['multiplayer'], item['last_played_at']))
      end
    end
  end
end
