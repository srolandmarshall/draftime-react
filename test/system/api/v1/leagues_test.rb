# frozen_string_literal: true

require 'application_system_test_case'

class LeaguesTest < ApplicationSystemTestCase
  setup do
    @api_v1_league = api_v1_leagues(:one)
  end

  test 'visiting the index' do
    visit api_v1_leagues_url
    assert_selector 'h1', text: 'Api/V1/Leagues'
  end

  test 'creating a League' do
    visit api_v1_leagues_url
    click_on 'New Api/V1/League'

    fill_in 'Name', with: @api_v1_league.name
    click_on 'Create League'

    assert_text 'League was successfully created'
    click_on 'Back'
  end

  test 'updating a League' do
    visit api_v1_leagues_url
    click_on 'Edit', match: :first

    fill_in 'Name', with: @api_v1_league.name
    click_on 'Update League'

    assert_text 'League was successfully updated'
    click_on 'Back'
  end

  test 'destroying a League' do
    visit api_v1_leagues_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'League was successfully destroyed'
  end
end
