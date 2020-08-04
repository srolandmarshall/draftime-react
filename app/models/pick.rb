# frozen_string_literal: true

class Pick < ApplicationRecord
  has_one :player
  belongs_to :fantasy_draft
  belongs_to :fantasy_team

  def player
    Player.find(player_id)
  end
end
