require_relative './app'
require_relative './classes/logic'
require_relative './classes/appp'

def main
  app = Logic.new
  app1 = App.new
  app2 = Appp.new
  app2.load
  puts 'Welcome to Catalog of my things App!'
  puts display_list(app,app2, app1)
end

def list_items1(app2,app, app1, choices)
  case choices
  when 1
    app.list_books
  when 2
    app2.list_all_albums
  when 3
    app1.list_games
  when 4
    app2.list_all_genres
  when 5
    app.list_labels
  end
end

def list_items2(app, app1,app2, choices)
  case choices
  when 6
    app1.list_authors
  when 7
    app1.add_game
  when 8
    app2.add_a_music_album
  when 9
    app.add_book
  when 0 
    app2.presist
  end 
end

def display_list(app,app2, app1)
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

  list_items1(app, app1,app2, choices)
  list_items2(app, app1,app2, choices)
  return puts "\n Thank you for using catagory of everything!" unless choices != 0

  return puts 'Please enter a valid input' unless (0...10).include? choices

  main
end

main
