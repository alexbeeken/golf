require 'pry'

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
end
