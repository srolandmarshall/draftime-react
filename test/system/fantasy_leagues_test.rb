require "application_system_test_case"

class FantasyLeaguesTest < ApplicationSystemTestCase
  setup do
    @fantasy_league = fantasy_leagues(:one)
  end

  test "visiting the index" do
    visit fantasy_leagues_url
    assert_selector "h1", text: "Fantasy Leagues"
  end

  test "creating a Fantasy league" do
    visit fantasy_leagues_url
    click_on "New Fantasy League"

    fill_in "League", with: @fantasy_league.league_id
    fill_in "Max teams", with: @fantasy_league.max_teams
    fill_in "Name", with: @fantasy_league.name
    click_on "Create Fantasy league"

    assert_text "Fantasy league was successfully created"
    click_on "Back"
  end

  test "updating a Fantasy league" do
    visit fantasy_leagues_url
    click_on "Edit", match: :first

    fill_in "League", with: @fantasy_league.league_id
    fill_in "Max teams", with: @fantasy_league.max_teams
    fill_in "Name", with: @fantasy_league.name
    click_on "Update Fantasy league"

    assert_text "Fantasy league was successfully updated"
    click_on "Back"
  end

  test "destroying a Fantasy league" do
    visit fantasy_leagues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fantasy league was successfully destroyed"
  end
end
