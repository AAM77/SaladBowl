class Api::V1::SaladBowlsController < ApplicationController
  before_action :set_salad_bowl, only: [:show, :update, :destroy]

  def index
    @salad_bowls = SaladBowl.all
    render json: @salad_bowls
  end

  def show
    render json: @salad_bowl
  end

  def create
    @salad_bowl = SaladBowl.new(salad_bowl_params)

    if @salad_bowl.save
      render json: @salad_bowl, status: :created, location: @salad_bowl
    else
      render json: @salad_bowl.errors, status: :unprocessable_entity
    end
  end

  def update
    if @salad_bowl.save
      render json: @salad_bowl, status: :accepted
    else
      render json: @salad_bowl.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @salad_bowl.destroy
  end

  private

    def set_salad_bowl
      @salad_bowl = SaladBowl.find(params[:id])
    end

    def salad_bowl_params
      params.require(:salad_bowl).permit(
        :name,
        :meal_time_frame,
        :favorite
      )
    end
end
