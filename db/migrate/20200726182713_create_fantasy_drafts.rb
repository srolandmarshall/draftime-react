class CreateFantasyDrafts < ActiveRecord::Migration[6.0]
  def change
    create_table :fantasy_drafts do |t|
      t.references :fantasy_league, null: false, foreign_key: true
      t.string :name
      t.datetime :datetime

      t.timestamps
    end
  end
end
