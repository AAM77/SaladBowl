class Api::V1::PreferencesController < ApplicationController
  before_action :set_preference, only: [:show, :update, :destroy]
  def index
    @preferences = Preference.all
    render json: @preferences
  end

  def show
    render json: @preference
  end

  def create
    @preference = Preference.new(preference_params)

    if @preference.save
      render json: @preference, status: :created, location: @preference
    else
      render json: @preference.errors, status: :unprocessable_entity
    end
  end

  def update
    if @preference.save
      render json: @preference, status: :accepted
    else
      render json: @preference.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @preference.destroy
  end
end

private

  def set_preference
    @preference = Preference.find(params[:id])
  end

  def preference_params
    params.require(:preference).permit(
      :user_id,
      :allergy,
      :vegetarian,
      :kosher,
      :halal,
      :fasting,
      :bodybuilding,
      :bulkin,
      :weight_loss
    )
  end
