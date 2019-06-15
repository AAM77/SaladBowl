class RemoveBowlIngredientIdFromIngredients < ActiveRecord::Migration[5.2]
  def change
    remove_column :ingredients, :bowl_ingredient_id, :integer
  end
end
