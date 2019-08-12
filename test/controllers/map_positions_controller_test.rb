require 'test_helper'

class MapPositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @map_position = map_positions(:one)
  end

  test "should get index" do
    get map_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_map_position_url
    assert_response :success
  end

  test "should create map_position" do
    assert_difference('MapPosition.count') do
      post map_positions_url, params: { map_position: { latitude: @map_position.latitude, longitude: @map_position.longitude, title: @map_position.title } }
    end

    assert_redirected_to map_position_url(MapPosition.last)
  end

  test "should show map_position" do
    get map_position_url(@map_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_map_position_url(@map_position)
    assert_response :success
  end

  test "should update map_position" do
    patch map_position_url(@map_position), params: { map_position: { latitude: @map_position.latitude, longitude: @map_position.longitude, title: @map_position.title } }
    assert_redirected_to map_position_url(@map_position)
  end

  test "should destroy map_position" do
    assert_difference('MapPosition.count', -1) do
      delete map_position_url(@map_position)
    end

    assert_redirected_to map_positions_url
  end
end
