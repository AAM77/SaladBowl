class CreateSaladBar < ActiveRecord::Migration[5.2]
  def change
    create_table :salad_bars do |t|
      t.integer :location_id
      t.string :name
      t.string :type
    end
  end
end
