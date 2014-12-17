class PlayersController < ApplicationController
  def index
  	@players = Player.all
  end

  def new
  	@player = Player.new
  end

  def create

  	@user = current_user 

  	@player = Player.new(player_params)
  	@player.user_id = current_user.id
  	if @player.save
  		redirect_to profiles_path
  	else
  		render 'new'
  	end
  end

  def home
  end

  def show
  end

  def edit
  end

  private

  def player_params
  	params.require(:player).permit(:fname, :lname, :hometown, :user_id, :email, :image)
  end
end
