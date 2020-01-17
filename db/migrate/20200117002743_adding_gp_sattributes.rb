class AddingGpSattributes < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :gps_id, :integer
    add_column :dogs, :ping_time, :string
    add_column :dogs, :battery, :integer
  end
end
