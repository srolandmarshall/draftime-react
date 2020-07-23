# frozen_string_literal: true

class AddTeamToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :team_id, :integer
  end
end
