class RemoveTypeFromSaladBars < ActiveRecord::Migration[5.2]
  def change
    remove_column :salad_bars, :type, :string
  end
end
