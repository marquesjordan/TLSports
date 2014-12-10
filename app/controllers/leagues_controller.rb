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
  end

  def edit
  end

  private

  def league_params
  	params.require(:league).permit(:name, :organizer, :orginazation, :description, :max_teams, :status, :begin_date, :end_date, :user_id, locations_attributes: [:id, :loc_name, :street, :city, :state, :zip, :_destory])
  end

end
