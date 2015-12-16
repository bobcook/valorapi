class TroopsController < ApplicationController
  before_action :set_troop, only: [:show, :update, :destroy]

  # GET /troops
  def index
    @troops = Troop.all

    render json: @troops
  end

  # GET /troops/1
  def show
    render json: @troop
  end

  # POST /troops
  def create
    @troop = Troop.new(troop_params)

    if @troop.save
      render json: @troop, status: :created, location: @troop
    else
      render json: @troop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /troops/1
  def update
    if @troop.update(troop_params)
      render json: @troop
    else
      render json: @troop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /troops/1
  def destroy
    @troop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_troop
      @troop = Troop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def troop_params
      params.require(:troop).permit(:name, :village_id)
    end
end
