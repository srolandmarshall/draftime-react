# frozen_string_literal: true

class CreatePicks < ActiveRecord::Migration[6.0]
  def change
    create_table :picks do |t|
      t.references :player, null: false, foreign_key: true
      t.references :fantasy_draft, null: false, foreign_key: true
      t.references :fantasy_team, null: false, foreign_key: true
      t.integer :round
      t.integer :pick_number

      t.timestamps
    end
  end
end
