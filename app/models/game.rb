class Game < ActiveRecord::Base

	has_many :teams, :through => :teamgames
	has_many :players, :through => :playergames
end
