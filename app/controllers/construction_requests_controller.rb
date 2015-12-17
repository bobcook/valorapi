class ConstructionRequestsController < ApplicationController
  before_action :set_construction_request, only: [:show, :update, :destroy]

  # GET /construction_requests
  def index
    @construction_requests = ConstructionRequest.all

    render json: @construction_requests
  end

  # GET /construction_requests/1
  def show
    render json: @construction_request
  end

  # POST /construction_requests
  def create
    @construction_request = ConstructionRequest.new(construction_request_params)

    if @construction_request.save
      render json: @construction_request, status: :created, location: @construction_request
    else
      render json: @construction_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /construction_requests/1
  def update
    if @construction_request.update(construction_request_params)
      render json: @construction_request
    else
      render json: @construction_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /construction_requests/1
  def destroy
    @construction_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_construction_request
      @construction_request = ConstructionRequest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def construction_request_params
      params.require(:construction_request).permit(:name, :village_id, :start_time, :date_time,
        :construction_time_in_seconds, :building_current_level)
    end
end
