class ReplaceServingSizeFromSaladBowl < ActiveRecord::Migration[5.2]
  def change
    remove_column :salad_bowls, :serving_size, :integer
    add_column :salad_bowls, :serves, :integer
  end
end
