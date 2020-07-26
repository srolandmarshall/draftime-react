# frozen_string_literal: true

class Drafter < ApplicationRecord
  belongs_to :fantasy_team
  has_many :users
end
