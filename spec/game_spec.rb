require_relative 'spec_helper'

describe Game do
  let(:game1) { Game.new('2015-01-01', true, '2020-01-01') }
  let(:game2) { Game.new('2011-01-01', false, '2020-01-01') }

  describe '#game class' do
    it 'should be a game class' do
      expect(game1).to be_a(Game)
    end

    it 'should be an instance of a game' do
      expect(game1).to be_an_instance_of(Game)
    end
  end

  describe '#can_be_archived?' do
    it 'returns true if the game is older than 5 years and last played more than 2 years ago' do
      expect(game1.can_be_archived?).to eq(false)
      expect(game2.can_be_archived?).to eq(true)
    end

    it 'returns false if the game is not more than 2 years' do
      expect(game1.can_be_archived?).to eq(false)
    end
  end

  describe '#multiplayer' do
    it 'returns true is the game is multiplayer' do
      expect(game1.multiplayer).to eql(true)
      expect(game2.multiplayer).to eql(false)
    end
  end

  describe '#last_played_at' do
    it 'returns the last time the game was played' do
      expect(game1.last_played_at).to eql('2020-01-01')
    end
  end

  describe '#publish_date' do
    it 'returns the date the game was published' do
      expect(game1.publish_date).to eql('2015-01-01')
    end
  end
end
