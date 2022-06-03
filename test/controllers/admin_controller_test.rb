require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  test "should get general" do
    sign_in users(:gab)
    get admin_url
    assert_response :success
  end

  test "should get team_members" do
    sign_in users(:gab)
    get team_members_url
    assert_response :success
  end

  test "should get medical_appliances" do
    sign_in users(:gab)
    get medical_appliances_url
    assert_response :success
  end

end
