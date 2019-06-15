class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.integer :bowl_ingredient_id
      t.belongs_to :category, index: true
      t.string :name
      t.integer :calories
      t.integer :fat
      t.integer :cholesterol
      t.integer :sodium
      t.integer :carbohydrates
      t.integer :sugar
      t.integer :protein
    end
  end
end
