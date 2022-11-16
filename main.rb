#!/usr/bin/env ruby

require './classes/app'
class Main
  def initialize
    @app = App.new
  end

  def excute
    puts 'Welcome to Catalog of my things App!'
    @app.load
    puts display_list
  end

  def list_items1(choices)
    case choices
    when 1
      puts 'list all books'
    when 2
      @app.list_all_albums
    when 3
      puts 'list all games'
    when 4
      @app.list_all_genres
    when 5
      puts 'list all labels'
    end
  end

  def list_items2(choices)
    case choices
    when 6
      puts 'list all authors'
    when 7
      puts 'Add game'
    when 8
      @app.add_a_music_album
    when 9
      puts 'Add book'
    when 0
      @app.quit_app
    end
  end

  def display_list
    while true
      puts ['',
            "\n Please choose an choices by entering a number from below:",
            '1 - List all books',
            '2 - List all musics albums',
            '3 - List all games',
            '4 - List all genres',
            '5 - List all labels',
            '6 - List all authors',
            '7 - Add a game',
            '8 - Add a music',
            '9 - Add a book',
            '0 - Exit']
            
      choices = gets.chomp.to_i
      list_items1(choices)
      list_items2(choices)
    end

    return puts 'Please enter a valid input' unless (0...10).include? choices
  end
end
main = Main.new
main.excute
