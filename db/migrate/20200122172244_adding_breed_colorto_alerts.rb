class AddingBreedColortoAlerts < ActiveRecord::Migration[6.0]
  def change
    add_column :alerts, :breed, :string
    add_column :alerts, :color, :string
  end
end
