class Ingredient < ApplicationRecord
  belongs_to :category
  has_many :bowl_ingredients, dependent: :destroy
  has_many :salad_bowls, through: :bowl_ingredients

  validates :name, uniqueness: true
end
