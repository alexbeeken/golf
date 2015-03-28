class Player
  attr_reader(:id, :total_score, :hand)

  def initialize(params = {})
    @id = params.fetch(:id, 0)
    @hand = params.fetch(:hand, [[],[],[]])
    @total_score = 0
  end

  def round_final_score
    total = 0
    @hand.each do |couple|
      total += couple[0].score_with(couple[1])
      puts("SCORED #{couple[0]}.score_with(#{couple[1]}) = #{couple[0].score_with(couple[1])}, total is now #{total}}")
    end
    return total
  end
end
