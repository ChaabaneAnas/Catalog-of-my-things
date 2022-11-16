require_relative './genre'
require_relative './music_album'
require_relative './dataManagement.rb'

class App
include Data_manager
  def initialize
    @albums = []
    @games = []
    @books = []
    @genres = []
  end

  def add_a_music_album
    puts 'This album is on Spotify ? (y/n)'
    input = gets.chomp
    verif = { 'y' => true, 'n' => false }

    until verif.include?(input)
      puts 'Invalid input, try again:'
      input = gets.chomp
    end

    boolean = verif[input]
    puts 'Publish date: '
    date = gets.chomp

    puts 'Genre:'
    name = gets.chomp

    album = MusicAlbum.new(boolean, date)
    @albums.push(album)
    add_genre(name,album)

    puts 'Album  created succsefully'
  end

  def add_genre(name,album)
    genre = @genres.select {|genre| genre.name === name}
    genre.empty? ? @genres.push(Genre.new(name).add_item(album)) : genre.first.add_item(album)
  end

  def list_all_albums
    puts @albums.map.with_index { |album, index|
           "#{index}) publish date: #{album.publish_date} on spotify?: #{album.on_spotify}"
         }
  end

  def list_all_genres
    puts @genres.map.with_index { |genre, index| "#{index}) name: #{genre.name}" }
  end

  def quit_app
    presist
    puts 'thanks for using our app'
    exit
  end
end
