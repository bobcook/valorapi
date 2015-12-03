require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, params: { user: { ban: @user.ban, client_version: @user.client_version, email: @user.email, email_validated: @user.email_validated, in_game_currency: @user.in_game_currency, last_login_date: @user.last_login_date, locale: @user.locale, player_name: @user.player_name } }
    end

    assert_response 201
  end

  test "should show user" do
    get :show, params: { id: @user }
    assert_response :success
  end

  test "should update user" do
    patch :update, params: { id: @user, user: { ban: @user.ban, client_version: @user.client_version, email: @user.email, email_validated: @user.email_validated, in_game_currency: @user.in_game_currency, last_login_date: @user.last_login_date, locale: @user.locale, player_name: @user.player_name } }
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, params: { id: @user }
    end

    assert_response 204
  end
end
