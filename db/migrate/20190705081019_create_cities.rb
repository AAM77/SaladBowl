class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :long_name
      t.string :short_name
      t.belongs_to :state, index: true

      t.timestamps
    end
  end
end
