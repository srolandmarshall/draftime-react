# frozen_string_literal: true

require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_team = api_v1_teams(:one)
  end

  test 'should get index' do
    get api_v1_teams_url
    assert_response :success
  end

  test 'should get new' do
    get new_api_v1_team_url
    assert_response :success
  end

  test 'should create api_v1_team' do
    assert_difference('Team.count') do
      post api_v1_teams_url, params: { api_v1_team: { code: @api_v1_team.code, full_name: @api_v1_team.full_name, short_name: @api_v1_team.short_name } }
    end

    assert_redirected_to api_v1_team_url(Team.last)
  end

  test 'should show api_v1_team' do
    get api_v1_team_url(@api_v1_team)
    assert_response :success
  end

  test 'should get edit' do
    get edit_api_v1_team_url(@api_v1_team)
    assert_response :success
  end

  test 'should update api_v1_team' do
    patch api_v1_team_url(@api_v1_team), params: { api_v1_team: { code: @api_v1_team.code, full_name: @api_v1_team.full_name, short_name: @api_v1_team.short_name } }
    assert_redirected_to api_v1_team_url(@api_v1_team)
  end

  test 'should destroy api_v1_team' do
    assert_difference('Team.count', -1) do
      delete api_v1_team_url(@api_v1_team)
    end

    assert_redirected_to api_v1_teams_url
  end
end
