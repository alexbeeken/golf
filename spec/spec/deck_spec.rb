require 'rails_helper'

describe Deck do

  before :each do
    @deck = Deck.new
  end

  describe '#draw' do
    it 'draws the specified number of cards at random' do
      drawn = @deck.draw(1)
      expect(drawn.class).to eq(Array)
      expect(drawn[0].class).to eq(Fixnum)
      expect(drawn[0]<52 && drawn[0]>0).to eq(true)
    end
  end
end
