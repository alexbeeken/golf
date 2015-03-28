require 'rails_helper'

describe Fixnum do

  describe '#card_number' do
    it 'returns the card number from 0 - 11' do
      expect(0.card_number).to eq(0)
      expect(4.card_number).to eq(1)
      expect(8.card_number).to eq(2)
      expect(11.card_number).to eq(2)
      expect(9.card_number).to eq(2)
    end
  end

  describe '#score' do
    it 'returns the score of the card' do
      expect(0.score).to eq(-2)
      expect(8.score).to eq(3)
      expect(33.score).to eq(9)
      expect(43.score).to eq(10)
      expect(51.score).to eq(0)
    end
  end

  describe '#score_with' do
    it 'calculates the total score with another card' do
      expect(8.score_with(0)).to eq(1)
      expect(12.score_with(0)).to eq(2)
      expect(51.score_with(0)).to eq(-2)
    end
  end
end
