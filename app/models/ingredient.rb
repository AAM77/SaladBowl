class Ingredient < ApplicationRecord
  belongs_to :category
  has_many :bowl_ingredients, dependent: :destroy
  has_many :bowls, through: :bowl_ingredients
end
