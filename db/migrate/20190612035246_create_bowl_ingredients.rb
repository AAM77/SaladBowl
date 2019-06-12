class CreateBowlIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :bowl_ingredients do |t|
      t.integer :bowl_id
      t.integer :ingredient_id
    end
  end
end
