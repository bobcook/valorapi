class IapsController < ApplicationController
  before_action :set_iap, only: [:show, :update, :destroy]

  # GET /iaps
  def index
    @iaps = Iap.all

    render json: @iaps
  end

  # GET /iaps/1
  def show
    render json: @iap
  end

  # POST /iaps
  def create
    @iap = Iap.new(iap_params)

    if @iap.save
      render json: @iap, status: :created, location: @iap
    else
      render json: @iap.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /iaps/1
  def update
    if @iap.update(iap_params)
      render json: @iap
    else
      render json: @iap.errors, status: :unprocessable_entity
    end
  end

  # DELETE /iaps/1
  def destroy
    @iap.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iap
      @iap = Iap.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def iap_params
      params.require(:iap).permit(:reciept, :platform, :processed)
    end
end
