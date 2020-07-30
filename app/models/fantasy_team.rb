# frozen_string_literal: true

class FantasyTeam < ApplicationRecord
  belongs_to :league
  belongs_to :drafter
  has_many :players, through: :picks
end
