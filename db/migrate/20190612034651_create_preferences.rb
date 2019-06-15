class CreatePreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :preferences do |t|
      t.belongs_to :user, index: true
      t.string :allergy
      t.boolean :vegetarian
      t.boolean :kosher
      t.boolean :halal
      t.boolean :fasting
      t.boolean :bodybuilding
      t.boolean :bulkin
      t.boolean :weight_loss
    end
  end
end
