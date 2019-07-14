class SaladBowlSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :meal_time_frame, :favorite,
             :calories, :fat, :cholesterol, :sodium, :carbohydrates,
             :sugar, :fiber, :protein, :ingredients
end
