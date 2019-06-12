class CreateSaladBarLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :salad_bar_locations do |t|
      t.integer :salad_bar_id
      t.integer :location_id
    end
  end
end
