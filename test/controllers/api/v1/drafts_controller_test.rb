require 'test_helper'

class Api::V1::DraftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_draft = api_v1_drafts(:one)
  end

  test "should get index" do
    get api_v1_drafts_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_draft_url
    assert_response :success
  end

  test "should create api_v1_draft" do
    assert_difference('Api::V1::Draft.count') do
      post api_v1_drafts_url, params: { api_v1_draft: { datetime: @api_v1_draft.datetime, name: @api_v1_draft.name } }
    end

    assert_redirected_to api_v1_draft_url(Api::V1::Draft.last)
  end

  test "should show api_v1_draft" do
    get api_v1_draft_url(@api_v1_draft)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_draft_url(@api_v1_draft)
    assert_response :success
  end

  test "should update api_v1_draft" do
    patch api_v1_draft_url(@api_v1_draft), params: { api_v1_draft: { datetime: @api_v1_draft.datetime, name: @api_v1_draft.name } }
    assert_redirected_to api_v1_draft_url(@api_v1_draft)
  end

  test "should destroy api_v1_draft" do
    assert_difference('Api::V1::Draft.count', -1) do
      delete api_v1_draft_url(@api_v1_draft)
    end

    assert_redirected_to api_v1_drafts_url
  end
end
