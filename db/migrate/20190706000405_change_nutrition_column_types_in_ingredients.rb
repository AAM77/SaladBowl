class ChangeNutritionColumnTypesInIngredients < ActiveRecord::Migration[5.2]
  def up
    change_column :ingredients, :calories, :decimal
    change_column :ingredients, :fat, :decimal
    change_column :ingredients, :cholesterol, :decimal
    change_column :ingredients, :sodium, :decimal
    change_column :ingredients, :carbohydrates, :decimal
    change_column :ingredients, :sugar, :decimal
    change_column :ingredients, :protein, :decimal
  end

  def down
    change_column :ingredients, :calories, :integer
    change_column :ingredients, :fat, :integer
    change_column :ingredients, :cholesterol, :integer
    change_column :ingredients, :sodium, :integer
    change_column :ingredients, :carbohydrates, :integer
    change_column :ingredients, :sugar, :integer
    change_column :ingredients, :protein, :integer
  end
end
