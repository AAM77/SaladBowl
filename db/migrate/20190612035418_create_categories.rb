class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.integer :ingredient_id
      t.integer :category_name
    end
  end
end
