# frozen_string_literal: true

class AddRosterSpotsToFantasyLeague < ActiveRecord::Migration[6.0]
  def change
    add_column :fantasy_leagues, :wr, :integer
    add_column :fantasy_leagues, :rb, :integer
    add_column :fantasy_leagues, :qb, :integer
    add_column :fantasy_leagues, :flex, :integer
    add_column :fantasy_leagues, :def, :integer
    add_column :fantasy_leagues, :off_player, :integer
    add_column :fantasy_leagues, :k, :integer
    add_column :fantasy_leagues, :bench, :integer
  end
end
