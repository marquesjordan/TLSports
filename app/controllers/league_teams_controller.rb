class LeagueTeamsController < ApplicationController

	
	def new
		@leagueteam = LeagueTeam.new
	end

	def create
		@leagueteam = LeagueTeam.new(league_team_params)
		# raise params.inspect
		if @leagueteam.save

			redirect_to league_path(@leagueteam.league_id)
		end
	end

	private

	def league_team_params
		params.require(:league_team).permit(:team_id, :league_id, :status)
	end

end
