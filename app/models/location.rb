class Location < ActiveRecord::Base
	belongs_to :league

	# attr_accessible :locations_attributes
end
