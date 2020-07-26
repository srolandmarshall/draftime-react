class CreateFantasyTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :fantasy_teams do |t|
      t.string :name
      t.string :abbrev
      t.references :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
