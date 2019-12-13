class AddingDogBio < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :bio, :string
  end
end
