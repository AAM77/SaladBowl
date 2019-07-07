class Api::V1::CitiesController < ApplicationController
  before_action :set_city, only: [:show, :destroy]

  def index
    @cities = City.all
    render json: @cities
  end

  def show
    render json: @city
  end


  def destroy
    @city.destroy
  end
end

private

  def set_city
    @city = City.find(params[:id])
  end

  def city_params
    params.require(:city).permit(
      :long_name,
      :short_name
    )
  end
