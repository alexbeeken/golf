class Deck

  def initialize
    @cards = (0..51).to_a
  end

  def draw(number)
    output = []
    number.times do
      card = (@cards.sample())
      @cards.delete(card)
      output.push(card)
    end
    return output
  end
end
