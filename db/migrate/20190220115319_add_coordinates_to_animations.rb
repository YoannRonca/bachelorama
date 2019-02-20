class AddCoordinatesToAnimations < ActiveRecord::Migration[5.2]
  def change
    add_column :animations, :latitude, :float
    add_column :animations, :longitude, :float
  end
end
