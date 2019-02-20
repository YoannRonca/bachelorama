class AddDescriptionToAnimations < ActiveRecord::Migration[5.2]
  def change
    add_column :animations, :description, :string
  end
end
