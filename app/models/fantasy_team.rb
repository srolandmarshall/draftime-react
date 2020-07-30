# frozen_string_literal: true

class FantasyTeam < ApplicationRecord
  belongs_to :fantasy_league
  belongs_to :drafter
  has_one :league, through: :fantasy_leagues
  has_many :players, through: :picks
end
