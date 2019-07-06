class AddServingSizeToSaladBowl < ActiveRecord::Migration[5.2]
  def change
    add_column :salad_bowls, :serving_size, :integer
  end
end
