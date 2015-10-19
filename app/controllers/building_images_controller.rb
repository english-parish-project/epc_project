class BuildingImagesController < ApplicationController
  def new
    @church = Church.find(params[:church_id])
    @building_image = BuildingImage.new
  end
  
  def create
    @church = Church.find(params[:church_id])
    @building_image = @church.building_images.create(building_images_params)
    redirect_to root_path
  end
  
  def building_images_params
    params.require(:building_image).permit(:description, {church_images: []})
  end
end
