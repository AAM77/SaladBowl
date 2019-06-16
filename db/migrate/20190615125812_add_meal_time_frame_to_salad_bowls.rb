class AddMealTimeFrameToSaladBowls < ActiveRecord::Migration[5.2]
  def change
    add_column :salad_bowls, :meal_time_frame, :string
  end
end
