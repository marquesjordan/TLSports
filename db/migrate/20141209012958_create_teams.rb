class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.string :slogan
      t.string :team_contact
      t.string :team_phone
      t.string :team_email
      t.integer :user_id
      
      t.timestamps
    end
  end
end
