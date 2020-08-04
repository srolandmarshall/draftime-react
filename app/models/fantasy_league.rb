# frozen_string_literal: true

class FantasyLeague < ApplicationRecord
  belongs_to :league
  has_many :fantasy_teams
  has_many :drafts
  has_many :drafters, through: :fantasy_teams

  def teams
    fantasy_teams
  end

  def roster_spots
    props = %i[wr rb qb flex defense off_player k bench te rb_or_wr]
    props.map { |p| total += self[p] }
  end
end
