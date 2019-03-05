class WarrantiesController < ApplicationController
  before_action :set_warranty, only: [:show, :update, :destroy]

  # GET /warranties
  def index
    @warranties = Warranty.all

    render json: @warranties
  end

  # GET /warranties/1
  def show
    render json: @warranty
  end

  # POST /warranties
  def create
    @warranty = Warranty.new(warranty_params)

    if @warranty.save
      render json: @warranty, status: :created, location: @warranty
    else
      render json: @warranty.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /warranties/1
  def update
    if @warranty.update(warranty_params)
      render json: @warranty
    else
      render json: @warranty.errors, status: :unprocessable_entity
    end
  end

  # DELETE /warranties/1
  def destroy
    @warranty.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warranty
      @warranty = Warranty.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def warranty_params
      params.require(:warranty).permit(:name, :expires_on)
    end
end
