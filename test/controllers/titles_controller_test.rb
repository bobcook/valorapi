require 'test_helper'

class TitlesControllerTest < ActionController::TestCase
  setup do
    @title = titles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create title" do
    assert_difference('Title.count') do
      post :create, params: { title: { description: @title.description, icon: @title.icon, image: @title.image, name: @title.name } }
    end

    assert_response 201
  end

  test "should show title" do
    get :show, params: { id: @title }
    assert_response :success
  end

  test "should update title" do
    patch :update, params: { id: @title, title: { description: @title.description, icon: @title.icon, image: @title.image, name: @title.name } }
    assert_response 200
  end

  test "should destroy title" do
    assert_difference('Title.count', -1) do
      delete :destroy, params: { id: @title }
    end

    assert_response 204
  end
end
