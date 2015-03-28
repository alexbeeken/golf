class Deck

  def initialize
    @cards = (0..51).to_a
    @discarded = []
  end

  def draw(number)
    output = []
    number.times do
      card = (@cards.sample())
      discard(card)
      output.push(card)
    end
    return output
  end

  def discard(card)
    @cards.delete(card)
    @discarded.push(card)
    if @cards.length <= 2
      @cards = @discarded
      @discarded = []
    end
  end

end
