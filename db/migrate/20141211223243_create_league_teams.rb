class CreateLeagueTeams < ActiveRecord::Migration
  def change
    create_table :league_teams do |t|
      t.references :team, index: true
      t.references :league, index: true
      t.string :status

      t.timestamps
    end
  end
end
