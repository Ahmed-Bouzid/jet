require 'test_helper'

class AircraftControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get aircraft_new_url
    assert_response :success
  end

  test "should get create" do
    get aircraft_create_url
    assert_response :success
  end

  test "should get index" do
    get aircraft_index_url
    assert_response :success
  end

end
