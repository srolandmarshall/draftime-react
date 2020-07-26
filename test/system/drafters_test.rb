require "application_system_test_case"

class DraftersTest < ApplicationSystemTestCase
  setup do
    @drafter = drafters(:one)
  end

  test "visiting the index" do
    visit drafters_url
    assert_selector "h1", text: "Drafters"
  end

  test "creating a Drafter" do
    visit drafters_url
    click_on "New Drafter"

    fill_in "Email", with: @drafter.email
    fill_in "Name", with: @drafter.name
    fill_in "Owner", with: @drafter.owner
    click_on "Create Drafter"

    assert_text "Drafter was successfully created"
    click_on "Back"
  end

  test "updating a Drafter" do
    visit drafters_url
    click_on "Edit", match: :first

    fill_in "Email", with: @drafter.email
    fill_in "Name", with: @drafter.name
    fill_in "Owner", with: @drafter.owner
    click_on "Update Drafter"

    assert_text "Drafter was successfully updated"
    click_on "Back"
  end

  test "destroying a Drafter" do
    visit drafters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drafter was successfully destroyed"
  end
end
