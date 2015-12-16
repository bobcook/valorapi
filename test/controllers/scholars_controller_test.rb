require 'test_helper'

class ScholarsControllerTest < ActionController::TestCase
  setup do
    @village = villages(:one)
    @scholar = scholars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create scholar" do
    assert_difference('Scholar.count') do
      post :create, params: { scholar: { name: @scholar.name, village_id: @village } }
    end

    assert_response 201
  end

  test "should show scholar" do
    get :show, params: { id: @scholar }
    assert_response :success
  end

  test "should update scholar" do
    patch :update, params: { id: @scholar, scholar: { name: @scholar.name, village_id: @scholar.village_id } }
    assert_response 200
  end

  test "should destroy scholar" do
    assert_difference('Scholar.count', -1) do
      delete :destroy, params: { id: @scholar }
    end

    assert_response 204
  end
end
