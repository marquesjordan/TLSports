class GamesController < ApplicationController
  def index
  	@games = Game.all
  end

  def new
  	@game = Game.new
  end

  def create
  	@game = Game.new(game_params)
  	if @game.save
  		redirect_to games_path
  	else
  		render 'new'
  	end
  end

  def show
  end

  def edit
  end

  private

  def game_params
  	params.require(:game).permit(:gameloc_id, :gamedate)
  end
end
