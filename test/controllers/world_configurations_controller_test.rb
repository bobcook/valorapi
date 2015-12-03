require 'test_helper'

class WorldConfigurationsControllerTest < ActionController::TestCase
  setup do
    @world_configuration = world_configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create world_configuration" do
    assert_difference('WorldConfiguration.count') do
      post :create, params: { world_configuration: { market_active: @world_configuration.market_active, population_limit: @world_configuration.population_limit, primary_type: @world_configuration.primary_type, quest_active: @world_configuration.quest_active, resource_speed: @world_configuration.resource_speed, respawn_limit: @world_configuration.respawn_limit, secondary_type: @world_configuration.secondary_type, tech_speed: @world_configuration.tech_speed, tutorial_on: @world_configuration.tutorial_on, unit_speed: @world_configuration.unit_speed } }
    end

    assert_response 201
  end

  test "should show world_configuration" do
    get :show, params: { id: @world_configuration }
    assert_response :success
  end

  test "should update world_configuration" do
    patch :update, params: { id: @world_configuration, world_configuration: { market_active: @world_configuration.market_active, population_limit: @world_configuration.population_limit, primary_type: @world_configuration.primary_type, quest_active: @world_configuration.quest_active, resource_speed: @world_configuration.resource_speed, respawn_limit: @world_configuration.respawn_limit, secondary_type: @world_configuration.secondary_type, tech_speed: @world_configuration.tech_speed, tutorial_on: @world_configuration.tutorial_on, unit_speed: @world_configuration.unit_speed } }
    assert_response 200
  end

  test "should destroy world_configuration" do
    assert_difference('WorldConfiguration.count', -1) do
      delete :destroy, params: { id: @world_configuration }
    end

    assert_response 204
  end
end
