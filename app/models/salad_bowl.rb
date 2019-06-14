class SaladBowl < ApplicationRecord
  has_many :bowl_ingredients, dependent: :destroy
  has_many :ingredients, through: :bowl_ingredients
  has_many :user_bowls

end
