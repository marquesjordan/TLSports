class AddStatusToLeagues < ActiveRecord::Migration
  def change
    add_column :leagues, :status, :string
    add_column :leagues, :max_teams, :integer
  end
end
