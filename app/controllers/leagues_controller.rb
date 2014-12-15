class LeaguesController < ApplicationController
  def index
  	@leagues = League.all
  end

  def new
  	@league = League.new
  end

  def create
  	@league = current_user.leagues.new(league_params)    
  	if @league.save
  		redirect_to user_root_path
  	else
  		render 'new'
  	end
  end

  def show
  	@league = League.find(params[:id])
    @locations = Location.where(:league_id => params[:id]).to_a
    @user_teams = Team.where(:user_id => current_user.id).to_a
    @tot_teams = LeagueTeam.where(:league_id => @league.id).to_a
    
    if @tot_teams 
      @total = @tot_teams.count
    else
      @total = 0
    end
  end

  def edit
  end

  private

  def league_params
  	params.require(:league).permit(:name, :organizer, :orginazation, :description, :max_teams, :status, :begin_date, :end_date, :user_id, locations_attributes: [:id, :loc_name, :street, :city, :state, :zip, :_destroy])
  end

end
