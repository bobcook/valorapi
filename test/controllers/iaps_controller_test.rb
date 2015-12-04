require 'test_helper'

class IapsControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @iap = iaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create iap" do
    assert_difference('Iap.count') do
      post :create, params: { iap: { platform: @iap.platform, processed: @iap.processed, reciept: @iap.reciept, user_id: @user } }
    end

    assert_response 201
  end

  test "should show iap" do
    get :show, params: { id: @iap }
    assert_response :success
  end

  test "should update iap" do
    patch :update, params: { id: @iap, iap: { platform: @iap.platform, processed: @iap.processed, reciept: @iap.reciept, user_id: @user } }
    assert_response 200
  end

  test "should destroy iap" do
    assert_difference('Iap.count', -1) do
      delete :destroy, params: { id: @iap }
    end

    assert_response 204
  end
end
