class AddingAlertAttributes < ActiveRecord::Migration[6.0]
  def change
    add_column :alerts, :dog_name, :string
    add_column :alerts, :owner_name, :string
    add_column :alerts, :contact_number, :integer
    add_column :alerts, :address, :string
  end
end
