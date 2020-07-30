# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team
  belongs_to :league
  has_many :picks
  has_many :drafts, through: :picks
  has_many :fantasy_teams, through: :picks
  has_many :fantasy_leagues, through: :picks

  # validates_uniqueness_of :name, scope: %i[jersey team_id]
end
