class PagesController < ApplicationController
  def home
  end

  def about
  end

  def portal
  	@my_leagues = League.where(user_id: current_user.id)
  	@my_teams = Team.where(user_id: current_user.id)
  end
end
