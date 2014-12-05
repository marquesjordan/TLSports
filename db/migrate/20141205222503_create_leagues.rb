class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :organizer
      t.string :orginazation
      t.string :description
      t.timestamp :begin_date
      t.timestamp :end_date

      t.timestamps
    end
  end
end
