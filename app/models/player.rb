class Player

  def initialize(params = {})
    @id = params.fetch(:id, 0)
    @hand = params.fetch(:hand, [[],[],[]])
  end

  def final_score
    total = 0
    @hand.each do |couple|
      total += couple[0].score_with(couple[1])
      puts("SCORED #{couple[0]}.score_with(#{couple[1]}) = #{couple[0].score_with(couple[1])}, total is now #{total}}")
    end
    return total
  end
end
