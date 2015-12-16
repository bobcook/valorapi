require 'test_helper'

class BuildingsControllerTest < ActionController::TestCase
  setup do
    @village = villages(:one)
    @building = buildings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create building" do
    assert_difference('Building.count') do
      post :create, params: { building: { name: @building.name, village_id: @village } }
    end

    assert_response 201
  end

  test "should show building" do
    get :show, params: { id: @building }
    assert_response :success
  end

  test "should update building" do
    patch :update, params: { id: @building, building: { name: @building.name, village_id: @building.village_id } }
    assert_response 200
  end

  test "should destroy building" do
    assert_difference('Building.count', -1) do
      delete :destroy, params: { id: @building }
    end

    assert_response 204
  end
end
