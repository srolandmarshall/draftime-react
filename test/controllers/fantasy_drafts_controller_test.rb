require 'test_helper'

class FantasyDraftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fantasy_draft = fantasy_drafts(:one)
  end

  test "should get index" do
    get fantasy_drafts_url
    assert_response :success
  end

  test "should get new" do
    get new_fantasy_draft_url
    assert_response :success
  end

  test "should create fantasy_draft" do
    assert_difference('FantasyDraft.count') do
      post fantasy_drafts_url, params: { fantasy_draft: { datetime: @fantasy_draft.datetime, fantasy_league_id: @fantasy_draft.fantasy_league_id, name: @fantasy_draft.name, picks: @fantasy_draft.picks } }
    end

    assert_redirected_to fantasy_draft_url(FantasyDraft.last)
  end

  test "should show fantasy_draft" do
    get fantasy_draft_url(@fantasy_draft)
    assert_response :success
  end

  test "should get edit" do
    get edit_fantasy_draft_url(@fantasy_draft)
    assert_response :success
  end

  test "should update fantasy_draft" do
    patch fantasy_draft_url(@fantasy_draft), params: { fantasy_draft: { datetime: @fantasy_draft.datetime, fantasy_league_id: @fantasy_draft.fantasy_league_id, name: @fantasy_draft.name, picks: @fantasy_draft.picks } }
    assert_redirected_to fantasy_draft_url(@fantasy_draft)
  end

  test "should destroy fantasy_draft" do
    assert_difference('FantasyDraft.count', -1) do
      delete fantasy_draft_url(@fantasy_draft)
    end

    assert_redirected_to fantasy_drafts_url
  end
end
