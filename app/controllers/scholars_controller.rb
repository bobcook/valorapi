class ScholarsController < ApplicationController
  before_action :set_scholar, only: [:show, :update, :destroy]

  # GET /scholars
  def index
    @scholars = Scholar.all

    render json: @scholars
  end

  # GET /scholars/1
  def show
    render json: @scholar
  end

  # POST /scholars
  def create
    @scholar = Scholar.new(scholar_params)

    if @scholar.save
      render json: @scholar, status: :created, location: @scholar
    else
      render json: @scholar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /scholars/1
  def update
    if @scholar.update(scholar_params)
      render json: @scholar
    else
      render json: @scholar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /scholars/1
  def destroy
    @scholar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scholar
      @scholar = Scholar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scholar_params
      params.require(:scholar).permit(:name, :village_id)
    end
end
