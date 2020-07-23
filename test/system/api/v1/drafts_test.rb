# frozen_string_literal: true

require 'application_system_test_case'

class DraftsTest < ApplicationSystemTestCase
  setup do
    @api_v1_draft = api_v1_drafts(:one)
  end

  test 'visiting the index' do
    visit api_v1_drafts_url
    assert_selector 'h1', text: 'Api/V1/Drafts'
  end

  test 'creating a Draft' do
    visit api_v1_drafts_url
    click_on 'New Api/V1/Draft'

    fill_in 'Datetime', with: @api_v1_draft.datetime
    fill_in 'Name', with: @api_v1_draft.name
    click_on 'Create Draft'

    assert_text 'Draft was successfully created'
    click_on 'Back'
  end

  test 'updating a Draft' do
    visit api_v1_drafts_url
    click_on 'Edit', match: :first

    fill_in 'Datetime', with: @api_v1_draft.datetime
    fill_in 'Name', with: @api_v1_draft.name
    click_on 'Update Draft'

    assert_text 'Draft was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Draft' do
    visit api_v1_drafts_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Draft was successfully destroyed'
  end
end
