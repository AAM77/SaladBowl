class IngredientSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :category,
             :calories,
             :carbohydrates,
             :cholesterol,
             :fat,
             :protein,
             :sodium,
             :sugar

end
