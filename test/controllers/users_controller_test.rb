require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest

  include Devise::Test::IntegrationHelpers

  test "should get show" do
    sign_in users(:gab)
    get user_url(1)
    assert_response :success
  end

  test "should get index" do
    sign_in users(:gab)
    get user_url(1)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:gab)
    get user_url(1)
    assert_response :success
  end

  test "should get update" do
    sign_in users(:gab)
    get user_url(1)
    assert_response :success
  end

  test "should get destroy" do
    sign_in users(:gab)
    get user_url(1)
    assert_response :success
  end
end
