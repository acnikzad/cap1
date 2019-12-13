class CreateAlerts < ActiveRecord::Migration[6.0]
  def change
    create_table :alerts do |t|
      t.integer :dog_id
      t.integer :user_id

      t.timestamps
    end
  end
end
