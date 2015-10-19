class LocationsController < ApplicationController
  def new
    @church = Church.find(params[:church_id])
    @location = Location.new
    @dioceses_options = LocationsHelper.dioceses_options
    @county_options = LocationsHelper.english_county_options
    @volume_options = LocationsHelper.buildings_of_england_volume_options
  end
  
  def create
    @church = Church.find(params[:church_id])
    @location = @church.create_location(location_params)
    redirect_to root_path
  end

  def location_params
    params.require(:location).permit(:town, :buildings_of_england_volume, :county, :diocese, :archdeaconry, :latitude, :longitude)
  end
end
