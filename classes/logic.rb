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
end