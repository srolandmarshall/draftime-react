# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'fantasy_football_nerd'
require 'faker'

def define_api_key
  FFNerd.api_key = 'mkpsqkxz365y'
end

def create_nfl_teams
  @nfl_teams = FFNerd.teams
  @nfl_teams.each do |team|
    puts team
    Team.create!(league_id: nfl_id, code: team.code, full_name: team.full_name, short_name: team.short_name)
  end
end

def get_team_id_by_code(team_code)
  Team.find_by(code: team_code).id
end

def create_nfl_players
  @nfl_players = FFNerd.players
  @nfl_players.each do |player|
    if player.active == '0'
      puts 'Skipping inactive player...'
      next
    end
    puts "Creating player #{player.display_name}"
    Player.create!(name: player.display_name, position: player.position,
                   team_id: get_team_id_by_code(player.team),
                   fname: player.fname, lname: player.lname,
                   jersey: player.jersey, league_id: nfl_id)
  end
end

def create_nfl
  define_api_key
  League.create(name: 'NFL')
  create_nfl_teams
  create_nfl_players
end

def nfl_id
  League.find_by(name: 'NFL').id
end

def create_fantasy_leagues; end

def create_fantasy_team
  name = Faker::Team.name.titlecase
  Team.create(name: name, abbrev: name[0..2], league_id: nfl_id)
end

create_nfl
