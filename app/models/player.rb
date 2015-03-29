class Player
  attr_reader(:id, :total_score, :hand)

  def initialize(params = {})
    @id = params.fetch(:id, 0)
    @hand = params.fetch(:hand, [[nil, nil],[nil, nil],[nil, nil]])
    @total_score = 0
  end

  def round_final_score
    total = 0
    @hand.each do |couple|
      total += couple[0].score_with(couple[1])
    end
    return total
  end

  def first_two_chosen?
    number_of_cards = 0
    @hand.each do |couple|

      if couple[0] != nil
        number_of_cards += 1
      end

      if couple[1] != nil
        number_of_cards += 1
      end

    end
    return number_of_cards > 1
  end

end
