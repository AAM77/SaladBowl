class Api::V1::SaladBarLocationsController < ApplicationController
  before_action :set_salad_bar_location, only: [:show, :update, :destroy]

  def index
    @salad_bar_locations = SaladBarLocation.all
    render json: @salad_bar_locations
  end

  def show
    render json: @salad_bar_location
  end

  def create
    @salad_bar_location = SaladBarLocation.new(salad_bar_location_params)

    if @salad_bar_location.save
      render json: @salad_bar_location, status: :created, location: @salad_bar_location
    else
      render json: @salad_bar_location.errors, status: :unprocessable_entity
    end
  end

  def update
    if @salad_bar_location.save
      render json: @salad_bar_location, status: :accepted
    else
      render json: @salad_bar_location.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @salad_bar_location.destroy
  end
end

private

  def set_salad_bar_location
    @salad_bar_location = SaladBarLocation.find(params[:id])
  end

  def salad_bar_location_params
    params.require(:salad_bar_location).permit(
      :name
    )
  end
