require 'json'
require_relative './book'
require_relative './label'

class Logic
  def add_label(item)
    puts 'Label title: '
    title = gets.chomp
    puts 'Label color: '
    color = gets.chomp
    label = Label.new(title, color)
    label.add_item(item)
    file = File.size('./data/labels.json').zero? ? [] : JSON.parse(File.read('./data/labels.json'))
    file.push({ id: label.id, title: label.title, color: label.color })
    File.write('data/labels.json', file.to_json)
  end

  def add_book
    puts 'Publisher: '
    publisher = gets.chomp
    puts 'State of the cover (good or bad): '
    cover_state = gets.chomp
    puts 'Publish date: '
    publish_date = gets.chomp
    book = Book.new(publisher, cover_state, publish_date)
    add_label(book)
    puts 'Book and label were added successfully!'
    file = File.size('./data/books.json').zero? ? [] : JSON.parse(File.read('./data/books.json'))
    file.push({ id: book.id, publisher: book.publisher, archived: book.archived, cover_state: book.cover_state,
                publish_date: book.publish_date, label_id: book.label.id })
    File.write('data/books.json', file.to_json)
  end

  def list_books
    books = File.size('./data/books.json').zero? ? [] : JSON.parse(File.read('./data/books.json'))
    books.each do |e|
      puts "Publisher: #{e['publisher']}, Cover State: #{e['cover_state']}, Publish Date: #{e['publish_date']}"
    end
  end

  def list_labels
    labels = File.size('./data/labels.json').zero? ? [] : JSON.parse(File.read('./data/labels.json'))
    labels.each do |e|
      puts "Title: #{e['title']}, Color: #{e['color']}"
    end
  end
end
