require 'test_helper'

class DraftersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drafter = drafters(:one)
  end

  test "should get index" do
    get drafters_url
    assert_response :success
  end

  test "should get new" do
    get new_drafter_url
    assert_response :success
  end

  test "should create drafter" do
    assert_difference('Drafter.count') do
      post drafters_url, params: { drafter: { email: @drafter.email, name: @drafter.name, owner: @drafter.owner } }
    end

    assert_redirected_to drafter_url(Drafter.last)
  end

  test "should show drafter" do
    get drafter_url(@drafter)
    assert_response :success
  end

  test "should get edit" do
    get edit_drafter_url(@drafter)
    assert_response :success
  end

  test "should update drafter" do
    patch drafter_url(@drafter), params: { drafter: { email: @drafter.email, name: @drafter.name, owner: @drafter.owner } }
    assert_redirected_to drafter_url(@drafter)
  end

  test "should destroy drafter" do
    assert_difference('Drafter.count', -1) do
      delete drafter_url(@drafter)
    end

    assert_redirected_to drafters_url
  end
end
