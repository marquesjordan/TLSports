class CreatePlayergames < ActiveRecord::Migration
  def change
    create_table :playergames do |t|
      t.integer :points
      t.integer :rebounds
      t.integer :assist
      t.integer :fouls
      t.references :player, index: true
      t.references :game, index: true

      t.timestamps
    end
  end
end
