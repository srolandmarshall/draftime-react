# frozen_string_literal: true

require 'test_helper'

class LeaguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_league = api_v1_leagues(:one)
  end

  test 'should get index' do
    get api_v1_leagues_url
    assert_response :success
  end

  test 'should get new' do
    get new_api_v1_league_url
    assert_response :success
  end

  test 'should create api_v1_league' do
    assert_difference('League.count') do
      post api_v1_leagues_url, params: { api_v1_league: { name: @api_v1_league.name } }
    end

    assert_redirected_to api_v1_league_url(League.last)
  end

  test 'should show api_v1_league' do
    get api_v1_league_url(@api_v1_league)
    assert_response :success
  end

  test 'should get edit' do
    get edit_api_v1_league_url(@api_v1_league)
    assert_response :success
  end

  test 'should update api_v1_league' do
    patch api_v1_league_url(@api_v1_league), params: { api_v1_league: { name: @api_v1_league.name } }
    assert_redirected_to api_v1_league_url(@api_v1_league)
  end

  test 'should destroy api_v1_league' do
    assert_difference('League.count', -1) do
      delete api_v1_league_url(@api_v1_league)
    end

    assert_redirected_to api_v1_leagues_url
  end
end
