class AddFiberColumnToIngredient < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :fiber, :decimal
  end
end
