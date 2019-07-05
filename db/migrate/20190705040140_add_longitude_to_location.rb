class AddLongitudeToLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :longitude, :decimal
  end
end
