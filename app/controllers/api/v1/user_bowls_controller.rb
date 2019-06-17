class Api::V1::UserBowlsController < ApplicationController
  before_action :set_user_bowl, only: [:show, :update, :destroy]

  def index
    @user_bowls = UserBowl.all
    render json: @users
  end

  def show
    render json: @user_bowl
  end

  def create
    @user_bowl = UserBowl.new(user_bowl_params)

    if @user_bowl.save
      render json: @user_bowl, status: :created, location: @user_bowl
    else
      render json: @user_bowl.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user_bowl.save
      render json: @user_bowl, status: :updated, location: @user_bowl
    else
      render json: @user_bowl.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user_bowl.destroy
  end
end

private

  def set_user_bowl
    @user_bowl = UserBowl.find(params[:id])
  end

  def user_bowl_params
    params.require(:user_bowl).permit(
      :user_id,
      :salad_bowl_id
    )
  end
