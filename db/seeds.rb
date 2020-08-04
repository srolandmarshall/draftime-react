# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative './seeds/nfl_seeds'
require 'fantasy_football_nerd'
require 'faker'

def create_fantasy_team(fantasy_league_id)
  name = Faker::Team.name.titlecase
  FantasyTeam.create(name: name, abbrev: name[0..2].upcase, fantasy_league_id: fantasy_league_id)
end

def create_fantasy_league
  league = FantasyLeague.create(name: Faker::Company.name, max_teams: [8, 10, 12].sample,
                                league_id: nfl_id, wr: 2, rb: 2, te: 1, qb: 1, defense: 1, k: 1, flex: 1, bench: 8)
  league.max_teams.times { create_fantasy_team(league.id) }
end

def make_draft_name
  Faker::Hipster.words(number: [2, 3].sample).flatten.join(' ').titlecase
end

def create_fantasy_drafts
  FantasyLeague.all.each do |league|
    puts "Making Drafts for #{league.name}"
    FantasyDraft.create(fantasy_league_id: league.id, name: make_draft_name, datetime: Faker::Time.forward(days: 10),
                        config: nil, is_snake: true, draft_order: league.team_ids.shuffle)
  end
end

def seed_drafts
  FantasyDraft.all.each(&:seed_picks)
end

seed_drafts
create_fantasy_drafts
