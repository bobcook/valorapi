require 'test_helper'

class ForumsControllerTest < ActionController::TestCase
  setup do
    @forum = forums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create forum" do
    assert_difference('Forum.count') do
      post :create, params: { forum: { name: @forum.name } }
    end

    assert_response 201
  end

  test "should show forum" do
    get :show, params: { id: @forum }
    assert_response :success
  end

  test "should update forum" do
    patch :update, params: { id: @forum, forum: { name: @forum.name } }
    assert_response 200
  end

  test "should destroy forum" do
    assert_difference('Forum.count', -1) do
      delete :destroy, params: { id: @forum }
    end

    assert_response 204
  end
end
