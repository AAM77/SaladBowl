require 'test_helper'

class Api::V1::SaladBarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_salad_bars_index_url
    assert_response :success
  end

  test "should get new" do
    get api_v1_salad_bars_new_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_salad_bars_create_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_salad_bars_show_url
    assert_response :success
  end

  test "should get edit" do
    get api_v1_salad_bars_edit_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_salad_bars_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_salad_bars_destroy_url
    assert_response :success
  end

end
