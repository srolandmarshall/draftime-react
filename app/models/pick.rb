# frozen_string_literal: true

class Pick < ApplicationRecord
  has_one :player
  belongs_to :draft
  belongs_to :fantasy_team
end
