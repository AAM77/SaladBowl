class RemoveLocationIdFromSaladBars < ActiveRecord::Migration[5.2]
  def change
    remove_column :salad_bars, :location_id, :integer
  end
end
