require_relative '../classes/author'

module GamesModule
  def create_game
    puts 'Enter Published date (YYYY-MM-DD): '
    publish_date = gets.chomp
    valid_date(publish_date)

    puts 'Multiplayer? (y/n)'
    multiplayer = gets.chomp
    case multiplayer
    when 'y'
      multiplayer = true
    when 'n'
      multiplayer = false
    end

    puts 'Enter last played date (YYYY-MM-DD):'
    last_played_at = gets.chomp
    valid_last_played(last_played_at)

    Game.new(publish_date, multiplayer, last_played_at)
  end

  def game_with_new_author
    puts 'Author\'s First name: '
    first_name = gets.chomp
    valid_name(first_name)

    puts 'Author\'s Last name: '
    last_name = gets.chomp
    valid_last_name(last_name)

    Author.new(first_name, last_name)
  end

  def game_with_existing_author
    list_authors

    puts 'Select Author ID: '
    author_id = gets.chomp
    author_id = author_id.to_i
    @authors.find { |author| author.id == author_id }
  end

  def add_game
    game = create_game
    puts 'To create a new author enter [1] or an existing author [2]: '
    author = gets.chomp.to_i
    case author
    when 1
      author = game_with_new_author
      @authors << author.add_item(game)
      @games << game
      save_author
    when 2
      author = game_with_existing_author
      author.add_item(game)
      @games << game
      save_author
    end
  end

  def list_games
    puts 'No games found' if @authors.empty?
    @authors.each do |author|
      author.items.each_with_index do |item, index|
        puts "#{index})  [Author: '#{author.first_name}'], Published date: '#{item.publish_date}',
        Multiplayer: #{item.multiplayer}, Last played at: '#{item.last_played_at}'"
      end
    end
  end

  def list_authors
    puts 'No authors found' if @authors.empty?
    @authors.each_with_index do |author, index|
      puts "#{index}) [Author ID]: '#{author.id}', First name: '#{author.first_name}', Last name: '#{author.last_name}'"
    end
  end
end
