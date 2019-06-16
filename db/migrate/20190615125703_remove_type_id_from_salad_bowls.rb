class RemoveTypeIdFromSaladBowls < ActiveRecord::Migration[5.2]
  def change
    remove_column :salad_bowls, :type_id, :integer
  end
end
