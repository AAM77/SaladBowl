class BowlIngredient < ApplicationRecord
  belongs_to :bowl
  belongs_to :ingredient
end
