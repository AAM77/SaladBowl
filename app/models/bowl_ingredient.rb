class BowlIngredient < ApplicationRecord
  belongs_to :salad_bowl
  belongs_to :ingredient
end
