class AddDetailsToGames < ActiveRecord::Migration
  def change
    add_column :games, :gameloc_id, :integer
    add_column :games, :gamedate, :datetime
  end
end
