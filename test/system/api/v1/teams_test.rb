# frozen_string_literal: true

require 'application_system_test_case'

class TeamsTest < ApplicationSystemTestCase
  setup do
    @api_v1_team = api_v1_teams(:one)
  end

  test 'visiting the index' do
    visit api_v1_teams_url
    assert_selector 'h1', text: 'Api/V1/Teams'
  end

  test 'creating a Team' do
    visit api_v1_teams_url
    click_on 'New Api/V1/Team'

    fill_in 'Code', with: @api_v1_team.code
    fill_in 'Full name', with: @api_v1_team.full_name
    fill_in 'Short name', with: @api_v1_team.short_name
    click_on 'Create Team'

    assert_text 'Team was successfully created'
    click_on 'Back'
  end

  test 'updating a Team' do
    visit api_v1_teams_url
    click_on 'Edit', match: :first

    fill_in 'Code', with: @api_v1_team.code
    fill_in 'Full name', with: @api_v1_team.full_name
    fill_in 'Short name', with: @api_v1_team.short_name
    click_on 'Update Team'

    assert_text 'Team was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Team' do
    visit api_v1_teams_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Team was successfully destroyed'
  end
end
