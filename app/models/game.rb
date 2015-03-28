class Game
  attr_reader(:current_player, :round, :players)

  def initialize(params = {})
    @round = params.fetch(:round, 0)
    @number_of_players = 2
    @deck = Deck.new()
    create_and_deal_players
    @current_player = @players[0].id
  end

  private

  def create_and_deal_players
    @players = []
    @number_of_players.times do |count|
      @players.push(Player.new(:id => (count+1), :hand => deal_hand))
    end
  end

  def deal_hand
    output = []
    3.times do
      output.push(@deck.draw(2))
    end
    return output
  end
end
