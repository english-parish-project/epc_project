class CreateBuildingImages < ActiveRecord::Migration
  def change
    create_table :building_images do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
