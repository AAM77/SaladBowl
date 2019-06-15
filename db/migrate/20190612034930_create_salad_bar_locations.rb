class CreateSaladBarLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :salad_bar_locations do |t|
      t.belongs_to :salad_bar, index: true
      t.belongs_to :location, index: true
    end
  end
end
