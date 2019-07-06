class AddNutritionColumnsToSaladBowl < ActiveRecord::Migration[5.2]
  def change
    add_column :salad_bowls, :calories, :decimal
    add_column :salad_bowls, :fat, :decimal
    add_column :salad_bowls, :cholesterol, :decimal
    add_column :salad_bowls, :sodium, :decimal
    add_column :salad_bowls, :carbohydrates, :decimal
    add_column :salad_bowls, :sugar, :decimal
    add_column :salad_bowls, :fiber, :decimal
    add_column :salad_bowls, :protein, :decimal
  end
end
