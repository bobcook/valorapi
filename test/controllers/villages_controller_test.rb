require 'test_helper'

class VillagesControllerTest < ActionController::TestCase
  setup do
    @world = worlds(:one)
    @village = villages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create village" do
    assert_difference('Village.count') do
      post :create, params: { village: { building_stats: @village.building_stats, score_value: @village.score_value, x: @village.x, y: @village.y, world_id: @world } }
    end

    assert_response 201
  end

  test "should show village" do
    get :show, params: { id: @village }
    assert_response :success
  end

  test "should update village" do
    patch :update, params: { id: @village, village: { building_stats: @village.building_stats, score_value: @village.score_value, x: @village.x, y: @village.y, world_id: @world } }
    assert_response 200
  end

  test "should destroy village" do
    assert_difference('Village.count', -1) do
      delete :destroy, params: { id: @village }
    end

    assert_response 204
  end
end
