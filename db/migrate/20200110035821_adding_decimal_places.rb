class AddingDecimalPlaces < ActiveRecord::Migration[6.0]
  def change
    change_column :dogs, :latitude, :float, precision: 8, scale: 5
    change_column :dogs, :longitude, :float, precision: 8, scale: 5
  end
end
