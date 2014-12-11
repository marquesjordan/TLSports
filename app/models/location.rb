class Location < ActiveRecord::Base
	belongs_to :league

	geocoded_by :full_street_address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates
	# attr_accessible :locations_attributes

	def full_street_address
		return "#{self.street}, #{self.city}, #{self.state}, #{self.zip}"
	end

	def geo_center
		@locations = Locations.all
			@locations.each do |d| 
				coords.push(d.full_street_address.coordinates)
				Geocoder::Calculations.geographic_center(coords)
			end	
	end
end


