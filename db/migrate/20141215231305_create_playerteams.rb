class CreatePlayerteams < ActiveRecord::Migration
  def change
    create_table :playerteams do |t|
      t.references :team, index: true
      t.references :player, index: true

      t.timestamps
    end
  end
end
