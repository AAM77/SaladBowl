class Api::V1::SaladBowlsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    bowl = SaladBowl.find(params[:id])
    respond_to do |format|
      format.json { render json: bowl }
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def bowl_params
      params.require(:bowl).permit(
        :name,
        :meal_time_frame,
        :favorite
      )
    end
end
