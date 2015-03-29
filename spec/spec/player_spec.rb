require 'rails_helper'

describe Player do

  describe '#final_score' do
    it 'calculates the final score' do
      @player = Player.new({:hand => [[0,5],[51,8],[0,0]]})
      expect(@player.final_score).to eq(-1)
    end
  end

  describe '#first_two_chosen?' do
    it 'returns false if player has no cards' do
      @player = Player.new({:hand => [[nil,nil],[nil,nil],[nil,nil]]})
      expect(@player.first_two_chosen?).to eq(false)
    end
    it 'returns false if player has one card' do
      @player = Player.new({:hand => [[0,nil],[nil,nil],[nil,nil]]})
      expect(@player.first_two_chosen?).to eq(false)
    end
    it 'returns true if player had two cards or more' do
      @player = Player.new({:hand => [[nil,0],[nil,0],[0,nil]]})
      expect(@player.first_two_chosen?).to eq(true)
    end
  end
end
