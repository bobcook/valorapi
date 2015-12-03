class WorldConfigurationsController < ApplicationController
  before_action :set_world_configuration, only: [:show, :update, :destroy]

  # GET /world_configurations
  def index
    @world_configurations = WorldConfiguration.all

    render json: @world_configurations
  end

  # GET /world_configurations/1
  def show
    render json: @world_configuration
  end

  # POST /world_configurations
  def create
    @world_configuration = WorldConfiguration.new(world_configuration_params)

    if @world_configuration.save
      render json: @world_configuration, status: :created, location: @world_configuration
    else
      render json: @world_configuration.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /world_configurations/1
  def update
    if @world_configuration.update(world_configuration_params)
      render json: @world_configuration
    else
      render json: @world_configuration.errors, status: :unprocessable_entity
    end
  end

  # DELETE /world_configurations/1
  def destroy
    @world_configuration.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_world_configuration
      @world_configuration = WorldConfiguration.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def world_configuration_params
      params.require(:world_configuration).permit(:primary_type, :secondary_type, :resource_speed, :unit_speed, :tech_speed, :market_active, :quest_active, :tutorial_on, :population_limit, :respawn_limit)
    end
end
