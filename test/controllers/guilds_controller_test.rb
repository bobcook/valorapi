require 'test_helper'

class GuildsControllerTest < ActionController::TestCase
  setup do
    @world = worlds(:one)
    @user = users(:one)
    @notification = notifications(:one)
    @guild = guilds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create guild" do
    assert_difference('Guild.count') do
      post :create, params: { guild: { description: @guild.description, guild_tag: @guild.guild_tag, name: @guild.name, welcome_message_description: @guild.welcome_message_description, welcome_message_subject: @guild.welcome_message_subject, world_id: @guild.world_id, notification_id: @guild.notification_id } }
    end

    assert_response 201
  end

  test "should show guild" do
    get :show, params: { id: @guild }
    assert_response :success
  end

  test "should update guild" do
    patch :update, params: { id: @guild, guild: { description: @guild.description, guild_tag: @guild.guild_tag, name: @guild.name, welcome_message_description: @guild.welcome_message_description, welcome_message_subject: @guild.welcome_message_subject, world_id: @world, notification_id: @notification } }
    assert_response 200
  end

  test "should destroy guild" do
    assert_difference('Guild.count', -1) do
      delete :destroy, params: { id: @guild }
    end

    assert_response 204
  end
end
