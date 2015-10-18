class CreateChurches < ActiveRecord::Migration
  def change
    create_table :churches do |t|
      t.text :name
      t.string :date_first_mention_in_text
      t.text :first_mention_description
      t.string :date_earliest_extant_fabric
      t.boolean :ds_earliest_extant_fabric
      t.text :earliest_extant_fabric_description
      t.text :general_narrative

      t.timestamps null: false
    end
  end
end
