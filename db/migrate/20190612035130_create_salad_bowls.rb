class CreateSaladBowls < ActiveRecord::Migration[5.2]
  def change
    create_table :salad_bowls do |t|
      t.string :name
      t.integer :type_id
      t.integer :user_bowl_id
      t.boolean :favorite
    end
  end
end
