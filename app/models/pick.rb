# frozen_string_literal: true

class Pick < ApplicationRecord
  belongs_to :player
  belongs_to :draft
  belongs_to :fantasy_team
end
