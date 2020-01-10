class AddUserAttributes < ActiveRecord::Migration[6.0]
  def change

    rename_column :users, :name, :first_name
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :integer
    add_column :users, :home_address, :string

  end
end
