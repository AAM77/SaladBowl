class RemoveIngredientIdFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :ingredient_id, :integer
  end
end
