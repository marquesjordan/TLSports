class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :fname
      t.string :lname
      t.string :hometown

      t.timestamps
    end
  end
end
