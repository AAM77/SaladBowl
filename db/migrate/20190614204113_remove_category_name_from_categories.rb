class RemoveCategoryNameFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :category_name, :integer
  end
end
