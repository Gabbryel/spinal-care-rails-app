require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get general" do
    get admin_general_url
    assert_response :success
  end

  test "should get team_members" do
    get admin_team_members_url
    assert_response :success
  end

  test "should get medical_appliances" do
    get admin_medical_appliances_url
    assert_response :success
  end
end
