require 'rails_helper'

describe Player do

  describe '#final_score' do
    it 'calculates the final score' do
      @player = Player.new({:hand => [[0, 5],[51,8],[0,0]]})
      expect(@player.final_score).to eq(-1)
    end
  end
end
