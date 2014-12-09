class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :loc_name
      t.string :street
      t.string :city
      t.integer :zip

      t.timestamps
    end
  end
end
