# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :team
  belongs_to :league

  # validates_uniqueness_of :name, scope: %i[jersey team_id]
end
