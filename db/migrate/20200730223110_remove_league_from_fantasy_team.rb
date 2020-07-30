# frozen_string_literal: true

class RemoveLeagueFromFantasyTeam < ActiveRecord::Migration[6.0]
  def change
    remove_column :fantasy_teams, :league_id, null: false, foreign_key: true
  end
end
