class RemoveUserBowlIdFromSaladBowls < ActiveRecord::Migration[5.2]
  def change
    remove_column :salad_bowls, :user_bowl_id, :integer
  end
end
