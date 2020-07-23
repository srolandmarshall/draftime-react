# frozen_string_literal: true

class AddDataToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :fname, :string
    add_column :players, :lname, :string
    add_column :players, :display_name, :string
    add_column :players, :jersey, :integer
    add_column :players, :league_id, :integer
  end
end
