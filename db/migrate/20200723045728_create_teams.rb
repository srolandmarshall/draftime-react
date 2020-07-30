# frozen_string_literal: true

class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :code
      t.string :full_name
      t.string :short_name
      t.timestamps
    end
  end
end
