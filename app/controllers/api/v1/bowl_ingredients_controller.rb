class Api::V1::BowlIngredientsController < ApplicationController
  before_action :set_bowl_ingredient, only: [:show, :update, :destroy]

  def index
    @bowl_ingredients = BowlIngredient.all
    render json: @bowl_ingredients
  end

  def show
    render json: @bowl_ingredient
  end

  def create
    @bowl_ingredient = BowlIngredient.new(bowl_ingredient_params)

    if @bowl_ingredient.save
      render json: @bowl_ingredient, status: :created, location: @bowl_ingredient
    else
      render json: @bowl_ingredient.errors, status: :unprocessable_entity
    end
  end

  def update
    if @bowl_ingredient.save
      render json: @bowl_ingredient, status: :accepted
    else
      render json: @bowl_ingredient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @bowl_ingredient.destroy
  end
end

private

  def set_bowl_ingredient
    @bowl_ingredient = BowlIngredient.find(params[:id])
  end

  def bowl_ingredient_params
    params.require(:bowl_ingredient).permit(
      :salad_bowl_id,
      :ingredient_id
    )
  end
