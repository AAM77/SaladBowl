require 'test_helper'

class Api::V1::UserBowlsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_user_bowls_index_url
    assert_response :success
  end

  test "should get new" do
    get api_v1_user_bowls_new_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_user_bowls_create_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_user_bowls_show_url
    assert_response :success
  end

  test "should get edit" do
    get api_v1_user_bowls_edit_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_user_bowls_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_user_bowls_destroy_url
    assert_response :success
  end

end
