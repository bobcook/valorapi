require 'test_helper'

class WorldsControllerTest < ActionController::TestCase
  setup do
    @world = worlds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create world" do
    assert_difference('World.count') do
      post :create, params: { world: { name: @world.name } }
    end

    assert_response 201
  end

  test "should show world" do
    get :show, params: { id: @world }
    assert_response :success
  end

  test "should update world" do
    patch :update, params: { id: @world, world: { name: @world.name } }
    assert_response 200
  end

  test "should destroy world" do
    assert_difference('World.count', -1) do
      delete :destroy, params: { id: @world }
    end

    assert_response 204
  end
end
