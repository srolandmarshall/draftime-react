# frozen_string_literal: true

class FantasyLeague < ApplicationRecord
  belongs_to :league
  has_many :fantasy_teams
  has_many :drafts
  has_many :drafters, through: :fantasy_teams

  def teams
    fantasy_teams
  end
end
