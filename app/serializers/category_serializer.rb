class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :category_ingredients

  def category_ingredients
    object.ingredients.empty? ? 'None' : object.ingredients.map { |i| { id: i.id, name: i.name } }
  end
end
