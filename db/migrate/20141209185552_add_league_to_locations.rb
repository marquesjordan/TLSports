class AddLeagueToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :league_id, :integer
  end
end
