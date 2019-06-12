class CreateUserBowls < ActiveRecord::Migration[5.2]
  def change
    create_table :user_bowls do |t|
      t.integer :user_id
      t.integer :bowl_id
    end
  end
end
