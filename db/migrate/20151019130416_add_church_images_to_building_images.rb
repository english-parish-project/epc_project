class AddChurchImagesToBuildingImages < ActiveRecord::Migration
  def change
    add_column :building_images, :church_images, :json
  end
end
