class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :long_name
      t.string :short_name
      t.belongs_to :country, index: true

      t.timestamps
    end
  end
end
