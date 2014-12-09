class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end


  def new
    @team = Team.new
  end

  def create
    @team = current_user.teams.new(team_params)
    if @team.save
      redirect_to user_root_path
    else
      render 'new'
    end
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
  end

  private

  def team_params
  	params.require(:team).permit(:team_name, :slogan, :team_contact, :team_phone, :team_email, :user_id)
  end
end
