require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase
  setup do
    @village = villages(:one)
    @resource = resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create resource" do
    assert_difference('Resource.count') do
      post :create, params: { resource: { name: @resource.name, village_id: @village } }
    end

    assert_response 201
  end

  test "should show resource" do
    get :show, params: { id: @resource }
    assert_response :success
  end

  test "should update resource" do
    patch :update, params: { id: @resource, resource: { name: @resource.name, village_id: @resource.village_id } }
    assert_response 200
  end

  test "should destroy resource" do
    assert_difference('Resource.count', -1) do
      delete :destroy, params: { id: @resource }
    end

    assert_response 204
  end
end
