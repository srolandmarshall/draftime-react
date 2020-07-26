class CreateFantasyLeagues < ActiveRecord::Migration[6.0]
  def change
    create_table :fantasy_leagues do |t|
      t.string :name
      t.integer :max_teams
      t.references :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
