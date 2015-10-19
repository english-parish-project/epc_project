require 'pry'
class ChurchesController < ApplicationController
  def index
    @churches = Church.all
  end  
  
  def new
    @date_ranges = ChurchesHelper.date_ranges
    @church = Church.new
  end
  
  def create
    @church = Church.create(church_params)
    redirect_to new_church_location_path(@church.id)
  end
  
  def church_params
    params.require(:church).permit(:name, :date_first_mention_in_text, :first_mention_description, :date_earliest_extant_fabric, :ds_earliest_extant_fabric, :earliest_extant_fabric_description, :general_narrative)
  end
end
