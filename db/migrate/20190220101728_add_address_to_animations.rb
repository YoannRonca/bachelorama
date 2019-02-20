class AddAddressToAnimations < ActiveRecord::Migration[5.2]
  def change
    add_column :animations, :address, :string
  end
end
