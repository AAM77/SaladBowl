class AddUrlToSaladBowl < ActiveRecord::Migration[5.2]
  def change
    add_column :salad_bowls, :url, :string
  end
end
