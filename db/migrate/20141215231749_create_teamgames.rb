class CreateTeamgames < ActiveRecord::Migration
  def change
    create_table :teamgames do |t|
      t.integer :result
      t.references :team, index: true
      t.references :game, index: true

      t.timestamps
    end
  end
end
