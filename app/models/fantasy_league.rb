# frozen_string_literal: true

class FantasyLeague < ApplicationRecord
  belongs_to :league
  has_many :fantasy_teams
  has_many :fantasy_drafts
  has_many :users, through: :fantasy_teams

  def teams
    fantasy_teams
  end

  def drafts
    fantasy_drafts
  end

  def team_ids
    fantasy_teams.map(&:id)
  end

  def num_teams
    teams.length
  end

  def roster_spots
    props = %i[wr rb qb flex defense off_player k bench te rb_or_wr]
    total = 0
    props.each do |prop|
      total += self[prop] if self[prop]
    end
    total
  end
end
