class Api::V1::CountriesController < ApplicationController
  before_action :set_country, only: [:show, :destroy]

  def index
    @countries = Country.all
    render json: @countries
  end

  def show
    render json: @country
  end

  def destroy
    @country.destroy
  end
end

private

  def set_country
    @country = Country.find(params[:id])
  end

  def country_params
    params.require(:country).permit(
      :long_name,
      :short_name
    )
  end
