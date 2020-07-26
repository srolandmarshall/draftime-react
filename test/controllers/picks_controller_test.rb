require 'test_helper'

class PicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pick = picks(:one)
  end

  test "should get index" do
    get picks_url
    assert_response :success
  end

  test "should get new" do
    get new_pick_url
    assert_response :success
  end

  test "should create pick" do
    assert_difference('Pick.count') do
      post picks_url, params: { pick: { draft_id: @pick.draft_id, pick_number: @pick.pick_number, player_id: @pick.player_id, round: @pick.round } }
    end

    assert_redirected_to pick_url(Pick.last)
  end

  test "should show pick" do
    get pick_url(@pick)
    assert_response :success
  end

  test "should get edit" do
    get edit_pick_url(@pick)
    assert_response :success
  end

  test "should update pick" do
    patch pick_url(@pick), params: { pick: { draft_id: @pick.draft_id, pick_number: @pick.pick_number, player_id: @pick.player_id, round: @pick.round } }
    assert_redirected_to pick_url(@pick)
  end

  test "should destroy pick" do
    assert_difference('Pick.count', -1) do
      delete pick_url(@pick)
    end

    assert_redirected_to picks_url
  end
end
