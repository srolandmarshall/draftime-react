require "application_system_test_case"

class FantasyTeamsTest < ApplicationSystemTestCase
  setup do
    @fantasy_team = fantasy_teams(:one)
  end

  test "visiting the index" do
    visit fantasy_teams_url
    assert_selector "h1", text: "Fantasy Teams"
  end

  test "creating a Fantasy team" do
    visit fantasy_teams_url
    click_on "New Fantasy Team"

    fill_in "Abbrev", with: @fantasy_team.abbrev
    fill_in "League", with: @fantasy_team.league_id
    fill_in "Name", with: @fantasy_team.name
    click_on "Create Fantasy team"

    assert_text "Fantasy team was successfully created"
    click_on "Back"
  end

  test "updating a Fantasy team" do
    visit fantasy_teams_url
    click_on "Edit", match: :first

    fill_in "Abbrev", with: @fantasy_team.abbrev
    fill_in "League", with: @fantasy_team.league_id
    fill_in "Name", with: @fantasy_team.name
    click_on "Update Fantasy team"

    assert_text "Fantasy team was successfully updated"
    click_on "Back"
  end

  test "destroying a Fantasy team" do
    visit fantasy_teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fantasy team was successfully destroyed"
  end
end
