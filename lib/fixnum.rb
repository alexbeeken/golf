class Fixnum

  def card_number
    (self / 4).floor
  end

  def score
    return nil if ((self.card_number < -2) || (self.card_number > 12))
    return -2 if self.card_number == 0
    return 10 if ((self.card_number >= 9) && (self.card_number<= 11))
    return 0 if self.card_number == 12
    return (self.card_number + 1)
  end

  def score_with(card)
    if self.score == card.score
      return -4 if self.score < 0
      return 0
    else
      puts("RETURNING #{self.score + card.score} for #{self.score} and #{card.score}")
      return self.score + card.score
    end
  end
end
