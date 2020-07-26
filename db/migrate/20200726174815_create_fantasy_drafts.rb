class CreateFantasyDrafts < ActiveRecord::Migration[6.0]
  def change
    create_table :fantasy_drafts do |t|
      t.string :name
      t.references :fantasy_league, null: false, foreign_key: true
      t.datetime :datetime
      t.json :picks

      t.timestamps
    end
  end
end
