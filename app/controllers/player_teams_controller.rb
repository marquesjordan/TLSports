class PlayerTeamsController < ApplicationController

	def index
		@playerteams = PlayerTeam.all
	end

	def new
		@playerteam = PlayerTeam.new
	end

	def create
		@playerteam = PlayerTeam.new(player_team_params)
		raise params.inspect
		if @playerteam.save
			redirect_to team_path(@playerteam.team_id)
		end
	end

	private

	def league_team_params
		params.require(:playerteam).permit(:team_id, :player_id)
	end

end
