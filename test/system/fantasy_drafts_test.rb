require "application_system_test_case"

class FantasyDraftsTest < ApplicationSystemTestCase
  setup do
    @fantasy_draft = fantasy_drafts(:one)
  end

  test "visiting the index" do
    visit fantasy_drafts_url
    assert_selector "h1", text: "Fantasy Drafts"
  end

  test "creating a Fantasy draft" do
    visit fantasy_drafts_url
    click_on "New Fantasy Draft"

    fill_in "Datetime", with: @fantasy_draft.datetime
    fill_in "Fantasy league", with: @fantasy_draft.fantasy_league_id
    fill_in "Name", with: @fantasy_draft.name
    fill_in "Picks", with: @fantasy_draft.picks
    click_on "Create Fantasy draft"

    assert_text "Fantasy draft was successfully created"
    click_on "Back"
  end

  test "updating a Fantasy draft" do
    visit fantasy_drafts_url
    click_on "Edit", match: :first

    fill_in "Datetime", with: @fantasy_draft.datetime
    fill_in "Fantasy league", with: @fantasy_draft.fantasy_league_id
    fill_in "Name", with: @fantasy_draft.name
    fill_in "Picks", with: @fantasy_draft.picks
    click_on "Update Fantasy draft"

    assert_text "Fantasy draft was successfully updated"
    click_on "Back"
  end

  test "destroying a Fantasy draft" do
    visit fantasy_drafts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fantasy draft was successfully destroyed"
  end
end
