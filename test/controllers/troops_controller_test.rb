require 'test_helper'

class TroopsControllerTest < ActionController::TestCase
  setup do
    @village = villages(:one)
    @troop = troops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create troop" do
    assert_difference('Troop.count') do
      post :create, params: { troop: { name: @troop.name, village_id: @village } }
    end

    assert_response 201
  end

  test "should show troop" do
    get :show, params: { id: @troop }
    assert_response :success
  end

  test "should update troop" do
    patch :update, params: { id: @troop, troop: { name: @troop.name, village_id: @troop.village_id } }
    assert_response 200
  end

  test "should destroy troop" do
    assert_difference('Troop.count', -1) do
      delete :destroy, params: { id: @troop }
    end

    assert_response 204
  end
end
