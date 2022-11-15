def main
  puts 'Welcome to Catalog of my things App!'
  puts display_list
end

def list_items1(choices)
  case choices
  when 1
    puts 'list all books'
  when 2
    puts 'list all music albums'
  when 3
    puts 'list all games'
  when 4
    puts 'list all genres'
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
    puts 'Add music album'
  when 9
    puts 'Add book'
  end
end

def display_list
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
  return puts "\n Thank you for using catagory of everything!" unless choices != 0

  return puts 'Please enter a valid input' unless (0...10).include? choices

  main
end

main
