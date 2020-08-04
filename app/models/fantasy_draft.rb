# frozen_string_literal: true

class FantasyDraft < ApplicationRecord
  belongs_to :fantasy_league
  has_many :fantasy_teams, through: :fantasy_league
  has_many :drafters, through: :fantasy_teams
  has_many :picks

  def roster_spots
    fantasy_league.roster_spots
  end
end
