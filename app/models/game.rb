class Game
  attr_reader(:current_player, :round, :players, :deck)

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
      @players.push(Player.new(:id => (count+1)))
    end
  end
end
