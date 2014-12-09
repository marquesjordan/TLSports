class LocationsController < ApplicationController
  def index
  	@locations = Location.all
  end

  def new
  	@location = Location.new
  end

  def create
  	@location = Locations.new(location_params)
  end

  def show
  	@location.find(param[:id])
  end

  def edit
  end

  private 

  def location_params
  	params.require(:location).permit(:loc_name, :street, :city, :zip, :league_id)
  end
end
