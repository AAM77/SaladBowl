class Api::V1::SaladBarsController < ApplicationController
  before_action :set_salad_bar, only: [:show, :update, :destroy]

  def index
    @salad_bars = SaladBar.all
    render json: @salad_bars
  end

  def show
    render json: @salad_bar
  end

  def create
    @salad_bar = SaladBar.new(salad_bar_params)

    if @salad_bar.save
      render json: @salad_bar, status: :created, location: @salad_bar
    else
      render json: @salad_bar.errors, status: :unprocessable_entity
    end
  end

  def update
    if @salad_bar.save
      render json: @salad_bar, status: :accepted
    else
      render json: @salad_bar.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @salad_bar.destroy
  end
end

private

  def set_salad_bar
    @salad_bar = SaladBar.find(params[:id])
  end

  def salad_bar_params
    params.require(:salad_bar).permit(
      :name
    )
  end
