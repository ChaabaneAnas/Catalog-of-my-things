require_relative 'spec_helper'

describe Author do
  let(:author1) { Author.new('Favour', 'Ezeugwa') }
  let(:game1) { Game.new('2018-01-01', true, '2018-01-01') }
  let(:game2) { Game.new('2018-01-01', true, '2018-01-01') }

  describe '#author' do
    it 'should return an instance of the author class' do
      expect(author1).to be_an_instance_of(Author)
    end

    it 'should return the first name of the author' do
      expect(author1.first_name).to eq('Favour')
    end

    it 'should return an array of items' do
      expect(author1.items).to be_an_instance_of(Array)
    end
  end

  describe '#add_item' do
    it 'should add the author to the item' do
      author1.add_item(game1)
      expect(game1.author).to eq(author1)
    end

    it 'should add an item to the author' do
      author1.add_item(game1)
      expect(author1.items).to include(game1)
    end

    it 'should return the size of the items in the array' do
      author1.add_item(game1)
      author1.add_item(game2)
      expect(author1.items).to include(game1, game2)
      expect(author1.items.size).to eql(2)
    end

    it 'should return an array of items' do
      author1.add_item(game1)
      author1.add_item(game2)
      expect(author1.items).to be_an_instance_of(Array)
    end
  end
end
