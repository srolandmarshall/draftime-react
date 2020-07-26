# frozen_string_literal: true

class FantasyTeam < ApplicationRecord
  belongs_to :league
  belongs_to :drafter
end
