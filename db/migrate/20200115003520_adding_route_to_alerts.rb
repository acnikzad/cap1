class AddingRouteToAlerts < ActiveRecord::Migration[6.0]
  def change
    add_column :alerts, :latitude, :integer
    add_column :alerts, :longitude, :integer
  end
end
