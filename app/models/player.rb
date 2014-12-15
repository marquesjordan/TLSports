class Player < ActiveRecord::Base

	has_many :teams, :through => :playerteams
	has_many :games, :through => :playergames
end
