class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :church_id
      t.text :town
      t.string :buildings_of_england_volume
      t.string :county
      t.string :diocese
      t.string :archdeaconry
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
    
    add_index :locations, :church_id
  end
end
