# frozen_string_literal: true

class FantasyDraft < ApplicationRecord
  belongs_to :fantasy_league
  has_many :fantasy_teams, through: :fantasy_league
  has_many :drafters, through: :fantasy_teams
  has_many :picks

  def roster_spots
    fantasy_league.roster_spots
  end

  def create_picks
    puts "Creating picks for #{name}"
    roster_spots.times do |round|
      draft_order_by_round(round + 1).each_with_index do |team_id, pick|
        Pick.create(player_id: nil, pick_number: pick + 1, round: round,
                    fantasy_draft_id: id, fantasy_team_id: team_id)
      end
    end
  end # def

  def seed_picks
    puts "Seeding picks for #{name}"
    roster_spots.times do |round|
      round += 1
      draft_order_by_round(round).each_with_index do |team_id, i|
        Pick.create!(player_id: Player.where(league: 1).sample.id, pick_number: i + 1, round: round,
                     fantasy_draft_id: id, fantasy_team_id: team_id)
      end
    end
  end # def

  def teams
    fantasy_league.teams
  end

  def num_teams
    teams.length
  end

  def draft_order_by_round(round)
    draft_order.reverse if is_snake && round.even?
    draft_order
  end

  def num_picks
    roster_spots * num_teams
  end
end
