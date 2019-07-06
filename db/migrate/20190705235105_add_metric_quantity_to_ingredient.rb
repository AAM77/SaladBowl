class AddMetricQuantityToIngredient < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :metric_quantity, :decimal
  end
end
