require 'test_helper'

class ConstructionRequestsControllerTest < ActionController::TestCase
  setup do
    @village = villages(:one)
    @construction_request = construction_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create construction_request" do
    assert_difference('ConstructionRequest.count') do
      post :create, params: { construction_request: { name: @construction_request.name, village_id: @village } }
    end

    assert_response 201
  end

  test "should show construction_request" do
    get :show, params: { id: @construction_request }
    assert_response :success
  end

  test "should update construction_request" do
    patch :update, params: { id: @construction_request, construction_request: { name: @construction_request.name, village_id: @construction_request.village_id } }
    assert_response 200
  end

  test "should destroy construction_request" do
    assert_difference('ConstructionRequest.count', -1) do
      delete :destroy, params: { id: @construction_request }
    end

    assert_response 204
  end
end
