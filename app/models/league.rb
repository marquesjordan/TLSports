class League < ActiveRecord::Base
	belongs_to :user
	has_many :locations

	has_many :teams, :through => :league_teams

	accepts_nested_attributes_for :locations, :allow_destroy => true
	


end
