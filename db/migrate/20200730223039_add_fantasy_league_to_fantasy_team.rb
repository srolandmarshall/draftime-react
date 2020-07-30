class AddFantasyLeagueToFantasyTeam < ActiveRecord::Migration[6.0]
  def change
    add_reference :fantasy_teams, :fantasy_league, null: false, foreign_key: true
  end
end
