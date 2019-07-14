class ChangeUsersDefaults < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :first_name, :string, default: ""
    change_column :users, :last_name, :string, default: ""
    change_column :users, :address, :string, default: ""
    change_column :users, :zipcode, :string, default: ""
  end

  def down
    change_column :users, :first_name, :string, default: ""
    change_column :users, :last_name, :string, default: ""
    change_column :users, :address, :string, default: ""
    change_column :users, :zipcode, :string, default: ""
  end
end
