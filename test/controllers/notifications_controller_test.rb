require 'test_helper'

class NotificationsControllerTest < ActionController::TestCase
  setup do
    @notification = notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create notification" do
    assert_difference('Notification.count') do
      post :create, params: { notification: { body: @notification.body, end_date: @notification.end_date, start_date: @notification.start_date, title: @notification.title } }
    end

    assert_response 201
  end

  test "should show notification" do
    get :show, params: { id: @notification }
    assert_response :success
  end

  test "should update notification" do
    patch :update, params: { id: @notification, notification: { body: @notification.body, end_date: @notification.end_date, start_date: @notification.start_date, title: @notification.title } }
    assert_response 200
  end

  test "should destroy notification" do
    assert_difference('Notification.count', -1) do
      delete :destroy, params: { id: @notification }
    end

    assert_response 204
  end
end
