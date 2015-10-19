class AddChurchIdToBuildingImages < ActiveRecord::Migration
  def change
    add_reference :building_images, :church, index: true, foreign_key: true
  end
end
