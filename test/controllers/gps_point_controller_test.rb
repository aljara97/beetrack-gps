require 'test_helper'

class GpsPointControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gps_point_new_url
    assert_response :success
  end

  test "should get index" do
    get gps_point_index_url
    assert_response :success
  end

  test "should get show" do
    get gps_point_show_url
    assert_response :success
  end

  test "should get edit" do
    get gps_point_edit_url
    assert_response :success
  end

end
