class GamesController < ApplicationController

  def index
    @game = Game.new
  end

  def update
    @position = params.fetch(:position).to_a
    @game.deck.draw(1)
    render :index
  end

end
