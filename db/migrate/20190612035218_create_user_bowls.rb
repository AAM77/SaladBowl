class CreateUserBowls < ActiveRecord::Migration[5.2]
  def change
    create_table :user_bowls do |t|
      t.belongs_to :user, index: true
      t.belongs_to :bowl, index: true
    end
  end
end
