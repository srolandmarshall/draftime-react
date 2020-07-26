# frozen_string_literal: true

class FantasyTeam < ApplicationRecord
  belongs_to :league
  has_many :fantasy_player
end
