class CreateBowlIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :bowl_ingredients do |t|
      t.belongs_to :bowl, index: true
      t.belongs_to :ingredient, index: true
    end
  end
end
