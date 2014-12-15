class Team < ActiveRecord::Base
	belongs_to :user

	has_many :leagues, :through => :league_teams
	has_many :players, :through => :playerteams
	has_many :games, :through => :teamgames
	

end
